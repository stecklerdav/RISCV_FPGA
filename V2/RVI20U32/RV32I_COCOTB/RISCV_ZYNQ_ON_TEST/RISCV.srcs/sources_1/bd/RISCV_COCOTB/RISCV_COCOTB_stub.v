// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Jun 22 00:04:49 2026
// Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RISCV_ZYNQ_ON_TEST/RISCV.srcs/sources_1/bd/RISCV_COCOTB/RISCV_COCOTB_stub.v
// Design      : RISCV_COCOTB
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module RISCV_COCOTB(SW1, gpio_out_0)
/* synthesis syn_black_box black_box_pad_pin="SW1,gpio_out_0[1:0]" */;
  input SW1;
  output [1:0]gpio_out_0;
endmodule
