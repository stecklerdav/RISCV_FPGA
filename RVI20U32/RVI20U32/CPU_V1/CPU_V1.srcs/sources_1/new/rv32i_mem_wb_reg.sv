`timescale 1ns/1ps
import rv32i_mem_wb_reg_types_pkg::*;
module rv32i_mem_wb_reg(
    input  logic        clk,
    input  logic        rst,
    input  logic        stall,
    input  logic        flush,

    input  logic [31:0] mem_data,
    input  logic [31:0] mem_alu_result,
    input  logic [31:0] mem_pc_plus4,
    input  logic [31:0] mem_imm_u,
    input  logic [4:0]  mem_rd,
    input  logic        mem_rd_we,
    input  logic [1:0]  mem_wb_sel,

    output logic [31:0] wb_data,
    output logic [31:0] wb_alu_result,
    output logic [31:0] wb_pc_plus4,
    output logic [31:0] wb_imm_u,
    output logic [4:0]  wb_rd,
    output logic        wb_rd_we,
    output logic [1:0]  wb_sel
);

    always_ff @(posedge clk) begin
        if (rst || flush) begin
            wb_data       <= 32'b0;
            wb_alu_result <= 32'b0;
            wb_pc_plus4   <= 32'b0;
            wb_imm_u      <= 32'b0;
            wb_rd         <= 5'b0;
            wb_rd_we      <= 1'b0;
            wb_sel        <= 2'b0;
        end
        else if (!stall) begin
            wb_data       <= mem_data;
            wb_alu_result <= mem_alu_result;
            wb_pc_plus4   <= mem_pc_plus4;
            wb_imm_u      <= mem_imm_u;
            wb_rd         <= mem_rd;
            wb_rd_we      <= mem_rd_we;
            wb_sel        <= mem_wb_sel;
        end
    end

endmodule
