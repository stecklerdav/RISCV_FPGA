//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Fri May 29 20:39:25 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target RV32_IF_ID_wrapper.bd
//Design      : RV32_IF_ID_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RV32_IF_ID_wrapper
   (clk,
    id_instr_debug,
    id_pc_debug,
    id_pc_plus4_debug,
    if_id_enable,
    if_id_flush,
    if_instr_debug,
    if_pc_debug,
    if_pc_plus4_debug,
    rst);
  input clk;
  output [31:0]id_instr_debug;
  output [31:0]id_pc_debug;
  output [31:0]id_pc_plus4_debug;
  input if_id_enable;
  input if_id_flush;
  output [31:0]if_instr_debug;
  output [31:0]if_pc_debug;
  output [31:0]if_pc_plus4_debug;
  input rst;

  wire clk;
  wire [31:0]id_instr_debug;
  wire [31:0]id_pc_debug;
  wire [31:0]id_pc_plus4_debug;
  wire if_id_enable;
  wire if_id_flush;
  wire [31:0]if_instr_debug;
  wire [31:0]if_pc_debug;
  wire [31:0]if_pc_plus4_debug;
  wire rst;

  RV32_IF_ID RV32_IF_ID_i
       (.clk(clk),
        .id_instr_debug(id_instr_debug),
        .id_pc_debug(id_pc_debug),
        .id_pc_plus4_debug(id_pc_plus4_debug),
        .if_id_enable(if_id_enable),
        .if_id_flush(if_id_flush),
        .if_instr_debug(if_instr_debug),
        .if_pc_debug(if_pc_debug),
        .if_pc_plus4_debug(if_pc_plus4_debug),
        .rst(rst));
endmodule
