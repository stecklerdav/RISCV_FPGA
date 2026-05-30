//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sat May 30 00:29:42 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target RV32_IF_EX_wrapper.bd
//Design      : RV32_IF_EX_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

module RV32_IF_EX_wrapper (
    input  wire        clk,
    input  wire        rst,

    input  wire        if_id_enable,
    input  wire        if_id_flush,

    input  wire        rd_we,
    input  wire [4:0]  rd_addr,
    input  wire [31:0] rd_wdata,

    output wire        ex_valid,
    output wire [31:0] ex_pc,
    output wire [31:0] ex_pc_plus4,
    output wire [31:0] ex_instr,
    output wire [31:0] ex_imm,
    output wire [31:0] ex_rs1_data,
    output wire [31:0] ex_rs2_data,
    output wire [4:0]  ex_rs1,
    output wire [4:0]  ex_rs2,
    output wire [4:0]  ex_rd,
    output wire [3:0]  ex_alu_op,
    output wire        ex_rd_we,

    output wire [31:0] id_instr_debug,
    output wire [31:0] id_pc_debug,
    output wire [31:0] id_pc_plus4_debug,

    output wire [31:0] if_instr_debug,
    output wire [31:0] if_pc_debug,
    output wire [31:0] if_pc_plus4_debug
);

    RV32_IF_EX RV32_IF_EX_i (
        .clk(clk),
        .rst(rst),

        .if_id_enable(if_id_enable),
        .if_id_flush(if_id_flush),

        .rd_we(rd_we),
        .rd_addr(rd_addr),
        .rd_wdata(rd_wdata),

        .ex_valid(ex_valid),
        .ex_pc(ex_pc),
        .ex_pc_plus4(ex_pc_plus4),
        .ex_instr(ex_instr),
        .ex_imm(ex_imm),
        .ex_rs1_data(ex_rs1_data),
        .ex_rs2_data(ex_rs2_data),
        .ex_rs1(ex_rs1),
        .ex_rs2(ex_rs2),
        .ex_rd(ex_rd),
        .ex_alu_op(ex_alu_op),
        .ex_rd_we(ex_rd_we),

        .id_instr_debug(id_instr_debug),
        .id_pc_debug(id_pc_debug),
        .id_pc_plus4_debug(id_pc_plus4_debug),

        .if_instr_debug(if_instr_debug),
        .if_pc_debug(if_pc_debug),
        .if_pc_plus4_debug(if_pc_plus4_debug)
    );

endmodule
