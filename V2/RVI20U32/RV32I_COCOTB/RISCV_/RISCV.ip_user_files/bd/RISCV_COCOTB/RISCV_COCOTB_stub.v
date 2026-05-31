// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat May 30 23:27:55 2026
// Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RISCV_/RISCV.srcs/sources_1/bd/RISCV_COCOTB/RISCV_COCOTB_stub.v
// Design      : RISCV_COCOTB
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module RISCV_COCOTB(clk, dmem_addr, dmem_be, dmem_valid, dmem_wdata, 
  dmem_we, gpio_dir_0, gpio_in, gpio_out, id_instr_out, id_pc_out, id_valid_out, mem_req_ready, 
  mem_rsp_valid, pc_debug_last_predict_0, pc_debug_last_priv_redirect_0, 
  pc_debug_last_redirect_0, pc_debug_predict_pulse_0, pc_debug_priv_redirect_pulse_0, 
  pc_debug_redirect_pulse_0, priv_redirect_target_0, priv_redirect_valid_0, rd_wdata, 
  rdata, ready, ready_1, ready_2, ready_3, regfile_we, rst, timer_ready, tx, wb_rd)
/* synthesis syn_black_box black_box_pad_pin="clk,dmem_addr[31:0],dmem_be[3:0],dmem_valid,dmem_wdata[31:0],dmem_we,gpio_dir_0[7:0],gpio_in[7:0],gpio_out[7:0],id_instr_out[31:0],id_pc_out[31:0],id_valid_out,mem_req_ready,mem_rsp_valid,pc_debug_last_predict_0[31:0],pc_debug_last_priv_redirect_0[31:0],pc_debug_last_redirect_0[31:0],pc_debug_predict_pulse_0,pc_debug_priv_redirect_pulse_0,pc_debug_redirect_pulse_0,priv_redirect_target_0[31:0],priv_redirect_valid_0,rd_wdata[31:0],rdata[31:0],ready,ready_1,ready_2,ready_3,regfile_we,rst,timer_ready,tx,wb_rd[4:0]" */;
  input clk;
  output [31:0]dmem_addr;
  output [3:0]dmem_be;
  output dmem_valid;
  output [31:0]dmem_wdata;
  output dmem_we;
  output [7:0]gpio_dir_0;
  input [7:0]gpio_in;
  output [7:0]gpio_out;
  output [31:0]id_instr_out;
  output [31:0]id_pc_out;
  output id_valid_out;
  output mem_req_ready;
  output mem_rsp_valid;
  output [31:0]pc_debug_last_predict_0;
  output [31:0]pc_debug_last_priv_redirect_0;
  output [31:0]pc_debug_last_redirect_0;
  output pc_debug_predict_pulse_0;
  output pc_debug_priv_redirect_pulse_0;
  output pc_debug_redirect_pulse_0;
  input [31:0]priv_redirect_target_0;
  input priv_redirect_valid_0;
  output [31:0]rd_wdata;
  output [31:0]rdata;
  output ready;
  output ready_1;
  output ready_2;
  output ready_3;
  output regfile_we;
  input rst;
  input timer_ready;
  output tx;
  output [4:0]wb_rd;
endmodule
