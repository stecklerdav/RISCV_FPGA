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


// IP VLNV: xilinx.com:module_ref:mem_bus_registered:1.0
// IP Revision: 1

(* X_CORE_INFO = "mem_bus_registered,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "BASIC_mem_bus_registered_0_0,mem_bus_registered,{}" *)
(* CORE_GENERATION_INFO = "BASIC_mem_bus_registered_0_0,mem_bus_registered,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mem_bus_registered,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,RAM_BASE=0x00002000,RAM_SIZE=0x00001000,GPIO_BASE=0x00003000,GPIO_SIZE=0x00000010,UART_BASE=0x00003010,UART_SIZE=0x00000010,TIMER_BASE=0x00003020,TIMER_SIZE=0x00000010,TIMEOUT_CYCLES=0x000186A0}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module BASIC_mem_bus_registered_0_0 (
  clk,
  rst,
  mem_req_valid,
  mem_req_ready,
  mem_req_we,
  mem_req_addr,
  mem_req_wdata,
  mem_req_be,
  mem_rsp_valid,
  mem_rsp_rdata,
  mem_rsp_error,
  ram_valid,
  ram_we,
  ram_addr,
  ram_wdata,
  ram_be,
  ram_rdata,
  ram_ready,
  gpio_valid,
  gpio_we,
  gpio_addr,
  gpio_wdata,
  gpio_be,
  gpio_rdata,
  gpio_ready,
  uart_valid,
  uart_we,
  uart_addr,
  uart_wdata,
  uart_be,
  uart_rdata,
  uart_ready,
  timer_valid,
  timer_we,
  timer_addr,
  timer_wdata,
  timer_be,
  timer_rdata,
  timer_ready,
  timer_error
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 190474289, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN BASIC_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire mem_req_valid;
output wire mem_req_ready;
input wire mem_req_we;
input wire [31 : 0] mem_req_addr;
input wire [31 : 0] mem_req_wdata;
input wire [3 : 0] mem_req_be;
output wire mem_rsp_valid;
output wire [31 : 0] mem_rsp_rdata;
output wire mem_rsp_error;
output wire ram_valid;
output wire ram_we;
output wire [31 : 0] ram_addr;
output wire [31 : 0] ram_wdata;
output wire [3 : 0] ram_be;
input wire [31 : 0] ram_rdata;
input wire ram_ready;
output wire gpio_valid;
output wire gpio_we;
output wire [31 : 0] gpio_addr;
output wire [31 : 0] gpio_wdata;
output wire [3 : 0] gpio_be;
input wire [31 : 0] gpio_rdata;
input wire gpio_ready;
output wire uart_valid;
output wire uart_we;
output wire [31 : 0] uart_addr;
output wire [31 : 0] uart_wdata;
output wire [3 : 0] uart_be;
input wire [31 : 0] uart_rdata;
input wire uart_ready;
output wire timer_valid;
output wire timer_we;
output wire [31 : 0] timer_addr;
output wire [31 : 0] timer_wdata;
output wire [3 : 0] timer_be;
input wire [31 : 0] timer_rdata;
input wire timer_ready;
input wire timer_error;

  mem_bus_registered #(
    .RAM_BASE(32'H00002000),
    .RAM_SIZE(32'H00001000),
    .GPIO_BASE(32'H00003000),
    .GPIO_SIZE(32'H00000010),
    .UART_BASE(32'H00003010),
    .UART_SIZE(32'H00000010),
    .TIMER_BASE(32'H00003020),
    .TIMER_SIZE(32'H00000010),
    .TIMEOUT_CYCLES(32'H000186A0)
  ) inst (
    .clk(clk),
    .rst(rst),
    .mem_req_valid(mem_req_valid),
    .mem_req_ready(mem_req_ready),
    .mem_req_we(mem_req_we),
    .mem_req_addr(mem_req_addr),
    .mem_req_wdata(mem_req_wdata),
    .mem_req_be(mem_req_be),
    .mem_rsp_valid(mem_rsp_valid),
    .mem_rsp_rdata(mem_rsp_rdata),
    .mem_rsp_error(mem_rsp_error),
    .ram_valid(ram_valid),
    .ram_we(ram_we),
    .ram_addr(ram_addr),
    .ram_wdata(ram_wdata),
    .ram_be(ram_be),
    .ram_rdata(ram_rdata),
    .ram_ready(ram_ready),
    .gpio_valid(gpio_valid),
    .gpio_we(gpio_we),
    .gpio_addr(gpio_addr),
    .gpio_wdata(gpio_wdata),
    .gpio_be(gpio_be),
    .gpio_rdata(gpio_rdata),
    .gpio_ready(gpio_ready),
    .uart_valid(uart_valid),
    .uart_we(uart_we),
    .uart_addr(uart_addr),
    .uart_wdata(uart_wdata),
    .uart_be(uart_be),
    .uart_rdata(uart_rdata),
    .uart_ready(uart_ready),
    .timer_valid(timer_valid),
    .timer_we(timer_we),
    .timer_addr(timer_addr),
    .timer_wdata(timer_wdata),
    .timer_be(timer_be),
    .timer_rdata(timer_rdata),
    .timer_ready(timer_ready),
    .timer_error(timer_error)
  );
endmodule
