// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:mmio_decode_ram_gpio:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Sections_mmio_decode_ram_gpio_0_0 (
  clk,
  rst,
  mem_re,
  mem_we,
  addr,
  store_data,
  lsu_size,
  lsu_unsigned,
  ram_en,
  ram_we,
  ram_be,
  ram_addr,
  ram_wdata,
  ram_rdata,
  gpio_en,
  gpio_we,
  gpio_addr,
  gpio_wdata,
  gpio_rdata,
  load_data,
  fault_access
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Sections_zynq_ultra_ps_e_1_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire mem_re;
input wire mem_we;
input wire [31 : 0] addr;
input wire [31 : 0] store_data;
input wire [1 : 0] lsu_size;
input wire lsu_unsigned;
output wire ram_en;
output wire ram_we;
output wire [3 : 0] ram_be;
output wire [31 : 0] ram_addr;
output wire [31 : 0] ram_wdata;
input wire [31 : 0] ram_rdata;
output wire gpio_en;
output wire gpio_we;
output wire [31 : 0] gpio_addr;
output wire [31 : 0] gpio_wdata;
input wire [31 : 0] gpio_rdata;
output wire [31 : 0] load_data;
output wire fault_access;

  mmio_decode_ram_gpio #(
    .RAM_BASE(32'H00001000),
    .RAM_SIZE(32'H00001000),
    .GPIO_BASE(32'H00002000),
    .GPIO_SIZE(32'H00000100)
  ) inst (
    .clk(clk),
    .rst(rst),
    .mem_re(mem_re),
    .mem_we(mem_we),
    .addr(addr),
    .store_data(store_data),
    .lsu_size(lsu_size),
    .lsu_unsigned(lsu_unsigned),
    .ram_en(ram_en),
    .ram_we(ram_we),
    .ram_be(ram_be),
    .ram_addr(ram_addr),
    .ram_wdata(ram_wdata),
    .ram_rdata(ram_rdata),
    .gpio_en(gpio_en),
    .gpio_we(gpio_we),
    .gpio_addr(gpio_addr),
    .gpio_wdata(gpio_wdata),
    .gpio_rdata(gpio_rdata),
    .load_data(load_data),
    .fault_access(fault_access)
  );
endmodule
