// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri May 29 20:40:36 2026
// Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/OLD/RV32I_RELESED/RV32/RV32.srcs/sources_1/bd/RV32_IF_ID/ip/RV32_IF_ID_rom_memory_0_0/RV32_IF_ID_rom_memory_0_0_stub.v
// Design      : RV32_IF_ID_rom_memory_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rom_memory,Vivado 2020.1" *)
module RV32_IF_ID_rom_memory_0_0(clk, en, addr, instr)
/* synthesis syn_black_box black_box_pad_pin="clk,en,addr[10:0],instr[31:0]" */;
  input clk;
  input en;
  input [10:0]addr;
  output [31:0]instr;
endmodule
