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

module RV32_IF_EX_wrapper
   (clk,
    ex_alu_op,
    ex_imm,
    ex_instr,
    ex_pc,
    ex_pc_plus4,
    ex_rd,
    ex_rd_we,
    ex_rs1,
    ex_rs1_data,
    ex_rs2,
    ex_rs2_data,
    ex_valid,
    id_instr_debug,
    id_pc_debug,
    id_pc_plus4_debug,
    if_id_enable,
    if_id_flush,
    if_instr_debug,
    if_pc_debug,
    if_pc_plus4_debug,
    rd_addr,
    rd_wdata,
    rd_we,
    rst);
  input clk;
  output [3:0]ex_alu_op;
  output [31:0]ex_imm;
  output [31:0]ex_instr;
  output [31:0]ex_pc;
  output [31:0]ex_pc_plus4;
  output [4:0]ex_rd;
  output ex_rd_we;
  output [4:0]ex_rs1;
  output [31:0]ex_rs1_data;
  output [4:0]ex_rs2;
  output [31:0]ex_rs2_data;
  output ex_valid;
  output [31:0]id_instr_debug;
  output [31:0]id_pc_debug;
  output [31:0]id_pc_plus4_debug;
  input if_id_enable;
  input if_id_flush;
  output [31:0]if_instr_debug;
  output [31:0]if_pc_debug;
  output [31:0]if_pc_plus4_debug;
  input [4:0]rd_addr;
  input [31:0]rd_wdata;
  input rd_we;
  input rst;

  wire clk;
  wire [3:0]ex_alu_op;
  wire [31:0]ex_imm;
  wire [31:0]ex_instr;
  wire [31:0]ex_pc;
  wire [31:0]ex_pc_plus4;
  wire [4:0]ex_rd;
  wire ex_rd_we;
  wire [4:0]ex_rs1;
  wire [31:0]ex_rs1_data;
  wire [4:0]ex_rs2;
  wire [31:0]ex_rs2_data;
  wire ex_valid;
  wire [31:0]id_instr_debug;
  wire [31:0]id_pc_debug;
  wire [31:0]id_pc_plus4_debug;
  wire if_id_enable;
  wire if_id_flush;
  wire [31:0]if_instr_debug;
  wire [31:0]if_pc_debug;
  wire [31:0]if_pc_plus4_debug;
  wire [4:0]rd_addr;
  wire [31:0]rd_wdata;
  wire rd_we;
  wire rst;

  RV32_IF_EX RV32_IF_EX_i
       (.clk(clk),
        .ex_alu_op(ex_alu_op),
        .ex_imm(ex_imm),
        .ex_instr(ex_instr),
        .ex_pc(ex_pc),
        .ex_pc_plus4(ex_pc_plus4),
        .ex_rd(ex_rd),
        .ex_rd_we(ex_rd_we),
        .ex_rs1(ex_rs1),
        .ex_rs1_data(ex_rs1_data),
        .ex_rs2(ex_rs2),
        .ex_rs2_data(ex_rs2_data),
        .ex_valid(ex_valid),
        .id_instr_debug(id_instr_debug),
        .id_pc_debug(id_pc_debug),
        .id_pc_plus4_debug(id_pc_plus4_debug),
        .if_id_enable(if_id_enable),
        .if_id_flush(if_id_flush),
        .if_instr_debug(if_instr_debug),
        .if_pc_debug(if_pc_debug),
        .if_pc_plus4_debug(if_pc_plus4_debug),
        .rd_addr(rd_addr),
        .rd_wdata(rd_wdata),
        .rd_we(rd_we),
        .rst(rst));
endmodule
