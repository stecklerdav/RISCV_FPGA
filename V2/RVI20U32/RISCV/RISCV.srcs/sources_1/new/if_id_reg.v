`timescale 1ns/1ps

module if_id_reg (
    input  wire        clk,
    input  wire        rst,

    input  wire [31:0] if_pc_in,
    input  wire [31:0] if_pc4_in,
    input  wire [31:0] if_instr_in,
    input  wire        if_valid_in,

    // ------------------------------------------------------------
    // Predicción usada en IF para esta instrucción.
    //
    // Debe venir de:
    //
    // if_pred_next_pc_used =
    //     pc_predict_valid ? pc_predict_next : if_pc4_in;
    //
    // No conectes aquí pred_next_pc directo sin seleccionar,
    // porque cuando no hay predicción taken debe viajar PC+4.
    // ------------------------------------------------------------
    input  wire [31:0] if_pred_next_pc_in,

    input  wire        flush,
    input  wire        hold,

    output wire [31:0] id_pc_out,
    output wire [31:0] id_pc4_out,
    output wire [31:0] id_instr_out,
    output wire        id_valid_out,

    // Predicción ya alineada con la instrucción que sale hacia ID
    output wire [31:0] id_pred_next_pc_out
);

    localparam [31:0] RV32I_NOP = 32'h0000_0013;

    localparam FLUSH_EXTRA_KILLS = 1;
    localparam KILL_CNT_W = (FLUSH_EXTRA_KILLS > 0) ? $clog2(FLUSH_EXTRA_KILLS + 1) : 1;

    reg [31:0] pc_align;
    reg [31:0] pc4_align;
    reg [31:0] pred_next_pc_align;
    reg        valid_align;

    reg [31:0] reg_pc;
    reg [31:0] reg_pc4;
    reg [31:0] reg_instr;
    reg [31:0] reg_pred_next_pc;
    reg        reg_valid;

    reg [KILL_CNT_W-1:0] kill_cnt;

    always @(posedge clk) begin
        if (rst) begin
            pc_align           <= 32'b0;
            pc4_align          <= 32'b0;
            pred_next_pc_align <= 32'b0;
            valid_align        <= 1'b0;

            reg_pc             <= 32'b0;
            reg_pc4            <= 32'b0;
            reg_instr          <= RV32I_NOP;
            reg_pred_next_pc   <= 32'b0;
            reg_valid          <= 1'b0;

            kill_cnt           <= {KILL_CNT_W{1'b0}};
        end
        else begin
            if (flush) begin
                kill_cnt <= FLUSH_EXTRA_KILLS;

                pc_align           <= 32'b0;
                pc4_align          <= 32'b0;
                pred_next_pc_align <= 32'b0;
                valid_align        <= 1'b0;

                reg_pc             <= 32'b0;
                reg_pc4            <= 32'b0;
                reg_instr          <= RV32I_NOP;
                reg_pred_next_pc   <= 32'b0;
                reg_valid          <= 1'b0;
            end
            else if (hold) begin
                // Congelar todo durante load-use stall
                pc_align           <= pc_align;
                pc4_align          <= pc4_align;
                pred_next_pc_align <= pred_next_pc_align;
                valid_align        <= valid_align;

                reg_pc             <= reg_pc;
                reg_pc4            <= reg_pc4;
                reg_instr          <= reg_instr;
                reg_pred_next_pc   <= reg_pred_next_pc;
                reg_valid          <= reg_valid;
            end
            else begin
                // Primero sacar hacia ID lo alineado con la instrucción actual de BRAM
                if (kill_cnt != 0) begin
                    reg_pc           <= 32'b0;
                    reg_pc4          <= 32'b0;
                    reg_instr        <= RV32I_NOP;
                    reg_pred_next_pc <= 32'b0;
                    reg_valid        <= 1'b0;
                    kill_cnt         <= kill_cnt - 1'b1;
                end
                else begin
                    reg_pc           <= pc_align;
                    reg_pc4          <= pc4_align;
                    reg_instr        <= if_instr_in;
                    reg_pred_next_pc <= pred_next_pc_align;
                    reg_valid        <= valid_align;
                end

                // Luego capturar el PC que corresponderá al próximo dout de BRAM
                pc_align           <= if_pc_in;
                pc4_align          <= if_pc4_in;
                pred_next_pc_align <= if_pred_next_pc_in;
                valid_align        <= if_valid_in;
            end
        end
    end

    assign id_pc_out           = reg_pc;
    assign id_pc4_out          = reg_pc4;
    assign id_instr_out        = reg_instr;
    assign id_valid_out        = reg_valid;
    assign id_pred_next_pc_out = reg_pred_next_pc;

endmodule