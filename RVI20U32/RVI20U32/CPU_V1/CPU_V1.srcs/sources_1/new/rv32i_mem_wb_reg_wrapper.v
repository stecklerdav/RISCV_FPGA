`timescale 1ns/1ps

module rv32i_mem_wb_reg_wrapper(

    input  wire        clk,
    input  wire        rst,
    input  wire        stall,
    input  wire        flush,

    input  wire [31:0] mem_data,
    input  wire [31:0] mem_alu_result,
    input  wire [31:0] mem_pc_plus4,
    input  wire [31:0] mem_imm_u,
    input  wire [4:0]  mem_rd,
    input  wire        mem_rd_we,
    input  wire [1:0]  mem_wb_sel,

    output wire [31:0] wb_data,
    output wire [31:0] wb_alu_result,
    output wire [31:0] wb_pc_plus4,
    output wire [31:0] wb_imm_u,
    output wire [4:0]  wb_rd,
    output wire        wb_rd_we,
    output wire [1:0]  wb_sel

);

    rv32i_mem_wb_reg u_rv32i_mem_wb_reg (
        .clk           (clk),
        .rst           (rst),
        .stall         (stall),
        .flush         (flush),
        .mem_data      (mem_data),
        .mem_alu_result(mem_alu_result),
        .mem_pc_plus4  (mem_pc_plus4),
        .mem_imm_u     (mem_imm_u),
        .mem_rd        (mem_rd),
        .mem_rd_we     (mem_rd_we),
        .mem_wb_sel    (mem_wb_sel),
        .wb_data       (wb_data),
        .wb_alu_result (wb_alu_result),
        .wb_pc_plus4   (wb_pc_plus4),
        .wb_imm_u      (wb_imm_u),
        .wb_rd         (wb_rd),
        .wb_rd_we      (wb_rd_we),
        .wb_sel        (wb_sel)
    );

endmodule
