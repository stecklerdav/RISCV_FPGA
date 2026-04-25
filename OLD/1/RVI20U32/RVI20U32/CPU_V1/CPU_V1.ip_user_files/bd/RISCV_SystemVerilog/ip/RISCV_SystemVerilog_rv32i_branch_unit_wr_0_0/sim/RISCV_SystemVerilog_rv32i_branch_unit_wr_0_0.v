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


// IP VLNV: xilinx.com:module_ref:rv32i_branch_unit_wrapper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module RISCV_SystemVerilog_rv32i_branch_unit_wr_0_0 (
  ex_valid,
  ex_pc,
  ex_rs1_data,
  ex_rs2_data,
  ex_imm,
  ex_branch_en,
  ex_branch_funct3,
  ex_jal,
  ex_jalr,
  branch_taken,
  pc_redirect_valid,
  pc_redirect_target,
  instr_addr_misaligned,
  instr_addr_misaligned_target,
  ex_exception_valid,
  ex_exception_cause,
  ex_exception_tval,
  ex_flush_req,
  ex_control_flow_change
);

input wire ex_valid;
input wire [31 : 0] ex_pc;
input wire [31 : 0] ex_rs1_data;
input wire [31 : 0] ex_rs2_data;
input wire [31 : 0] ex_imm;
input wire ex_branch_en;
input wire [2 : 0] ex_branch_funct3;
input wire ex_jal;
input wire ex_jalr;
output wire branch_taken;
output wire pc_redirect_valid;
output wire [31 : 0] pc_redirect_target;
output wire instr_addr_misaligned;
output wire [31 : 0] instr_addr_misaligned_target;
output wire ex_exception_valid;
output wire [3 : 0] ex_exception_cause;
output wire [31 : 0] ex_exception_tval;
output wire ex_flush_req;
output wire ex_control_flow_change;

  rv32i_branch_unit_wrapper inst (
    .ex_valid(ex_valid),
    .ex_pc(ex_pc),
    .ex_rs1_data(ex_rs1_data),
    .ex_rs2_data(ex_rs2_data),
    .ex_imm(ex_imm),
    .ex_branch_en(ex_branch_en),
    .ex_branch_funct3(ex_branch_funct3),
    .ex_jal(ex_jal),
    .ex_jalr(ex_jalr),
    .branch_taken(branch_taken),
    .pc_redirect_valid(pc_redirect_valid),
    .pc_redirect_target(pc_redirect_target),
    .instr_addr_misaligned(instr_addr_misaligned),
    .instr_addr_misaligned_target(instr_addr_misaligned_target),
    .ex_exception_valid(ex_exception_valid),
    .ex_exception_cause(ex_exception_cause),
    .ex_exception_tval(ex_exception_tval),
    .ex_flush_req(ex_flush_req),
    .ex_control_flow_change(ex_control_flow_change)
  );
endmodule
