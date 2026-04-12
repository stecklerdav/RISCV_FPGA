`timescale 1ns/1ps

import rv32i_mem_stage_types_pkg::*;

module rv32i_mem_stage_flat (

    input  logic         clk,
    input  logic         rst,

    // from EX/MEM
    input  logic         mem_valid,
    input  logic [31:0]  mem_alu_result,
    input  logic [31:0]  mem_store_data,
    input  logic [31:0]  mem_pc_plus4,
    input  logic [31:0]  mem_imm_u,
    input  logic [4:0]   mem_rd,
    input  logic         mem_rd_we,

    input  logic         mem_mem_re,
    input  logic         mem_mem_we,
    input  logic [1:0]   mem_mem_size,
    input  logic         mem_mem_unsigned,
    input  logic [1:0]   mem_wb_sel,

    // Data memory interface
    output logic [31:0]  dmem_addr,
    output logic [31:0]  dmem_wdata,
    output logic         dmem_we,
    output logic         dmem_re,
    output logic [3:0]   dmem_be,

    input  logic [31:0]  dmem_rdata,

    // to MEM/WB
    output logic         wb_valid,
    output logic [31:0]  wb_data,
    output logic [31:0]  wb_alu_result,
    output logic [31:0]  wb_pc_plus4,
    output logic [31:0]  wb_imm_u,
    output logic [4:0]   wb_rd,
    output logic         wb_rd_we,
    output logic [1:0]   wb_sel
);

    rv32i_mem_in_t   mem_in_s;
    rv32i_dmem_req_t dmem_req_s;
    rv32i_mem_out_t  mem_out_s;

    assign mem_in_s.valid        = mem_valid;
    assign mem_in_s.alu_result   = mem_alu_result;
    assign mem_in_s.store_data   = mem_store_data;
    assign mem_in_s.pc_plus4     = mem_pc_plus4;
    assign mem_in_s.imm_u        = mem_imm_u;
    assign mem_in_s.rd           = mem_rd;
    assign mem_in_s.rd_we        = mem_rd_we;
    assign mem_in_s.mem_re       = mem_mem_re;
    assign mem_in_s.mem_we       = mem_mem_we;
    assign mem_in_s.mem_size     = mem_mem_size;
    assign mem_in_s.mem_unsigned = mem_mem_unsigned;
    assign mem_in_s.wb_sel       = mem_wb_sel;

    rv32i_mem_stage u_rv32i_mem_stage (
        .clk        (clk),
        .rst        (rst),
        .mem_in     (mem_in_s),
        .dmem_req   (dmem_req_s),
        .dmem_rdata (dmem_rdata),
        .mem_out    (mem_out_s)
    );

    assign dmem_addr     = dmem_req_s.addr;
    assign dmem_wdata    = dmem_req_s.wdata;
    assign dmem_we       = dmem_req_s.we;
    assign dmem_re       = dmem_req_s.re;
    assign dmem_be       = dmem_req_s.be;

    assign wb_valid      = mem_out_s.valid;
    assign wb_data       = mem_out_s.data;
    assign wb_alu_result = mem_out_s.alu_result;
    assign wb_pc_plus4   = mem_out_s.pc_plus4;
    assign wb_imm_u      = mem_out_s.imm_u;
    assign wb_rd         = mem_out_s.rd;
    assign wb_rd_we      = mem_out_s.rd_we;
    assign wb_sel        = mem_out_s.wb_sel;

endmodule