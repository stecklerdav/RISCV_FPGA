// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Jun 19 23:29:13 2026
// Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RISCV_RV32MI/RISCV.srcs/sources_1/bd/RV32MI/RV32MI_stub.v
// Design      : RV32MI
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module RV32MI(SW1, gpio_out_0)
/* synthesis syn_black_box black_box_pad_pin="SW1[0:0],gpio_out_0[1:0]" */;
  input [0:0]SW1;
  output [1:0]gpio_out_0;
endmodule
