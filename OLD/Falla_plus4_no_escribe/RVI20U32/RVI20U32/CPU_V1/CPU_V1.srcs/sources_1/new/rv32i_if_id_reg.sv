`timescale 1ns/1ps

import rv32i_pipe_types_pkg::*;

module rv32i_if_id_reg (
    input  logic       clk,
    input  logic       rst,

    // Desde IF / BRAM
    input  logic [31:0] pc_fetch,
    input  logic [31:0] pc_plus4_fetch,
    input  logic [31:0] instr_bram,
    input  logic        if_valid,

    // Control pipeline
    input  logic       flush,
    input  logic       hold,

    // Hacia ID
    output if_id_bus_t id_out
);

    localparam logic [31:0] RV32I_NOP = 32'h0000_0013;

    // Si absorbes latency_align dentro de IF/ID,
    // ya no necesitas kills extra aquí.
    localparam int unsigned FLUSH_EXTRA_KILLS = 2;

    localparam int unsigned KILL_CNT_W =
        (FLUSH_EXTRA_KILLS > 0) ? $clog2(FLUSH_EXTRA_KILLS + 1) : 1;

    if_id_bus_t reg_q;
    logic [KILL_CNT_W-1:0] kill_cnt_q;

    // Registros internos para alinear PC/PC+4 con la instrucción
    logic [31:0] pc_fetch_d;
    logic [31:0] pc_plus4_fetch_d;
    logic        if_valid_d;

    always_ff @(posedge clk) begin
        if (rst) begin
            // Pipeline visible IF/ID
            reg_q.pc       <= 32'b0;
            reg_q.pc_plus4 <= 32'b0;
            reg_q.instr    <= RV32I_NOP;
            reg_q.valid    <= 1'b0;

            // Alineación interna
            pc_fetch_d       <= 32'b0;
            pc_plus4_fetch_d <= 32'b0;
            if_valid_d       <= 1'b0;

            // Kill counter
            kill_cnt_q <= '0;
        end
        else begin
            // ------------------------------------------------------------
            // Contador de kills extra
            // ------------------------------------------------------------
            if (flush) begin
                if (hold)
                    kill_cnt_q <= '0;
                else
                    kill_cnt_q <= FLUSH_EXTRA_KILLS[KILL_CNT_W-1:0];
            end
            else if (!hold && (kill_cnt_q != 0)) begin
                kill_cnt_q <= kill_cnt_q - 1'b1;
            end

            // ------------------------------------------------------------
            // Alineación interna del frontend
            // ------------------------------------------------------------
            // Guardamos el PC actual para alinearlo con la instrucción
            // que llega desde BRAM en el ciclo siguiente.
            if (!hold) begin
                pc_fetch_d       <= pc_fetch;
                pc_plus4_fetch_d <= pc_plus4_fetch;
                if_valid_d       <= if_valid;
            end

            // ------------------------------------------------------------
            // Registro IF/ID visible hacia ID
            // Prioridad:
            // 1) flush mata la instrucción actual
            // 2) kill_cnt_q mata instrucciones extra en ciclos siguientes
            // 3) hold conserva el registro
            // 4) si no, carga nueva instrucción alineada
            // ------------------------------------------------------------
            if (flush || (!hold && (kill_cnt_q != 0))) begin
                reg_q.pc       <= 32'b0;
                reg_q.pc_plus4 <= 32'b0;
                reg_q.instr    <= RV32I_NOP;
                reg_q.valid    <= 1'b0;
            end
            else if (!hold) begin
                reg_q.pc       <= pc_fetch_d;
                reg_q.pc_plus4 <= pc_plus4_fetch_d;
                reg_q.instr    <= instr_bram;
                reg_q.valid    <= if_valid_d;
            end
            // else: hold => conservar reg_q
        end
    end

    assign id_out = reg_q;

endmodule