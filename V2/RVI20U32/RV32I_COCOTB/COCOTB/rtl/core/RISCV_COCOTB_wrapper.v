//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sun May 31 13:03:39 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target RISCV_COCOTB_wrapper.bd
//Design      : RISCV_COCOTB_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RISCV_COCOTB_wrapper
   (clk,
    dmem_addr,
    dmem_be,
    dmem_valid,
    dmem_wdata,
    dmem_we,
    ex_rs2,
    ex_store_data,
    forward_store,
    gpio_dir_0,
    gpio_in,
    gpio_out,
    id_instr_out,
    id_pc_out,
    id_valid_out,
    mem_req_ready,
    mem_rsp_valid,
    mem_store_data,
    pc_debug_last_predict_0,
    pc_debug_last_priv_redirect_0,
    pc_debug_last_redirect_0,
    pc_debug_predict_pulse_0,
    pc_debug_priv_redirect_pulse_0,
    pc_debug_redirect_pulse_0,
    priv_redirect_target_0,
    priv_redirect_valid_0,
    rd_wdata,
    rdata,
    ready,
    ready_1,
    ready_2,
    ready_3,
    regfile_we,
    rst,
    timer_ready,
    tx,
    wb_rd,
    wb_rd_we,
    wb_valid);
  input clk;
  output [31:0]dmem_addr;
  output [3:0]dmem_be;
  output dmem_valid;
  output [31:0]dmem_wdata;
  output dmem_we;
  output [4:0]ex_rs2;
  output [31:0]ex_store_data;
  output [1:0]forward_store;
  output [7:0]gpio_dir_0;
  input [7:0]gpio_in;
  output [7:0]gpio_out;
  output [31:0]id_instr_out;
  output [31:0]id_pc_out;
  output id_valid_out;
  output mem_req_ready;
  output mem_rsp_valid;
  output [31:0]mem_store_data;
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
  output wb_rd_we;
  output wb_valid;

  wire clk;
  wire [31:0]dmem_addr;
  wire [3:0]dmem_be;
  wire dmem_valid;
  wire [31:0]dmem_wdata;
  wire dmem_we;
  wire [4:0]ex_rs2;
  wire [31:0]ex_store_data;
  wire [1:0]forward_store;
  wire [7:0]gpio_dir_0;
  wire [7:0]gpio_in;
  wire [7:0]gpio_out;
  wire [31:0]id_instr_out;
  wire [31:0]id_pc_out;
  wire id_valid_out;
  wire mem_req_ready;
  wire mem_rsp_valid;
  wire [31:0]mem_store_data;
  wire [31:0]pc_debug_last_predict_0;
  wire [31:0]pc_debug_last_priv_redirect_0;
  wire [31:0]pc_debug_last_redirect_0;
  wire pc_debug_predict_pulse_0;
  wire pc_debug_priv_redirect_pulse_0;
  wire pc_debug_redirect_pulse_0;
  wire [31:0]priv_redirect_target_0;
  wire priv_redirect_valid_0;
  wire [31:0]rd_wdata;
  wire [31:0]rdata;
  wire ready;
  wire ready_1;
  wire ready_2;
  wire ready_3;
  wire regfile_we;
  wire rst;
  wire timer_ready;
  wire tx;
  wire [4:0]wb_rd;
  wire wb_rd_we;
  wire wb_valid;

  RISCV_COCOTB RISCV_COCOTB_i
       (.clk(clk),
        .dmem_addr(dmem_addr),
        .dmem_be(dmem_be),
        .dmem_valid(dmem_valid),
        .dmem_wdata(dmem_wdata),
        .dmem_we(dmem_we),
        .ex_rs2(ex_rs2),
        .ex_store_data(ex_store_data),
        .forward_store(forward_store),
        .gpio_dir_0(gpio_dir_0),
        .gpio_in(gpio_in),
        .gpio_out(gpio_out),
        .id_instr_out(id_instr_out),
        .id_pc_out(id_pc_out),
        .id_valid_out(id_valid_out),
        .mem_req_ready(mem_req_ready),
        .mem_rsp_valid(mem_rsp_valid),
        .mem_store_data(mem_store_data),
        .pc_debug_last_predict_0(pc_debug_last_predict_0),
        .pc_debug_last_priv_redirect_0(pc_debug_last_priv_redirect_0),
        .pc_debug_last_redirect_0(pc_debug_last_redirect_0),
        .pc_debug_predict_pulse_0(pc_debug_predict_pulse_0),
        .pc_debug_priv_redirect_pulse_0(pc_debug_priv_redirect_pulse_0),
        .pc_debug_redirect_pulse_0(pc_debug_redirect_pulse_0),
        .priv_redirect_target_0(priv_redirect_target_0),
        .priv_redirect_valid_0(priv_redirect_valid_0),
        .rd_wdata(rd_wdata),
        .rdata(rdata),
        .ready(ready),
        .ready_1(ready_1),
        .ready_2(ready_2),
        .ready_3(ready_3),
        .regfile_we(regfile_we),
        .rst(rst),
        .timer_ready(timer_ready),
        .tx(tx),
        .wb_rd(wb_rd),
        .wb_rd_we(wb_rd_we),
        .wb_valid(wb_valid));
endmodule

