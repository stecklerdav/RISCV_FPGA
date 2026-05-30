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


// IP VLNV: xilinx.com:module_ref:trap_controller:1.0
// IP Revision: 1

(* X_CORE_INFO = "trap_controller,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "BASIC_trap_controller_0_0,trap_controller,{}" *)
(* CORE_GENERATION_INFO = "BASIC_trap_controller_0_0,trap_controller,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=trap_controller,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module BASIC_trap_controller_0_0 (
  clk,
  rst,
  exception_valid,
  exception_pc,
  exception_cause,
  exception_tval,
  instr_valid,
  current_pc,
  ecall,
  illegal_instr,
  mret,
  timer_irq,
  csr_mstatus,
  csr_mtvec,
  csr_mepc,
  csr_mie,
  csr_mip,
  mem_stall_req,
  trap_enter,
  trap_flush,
  trap_target,
  trap_mepc,
  trap_mcause,
  trap_mtval,
  mret_taken,
  mret_target
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN BASIC_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire exception_valid;
input wire [31 : 0] exception_pc;
input wire [3 : 0] exception_cause;
input wire [31 : 0] exception_tval;
input wire instr_valid;
input wire [31 : 0] current_pc;
input wire ecall;
input wire illegal_instr;
input wire mret;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME timer_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 timer_irq INTERRUPT" *)
input wire timer_irq;
input wire [31 : 0] csr_mstatus;
input wire [31 : 0] csr_mtvec;
input wire [31 : 0] csr_mepc;
input wire [31 : 0] csr_mie;
input wire [31 : 0] csr_mip;
input wire mem_stall_req;
output wire trap_enter;
output wire trap_flush;
output wire [31 : 0] trap_target;
output wire [31 : 0] trap_mepc;
output wire [31 : 0] trap_mcause;
output wire [31 : 0] trap_mtval;
output wire mret_taken;
output wire [31 : 0] mret_target;

  trap_controller inst (
    .clk(clk),
    .rst(rst),
    .exception_valid(exception_valid),
    .exception_pc(exception_pc),
    .exception_cause(exception_cause),
    .exception_tval(exception_tval),
    .instr_valid(instr_valid),
    .current_pc(current_pc),
    .ecall(ecall),
    .illegal_instr(illegal_instr),
    .mret(mret),
    .timer_irq(timer_irq),
    .csr_mstatus(csr_mstatus),
    .csr_mtvec(csr_mtvec),
    .csr_mepc(csr_mepc),
    .csr_mie(csr_mie),
    .csr_mip(csr_mip),
    .mem_stall_req(mem_stall_req),
    .trap_enter(trap_enter),
    .trap_flush(trap_flush),
    .trap_target(trap_target),
    .trap_mepc(trap_mepc),
    .trap_mcause(trap_mcause),
    .trap_mtval(trap_mtval),
    .mret_taken(mret_taken),
    .mret_target(mret_target)
  );
endmodule
