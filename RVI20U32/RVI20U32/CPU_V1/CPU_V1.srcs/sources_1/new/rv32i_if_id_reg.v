`timescale 1ns/1ps

module rv32i_if_id_reg (
    input  wire        clk,
    input  wire        rst,

    // PC asociado a la instrucción que llegará desde ROM
    input  wire [31:0] pc_fetch_in,

    // Instrucción que sale de la ROM
    input  wire [31:0] instr_rom_in,

    // Flush / hold pipeline
    input  wire        flush,
    input  wire        hold,

    // Salidas hacia ID
    output reg  [31:0] pc_id_out,
    output reg  [31:0] pc_plus4_id_out,
    output reg  [31:0] instr_id_out,
    output reg         valid_id_out
);

    localparam [31:0] RV32I_NOP = 32'h00000013; // addi x0, x0, 0

    always @(posedge clk) begin
        if (rst) begin
            pc_id_out        <= 32'b0;
            pc_plus4_id_out  <= 32'b0;
            instr_id_out     <= RV32I_NOP;
            valid_id_out     <= 1'b0;
        end
        else if (!hold) begin
            // Alineados con la instrucción que entra a ID
            pc_id_out       <= pc_fetch_in;
            pc_plus4_id_out <= pc_fetch_in + 32'd4;

            if (flush) begin
                instr_id_out <= RV32I_NOP;
                valid_id_out <= 1'b0;
            end
            else begin
                instr_id_out <= instr_rom_in;
                valid_id_out <= 1'b1;
            end
        end
    end

endmodule