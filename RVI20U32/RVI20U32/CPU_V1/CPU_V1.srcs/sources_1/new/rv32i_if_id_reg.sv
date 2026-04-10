`timescale 1ns/1ps

import rv32i_pipe_types_pkg::*;

module rv32i_if_id_reg (
    input  logic       clk,
    input  logic       rst,

    // Desde IF (bus empaquetado)
    input  if_id_bus_t if_in,

    // Control pipeline
    input  logic       flush,
    input  logic       hold,

    // Hacia ID
    output if_id_bus_t id_out
);

    localparam logic [31:0] RV32I_NOP = 32'h0000_0013;

   // Branch resolved in EX.
// Frontend has 1 extra in-flight instruction due to IF path latency
// (PC -> BRAM(1-cycle) -> align -> IF/ID).
// Therefore, besides flushing the current IF/ID contents, we must kill
// one additional fetched wrong-path instruction.

    localparam int unsigned FLUSH_EXTRA_KILLS = 1;

    // Ancho mínimo de 1 bit para evitar problemas cuando FLUSH_EXTRA_KILLS = 0
    localparam int unsigned KILL_CNT_W =
        (FLUSH_EXTRA_KILLS > 0) ? $clog2(FLUSH_EXTRA_KILLS + 1) : 1;

    if_id_bus_t reg_q;

    logic [KILL_CNT_W-1:0] kill_cnt_q;

    always_ff @(posedge clk) begin
        if (rst) begin
            reg_q.pc       <= 32'b0;
            reg_q.pc_plus4 <= 32'b0;
            reg_q.instr    <= RV32I_NOP;
            reg_q.valid    <= 1'b0;
            kill_cnt_q     <= '0;
        end
        else begin
            // Programa las invalideces EXTRA después del flush actual
            if (flush) begin
                kill_cnt_q <= FLUSH_EXTRA_KILLS[KILL_CNT_W-1:0];
            end
            else if (!hold && (kill_cnt_q != 0)) begin
                kill_cnt_q <= kill_cnt_q - 1'b1;
            end

            if (!hold) begin
                // Mata la instrucción actual por flush
                // o las siguientes mientras dure el contador
                if (flush || (kill_cnt_q != 0)) begin
                    reg_q.pc       <= 32'b0;   // opcional
                    reg_q.pc_plus4 <= 32'b0;   // opcional
                    reg_q.instr    <= RV32I_NOP;
                    reg_q.valid    <= 1'b0;
                end
                else begin
                    reg_q.pc       <= if_in.pc;
                    reg_q.pc_plus4 <= if_in.pc_plus4;
                    reg_q.instr    <= if_in.instr;
                    reg_q.valid    <= if_in.valid;
                end
            end
        end
    end

    assign id_out = reg_q;

endmodule