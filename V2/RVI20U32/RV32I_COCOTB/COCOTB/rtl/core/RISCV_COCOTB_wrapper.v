//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Fri Jun  5 12:46:47 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target RISCV_COCOTB_wrapper.bd
//Design      : RISCV_COCOTB_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RISCV_COCOTB_wrapper
   (Reset,
    SW1,
    clk,
    gpio_out_0);
  input [0:0]Reset;
  input [0:0]SW1;
  input clk;
  output [1:0]gpio_out_0;

  wire [0:0]Reset;
  wire [0:0]SW1;
  wire clk;
  wire [1:0]gpio_out_0;

  RISCV_COCOTB RISCV_COCOTB_i
       (.Reset(Reset),
        .SW1(SW1),
        .clk(clk),
        .gpio_out_0(gpio_out_0));
endmodule

