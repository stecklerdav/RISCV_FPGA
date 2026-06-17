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


// IP VLNV: xilinx.com:module_ref:csr_file:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module RISCV_COCOTB_csr_file_0_0 (
  clk,
  rst,
  csr_we,
  csr_addr,
  csr_wdata,
  csr_rdata,
  trap_enter,
  trap_mepc,
  trap_mcause,
  trap_mtval,
  mret,
  timer_irq,
  csr_mstatus,
  csr_mtvec,
  csr_mepc,
  csr_mcause,
  csr_mtval,
  csr_mie,
  csr_mip
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 190474289, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN RISCV_COCOTB_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire csr_we;
input wire [11 : 0] csr_addr;
input wire [31 : 0] csr_wdata;
output wire [31 : 0] csr_rdata;
input wire trap_enter;
input wire [31 : 0] trap_mepc;
input wire [31 : 0] trap_mcause;
input wire [31 : 0] trap_mtval;
input wire mret;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME timer_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 timer_irq INTERRUPT" *)
input wire timer_irq;
output wire [31 : 0] csr_mstatus;
output wire [31 : 0] csr_mtvec;
output wire [31 : 0] csr_mepc;
output wire [31 : 0] csr_mcause;
output wire [31 : 0] csr_mtval;
output wire [31 : 0] csr_mie;
output wire [31 : 0] csr_mip;

  csr_file inst (
    .clk(clk),
    .rst(rst),
    .csr_we(csr_we),
    .csr_addr(csr_addr),
    .csr_wdata(csr_wdata),
    .csr_rdata(csr_rdata),
    .trap_enter(trap_enter),
    .trap_mepc(trap_mepc),
    .trap_mcause(trap_mcause),
    .trap_mtval(trap_mtval),
    .mret(mret),
    .timer_irq(timer_irq),
    .csr_mstatus(csr_mstatus),
    .csr_mtvec(csr_mtvec),
    .csr_mepc(csr_mepc),
    .csr_mcause(csr_mcause),
    .csr_mtval(csr_mtval),
    .csr_mie(csr_mie),
    .csr_mip(csr_mip)
  );
endmodule
