`timescale 1ns/1ps

module pc_unit #(
    parameter [31:0] RESET_PC = 32'h0000_0000
)(
    input  wire        rst,
    input  wire        clk,
    input  wire        pc_en,

    // Redirect privileged: trap / mret
    // Máxima prioridad.
    input  wire        priv_redirect_valid,
    input  wire [31:0] priv_redirect_target,

    // Redirect real desde EX.
    // Branch/JAL/JALR/mispredict.
    input  wire        pc_redirect_valid,
    input  wire [31:0] pc_redirect_target,

    // Predicción desde IF / branch predictor.
    input  wire        pc_predict_valid,
    input  wire [31:0] pc_predict_next,

    output reg  [31:0] pc,
    output wire [31:0] pc_plus4,

    // Debug redirect privileged
    output reg  [31:0] pc_debug_last_priv_redirect,
    output reg         pc_debug_priv_redirect_pulse,

    // Debug redirect real
    output reg  [31:0] pc_debug_last_redirect,
    output reg         pc_debug_redirect_pulse,

    // Debug predicción
    output reg  [31:0] pc_debug_last_predict,
    output reg         pc_debug_predict_pulse
);

    reg [31:0] pc_next;
    reg [31:0] pc_prev;

    assign pc_plus4 = pc + 32'd4;

    // ------------------------------------------------------------
    // Prioridad:
    // 1) Redirect privileged: trap / mret
    // 2) Redirect real EX: branch / jal / jalr / mispredict
    // 3) Predicción branch predictor
    // 4) Secuencial PC + 4
    // ------------------------------------------------------------
    always @(*) begin
        pc_next = pc_plus4;

        if (pc_predict_valid) begin
            pc_next = pc_predict_next;
        end

        if (pc_redirect_valid) begin
            pc_next = pc_redirect_target;
        end

        if (priv_redirect_valid) begin
            pc_next = priv_redirect_target;
        end
    end

    // ------------------------------------------------------------
    // Registro PC
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
    // Debug privileged redirect
    // ------------------------------------------------------------
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pc_debug_last_priv_redirect  <= 32'h0000_0000;
            pc_debug_priv_redirect_pulse <= 1'b0;
        end
        else begin
            pc_debug_priv_redirect_pulse <= 1'b0;

            if (pc_en && priv_redirect_valid) begin
                pc_debug_last_priv_redirect  <= priv_redirect_target;
                pc_debug_priv_redirect_pulse <= 1'b1;
            end
        end
    end

    // ------------------------------------------------------------
    // Debug redirect real EX
    // ------------------------------------------------------------
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pc_debug_last_redirect  <= 32'h0000_0000;
            pc_debug_redirect_pulse <= 1'b0;
        end
        else begin
            pc_debug_redirect_pulse <= 1'b0;

            if (pc_en && pc_redirect_valid && !priv_redirect_valid) begin
                pc_debug_last_redirect  <= pc_redirect_target;
                pc_debug_redirect_pulse <= 1'b1;
            end
        end
    end

    // ------------------------------------------------------------
    // Debug predicción
    // ------------------------------------------------------------
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            pc_debug_last_predict  <= 32'h0000_0000;
            pc_debug_predict_pulse <= 1'b0;
        end
        else begin
            pc_debug_predict_pulse <= 1'b0;

            if (pc_en && pc_predict_valid &&
                !pc_redirect_valid &&
                !priv_redirect_valid) begin

                pc_debug_last_predict  <= pc_predict_next;
                pc_debug_predict_pulse <= 1'b1;
            end
        end
    end

    // ------------------------------------------------------------
    // Debug hold
    // ------------------------------------------------------------
    always @(posedge clk or posedge rst) begin
        if (rst)
            pc_prev <= RESET_PC;
        else
            pc_prev <= pc;
    end

`ifdef SIMULATION

    always @(posedge clk) begin
        if (!rst && pc_en) begin

            if (priv_redirect_valid) begin
                if (pc_next !== priv_redirect_target) begin
                    $display("ERROR PC ASSERT PRIV REDIRECT @%0t", $time);
                    $display(" pc                  = %h", pc);
                    $display(" pc_next             = %h", pc_next);
                    $display(" priv_redirect_valid = %b", priv_redirect_valid);
                    $display(" priv_redirect_target= %h", priv_redirect_target);
                    $display(" redirect_valid      = %b", pc_redirect_valid);
                    $display(" redirect_target     = %h", pc_redirect_target);
                    $display(" predict_valid       = %b", pc_predict_valid);
                    $display(" predict_next        = %h", pc_predict_next);
                    $stop;
                end
            end

            else if (pc_redirect_valid) begin
                if (pc_next !== pc_redirect_target) begin
                    $display("ERROR PC ASSERT REDIRECT @%0t", $time);
                    $display(" pc                 = %h", pc);
                    $display(" pc_next            = %h", pc_next);
                    $display(" redirect_target    = %h", pc_redirect_target);
                    $stop;
                end
            end

            else if (pc_predict_valid) begin
                if (pc_next !== pc_predict_next) begin
                    $display("ERROR PC ASSERT PREDICT @%0t", $time);
                    $display(" pc                 = %h", pc);
                    $display(" pc_next            = %h", pc_next);
                    $display(" predict_next       = %h", pc_predict_next);
                    $stop;
                end
            end

            else begin
                if (pc_next !== pc_plus4) begin
                    $display("ERROR PC ASSERT SEQ @%0t", $time);
                    $display(" pc                 = %h", pc);
                    $display(" pc_plus4           = %h", pc_plus4);
                    $display(" pc_next            = %h", pc_next);
                    $stop;
                end
            end
        end
    end

    always @(posedge clk) begin
        if (!rst && !pc_en) begin
            if (pc !== pc_prev) begin
                $display("ERROR PC HOLD ASSERT @%0t", $time);
                $display(" pc actual           = %h", pc);
                $display(" pc previo           = %h", pc_prev);
                $display(" pc_en               = %b", pc_en);
                $stop;
            end
        end
    end

`endif

endmodule   