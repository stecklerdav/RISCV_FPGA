`timescale 1ns/1ps

module pc_unit #(
    parameter [31:0] RESET_PC = 32'h0000_0000
)(
    input  wire        rst,
    input  wire        clk,
    input  wire        pc_en,

    // Redirect real desde EX.
    // Debe venir de mispredict / jal / jalr / branch mal predicho.
    input  wire        pc_redirect_valid,
    input  wire [31:0] pc_redirect_target,

    // Predicción desde IF / branch predictor.
    // Usualmente conectar:
    // pc_predict_valid = pred_valid && pred_taken
    // pc_predict_next  = pred_next_pc
    input  wire        pc_predict_valid,
    input  wire [31:0] pc_predict_next,

    output reg  [31:0] pc,
    output wire [31:0] pc_plus4,

    // Debug opcional redirect real
    output reg  [31:0] pc_debug_last_redirect,
    output reg         pc_debug_redirect_pulse,

    // Debug opcional predicción
    output reg  [31:0] pc_debug_last_predict,
    output reg         pc_debug_predict_pulse
);

    reg [31:0] pc_next;
    reg [31:0] pc_prev;

    // ------------------------------------------------------------
    // PC + 4
    // ------------------------------------------------------------
    assign pc_plus4 = pc + 32'd4;

    // ------------------------------------------------------------
    // Lógica combinacional de siguiente PC
    //
    // Prioridad:
    // 1) Redirect real desde EX
    // 2) Predicción del branch predictor
    // 3) Secuencial PC + 4
    // ------------------------------------------------------------
    always @(*) begin
        pc_next = pc_plus4;

        if (pc_predict_valid) begin
            pc_next = pc_predict_next;
        end

        if (pc_redirect_valid) begin
            pc_next = pc_redirect_target;
        end
    end

    // ------------------------------------------------------------
    // Registro de PC
    // ------------------------------------------------------------
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pc <= RESET_PC;
        end
        else if (pc_en) begin
            pc <= pc_next;
        end
    end

    // ------------------------------------------------------------
    // Debug: guardar último redirect real y generar pulso
    // ------------------------------------------------------------
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pc_debug_last_redirect  <= 32'h0000_0000;
            pc_debug_redirect_pulse <= 1'b0;
        end
        else begin
            pc_debug_redirect_pulse <= 1'b0;

            if (pc_en && pc_redirect_valid) begin
                pc_debug_last_redirect  <= pc_redirect_target;
                pc_debug_redirect_pulse <= 1'b1;
            end
        end
    end

    // ------------------------------------------------------------
    // Debug: guardar última predicción usada y generar pulso
    //
    // Nota:
    // Si pc_redirect_valid=1, el redirect tiene prioridad y la
    // predicción queda anulada.
    // ------------------------------------------------------------
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pc_debug_last_predict  <= 32'h0000_0000;
            pc_debug_predict_pulse <= 1'b0;
        end
        else begin
            pc_debug_predict_pulse <= 1'b0;

            if (pc_en && pc_predict_valid && !pc_redirect_valid) begin
                pc_debug_last_predict  <= pc_predict_next;
                pc_debug_predict_pulse <= 1'b1;
            end
        end
    end

    // ------------------------------------------------------------
    // Debug de hold
    // ------------------------------------------------------------
    always @(posedge clk or posedge rst) begin
        if (rst)
            pc_prev <= RESET_PC;
        else
            pc_prev <= pc;
    end

    // ------------------------------------------------------------
    // CHECKS SOLO SIMULACIÓN
    // ------------------------------------------------------------
`ifdef SIMULATION

    // Verifica que pc_next esté bien calculado
    always @(posedge clk) begin
        if (!rst && pc_en) begin

            // Máxima prioridad: redirect real
            if (pc_redirect_valid) begin
                if (pc_next !== pc_redirect_target) begin
                    $display("ERROR PC ASSERT REDIRECT @%0t", $time);
                    $display(" pc                 = %h", pc);
                    $display(" pc_plus4           = %h", pc_plus4);
                    $display(" pc_next            = %h", pc_next);
                    $display(" redirect_valid     = %b", pc_redirect_valid);
                    $display(" redirect_target    = %h", pc_redirect_target);
                    $display(" predict_valid      = %b", pc_predict_valid);
                    $display(" predict_next       = %h", pc_predict_next);
                    $stop;
                end
            end

            // Segunda prioridad: predicción
            else if (pc_predict_valid) begin
                if (pc_next !== pc_predict_next) begin
                    $display("ERROR PC ASSERT PREDICT @%0t", $time);
                    $display(" pc                 = %h", pc);
                    $display(" pc_plus4           = %h", pc_plus4);
                    $display(" pc_next            = %h", pc_next);
                    $display(" redirect_valid     = %b", pc_redirect_valid);
                    $display(" predict_valid      = %b", pc_predict_valid);
                    $display(" predict_next       = %h", pc_predict_next);
                    $stop;
                end
            end

            // Sin redirect ni predicción: secuencial
            else begin
                if (pc_next !== pc_plus4) begin
                    $display("ERROR PC ASSERT SEQ @%0t", $time);
                    $display(" pc                 = %h", pc);
                    $display(" pc_plus4           = %h", pc_plus4);
                    $display(" pc_next            = %h", pc_next);
                    $display(" redirect_valid     = %b", pc_redirect_valid);
                    $display(" predict_valid      = %b", pc_predict_valid);
                    $stop;
                end
            end
        end
    end

    // Verifica que el PC no cambie cuando pc_en=0
    always @(posedge clk) begin
        if (!rst && !pc_en) begin
            if (pc !== pc_prev) begin
                $display("ERROR PC HOLD ASSERT @%0t", $time);
                $display(" pc actual          = %h", pc);
                $display(" pc previo          = %h", pc_prev);
                $display(" pc_en              = %b", pc_en);
                $display(" redirect_valid     = %b", pc_redirect_valid);
                $display(" redirect_target    = %h", pc_redirect_target);
                $display(" predict_valid      = %b", pc_predict_valid);
                $display(" predict_next       = %h", pc_predict_next);
                $stop;
            end
        end
    end

`endif

endmodule