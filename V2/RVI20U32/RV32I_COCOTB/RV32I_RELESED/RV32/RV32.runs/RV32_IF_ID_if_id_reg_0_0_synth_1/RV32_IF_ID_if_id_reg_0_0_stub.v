// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri May 29 20:40:35 2026
// Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RV32_IF_ID_if_id_reg_0_0_stub.v
// Design      : RV32_IF_ID_if_id_reg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "if_id_reg,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, enable, flush, if_pc, if_pc_plus4, 
  if_instr, id_pc, id_pc_plus4, id_instr)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,enable,flush,if_pc[31:0],if_pc_plus4[31:0],if_instr[31:0],id_pc[31:0],id_pc_plus4[31:0],id_instr[31:0]" */;
  input clk;
  input rst;
  input enable;
  input flush;
  input [31:0]if_pc;
  input [31:0]if_pc_plus4;
  input [31:0]if_instr;
  output [31:0]id_pc;
  output [31:0]id_pc_plus4;
  output [31:0]id_instr;
endmodule
