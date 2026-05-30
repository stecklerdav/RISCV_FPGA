//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Tue May 26 21:55:21 2026
//Host        : xilinx running 64-bit Ubuntu 25.10
//Command     : generate_target BASIC_wrapper.bd
//Design      : BASIC_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BASIC_wrapper
   (SW1,
    clk,
    gpio_out_0,
    rst);
  input [0:0]SW1;
  input clk;
  output [1:0]gpio_out_0;
  input rst;

  wire [0:0]SW1;
  wire clk;
  wire [1:0]gpio_out_0;
  wire rst;

  BASIC BASIC_i
       (.SW1(SW1),
        .clk(clk),
        .gpio_out_0(gpio_out_0),
        .rst(rst));
endmodule
