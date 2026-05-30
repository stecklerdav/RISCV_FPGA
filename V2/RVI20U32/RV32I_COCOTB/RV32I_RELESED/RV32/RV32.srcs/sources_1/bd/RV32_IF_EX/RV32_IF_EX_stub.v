// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat May 30 00:31:44 2026
// Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RV32I_RELESED/RV32/RV32.srcs/sources_1/bd/RV32_IF_EX/RV32_IF_EX_stub.v
// Design      : RV32_IF_EX
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module RV32_IF_EX(clk, ex_alu_op, ex_imm, ex_instr, ex_pc, 
  ex_pc_plus4, ex_rd, ex_rd_we, ex_rs1, ex_rs1_data, ex_rs2, ex_rs2_data, ex_valid, id_instr_debug, 
  id_pc_debug, id_pc_plus4_debug, if_id_enable, if_id_flush, if_instr_debug, if_pc_debug, 
  if_pc_plus4_debug, rd_addr, rd_wdata, rd_we, rst)
/* synthesis syn_black_box black_box_pad_pin="clk,ex_alu_op[3:0],ex_imm[31:0],ex_instr[31:0],ex_pc[31:0],ex_pc_plus4[31:0],ex_rd[4:0],ex_rd_we,ex_rs1[4:0],ex_rs1_data[31:0],ex_rs2[4:0],ex_rs2_data[31:0],ex_valid,id_instr_debug[31:0],id_pc_debug[31:0],id_pc_plus4_debug[31:0],if_id_enable,if_id_flush,if_instr_debug[31:0],if_pc_debug[31:0],if_pc_plus4_debug[31:0],rd_addr[4:0],rd_wdata[31:0],rd_we,rst" */;
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
endmodule
