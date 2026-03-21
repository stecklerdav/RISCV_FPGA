`timescale 1ns / 1ps

`include "rv32i_ex_mem_reg_types.svh"

module rv32i_ex_mem_reg (
    input  logic                     clk,
    input  logic                     rst,
    input  logic                     stall,
    input  logic                     flush,

    input  logic                     ex_valid,

    input  logic [31:0]              ex_pc,
    input  logic [31:0]              ex_alu_result,
    input  logic [31:0]              ex_store_data,
    input  logic [31:0]              ex_pc_plus4,
    input  logic [31:0]              ex_imm_u,
    input  logic [4:0]               ex_rd,

    input  logic                     ex_mem_re,
    input  logic                     ex_mem_we,
    input  logic [1:0]               ex_mem_size,
    input  logic                     ex_mem_unsigned,

    input  logic                     ex_rd_we,
    input  logic [1:0]               ex_wb_sel,

    input  logic                     ex_exception_valid,
    input  logic [3:0]               ex_exception_cause,
    input  logic [31:0]              ex_exception_tval,

    output logic                     mem_valid,

    output logic [31:0]              mem_pc,
    output logic [31:0]              mem_alu_result,
    output logic [31:0]              mem_store_data,
    output logic [31:0]              mem_pc_plus4,
    output logic [31:0]              mem_imm_u,
    output logic [4:0]               mem_rd,

    output logic                     mem_mem_re,
    output logic                     mem_mem_we,
    output logic [1:0]               mem_mem_size,
    output logic                     mem_mem_unsigned,

    output logic                     mem_rd_we,
    output logic [1:0]               mem_wb_sel,

    output logic                     mem_exception_valid,
    output logic [3:0]               mem_exception_cause,
    output logic [31:0]              mem_exception_tval
);

    rv32i_ex_mem_payload_t ex_mem_d;
    rv32i_ex_mem_payload_t ex_mem_q;

    always_comb begin
        ex_mem_d.valid           = ex_valid;

        ex_mem_d.pc              = ex_pc;
        ex_mem_d.alu_result      = ex_alu_result;
        ex_mem_d.store_data      = ex_store_data;
        ex_mem_d.pc_plus4        = ex_pc_plus4;
        ex_mem_d.imm_u           = ex_imm_u;

        ex_mem_d.rd              = ex_rd;

        ex_mem_d.mem_re          = ex_mem_re;
        ex_mem_d.mem_we          = ex_mem_we;
        ex_mem_d.mem_size        = ex_mem_size;
        ex_mem_d.mem_unsigned    = ex_mem_unsigned;

        ex_mem_d.rd_we           = ex_rd_we;
        ex_mem_d.wb_sel          = ex_wb_sel;

        ex_mem_d.exception_valid = ex_exception_valid;
        ex_mem_d.exception_cause = ex_exception_cause;
        ex_mem_d.exception_tval  = ex_exception_tval;
    end

    always_ff @(posedge clk) begin
        if (rst || flush) begin
            ex_mem_q <= '0;
        end
        else if (!stall) begin
            ex_mem_q <= ex_mem_d;
        end
    end

    always_comb begin
        mem_valid           = ex_mem_q.valid;

        mem_pc              = ex_mem_q.pc;
        mem_alu_result      = ex_mem_q.alu_result;
        mem_store_data      = ex_mem_q.store_data;
        mem_pc_plus4        = ex_mem_q.pc_plus4;
        mem_imm_u           = ex_mem_q.imm_u;

        mem_rd              = ex_mem_q.rd;

        mem_mem_re          = ex_mem_q.mem_re;
        mem_mem_we          = ex_mem_q.mem_we;
        mem_mem_size        = ex_mem_q.mem_size;
        mem_mem_unsigned    = ex_mem_q.mem_unsigned;

        mem_rd_we           = ex_mem_q.rd_we;
        mem_wb_sel          = ex_mem_q.wb_sel;

        mem_exception_valid = ex_mem_q.exception_valid;
        mem_exception_cause = ex_mem_q.exception_cause;
        mem_exception_tval  = ex_mem_q.exception_tval;
    end

endmodule
