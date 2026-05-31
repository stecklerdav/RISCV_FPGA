//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sat May 30 23:10:40 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target RISCV_COCOTB_wrapper.bd
//Design      : RISCV_COCOTB_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RISCV_COCOTB_wrapper
   (clk,
    gpio_dir_0,
    gpio_in,
    gpio_out,
    pc_debug_last_predict_0,
    pc_debug_last_priv_redirect_0,
    pc_debug_last_redirect_0,
    pc_debug_predict_pulse_0,
    pc_debug_priv_redirect_pulse_0,
    pc_debug_redirect_pulse_0,
    priv_redirect_target_0,
    priv_redirect_valid_0,
    rdata,
    ready,
    ready_1,
    ready_2,
    ready_3,
    rst,
    timer_ready,
    tx);
  input clk;
  output [7:0]gpio_dir_0;
  input [7:0]gpio_in;
  output [7:0]gpio_out;
  output [31:0]pc_debug_last_predict_0;
  output [31:0]pc_debug_last_priv_redirect_0;
  output [31:0]pc_debug_last_redirect_0;
  output pc_debug_predict_pulse_0;
  output pc_debug_priv_redirect_pulse_0;
  output pc_debug_redirect_pulse_0;
  input [31:0]priv_redirect_target_0;
  input priv_redirect_valid_0;
  output [31:0]rdata;
  output ready;
  output ready_1;
  output ready_2;
  output ready_3;
  input rst;
  input timer_ready;
  output tx;

  wire clk;
  wire [7:0]gpio_dir_0;
  wire [7:0]gpio_in;
  wire [7:0]gpio_out;
  wire [31:0]pc_debug_last_predict_0;
  wire [31:0]pc_debug_last_priv_redirect_0;
  wire [31:0]pc_debug_last_redirect_0;
  wire pc_debug_predict_pulse_0;
  wire pc_debug_priv_redirect_pulse_0;
  wire pc_debug_redirect_pulse_0;
  wire [31:0]priv_redirect_target_0;
  wire priv_redirect_valid_0;
  wire [31:0]rdata;
  wire ready;
  wire ready_1;
  wire ready_2;
  wire ready_3;
  wire rst;
  wire timer_ready;
  wire tx;

  RISCV_COCOTB RISCV_COCOTB_i
       (.clk(clk),
        .gpio_dir_0(gpio_dir_0),
        .gpio_in(gpio_in),
        .gpio_out(gpio_out),
        .pc_debug_last_predict_0(pc_debug_last_predict_0),
        .pc_debug_last_priv_redirect_0(pc_debug_last_priv_redirect_0),
        .pc_debug_last_redirect_0(pc_debug_last_redirect_0),
        .pc_debug_predict_pulse_0(pc_debug_predict_pulse_0),
        .pc_debug_priv_redirect_pulse_0(pc_debug_priv_redirect_pulse_0),
        .pc_debug_redirect_pulse_0(pc_debug_redirect_pulse_0),
        .priv_redirect_target_0(priv_redirect_target_0),
        .priv_redirect_valid_0(priv_redirect_valid_0),
        .rdata(rdata),
        .ready(ready),
        .ready_1(ready_1),
        .ready_2(ready_2),
        .ready_3(ready_3),
        .rst(rst),
        .timer_ready(timer_ready),
        .tx(tx));
endmodule
