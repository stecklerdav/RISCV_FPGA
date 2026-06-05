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


// IP VLNV: xilinx.com:module_ref:id_ex_reg:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module BASIC_id_ex_reg_0_1 (
  clk,
  rst,
  id_instr,
  stall,
  bubble,
  id_valid,
  id_pc,
  id_pc_plus4,
  id_pred_next_pc,
  id_rs1_data,
  id_rs2_data,
  id_imm,
  id_imm_u,
  id_rs1,
  id_rs2,
  id_rd,
  id_alu_op,
  id_op_a_sel,
  id_op_b_sel,
  id_branch_en,
  id_branch_funct3,
  id_jal,
  id_jalr,
  id_mem_re,
  id_mem_we,
  id_mem_size,
  id_mem_unsigned,
  id_rd_we,
  id_wb_sel,
  id_illegal_instr,
  ex_valid,
  ex_pc,
  ex_pc_plus4,
  ex_pred_next_pc,
  ex_rs1_data,
  ex_rs2_data,
  ex_imm,
  ex_imm_u,
  ex_rs1,
  ex_rs2,
  ex_rd,
  ex_alu_op,
  ex_op_a_sel,
  ex_op_b_sel,
  ex_branch_en,
  ex_branch_funct3,
  ex_jal,
  ex_jalr,
  ex_mem_re,
  ex_mem_we,
  ex_mem_size,
  ex_mem_unsigned,
  ex_rd_we,
  ex_instr,
  ex_illegal_instr,
  ex_wb_sel
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 190474289, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN BASIC_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [31 : 0] id_instr;
input wire stall;
input wire bubble;
input wire id_valid;
input wire [31 : 0] id_pc;
input wire [31 : 0] id_pc_plus4;
input wire [31 : 0] id_pred_next_pc;
input wire [31 : 0] id_rs1_data;
input wire [31 : 0] id_rs2_data;
input wire [31 : 0] id_imm;
input wire [31 : 0] id_imm_u;
input wire [4 : 0] id_rs1;
input wire [4 : 0] id_rs2;
input wire [4 : 0] id_rd;
input wire [3 : 0] id_alu_op;
input wire [1 : 0] id_op_a_sel;
input wire [1 : 0] id_op_b_sel;
input wire id_branch_en;
input wire [2 : 0] id_branch_funct3;
input wire id_jal;
input wire id_jalr;
input wire id_mem_re;
input wire id_mem_we;
input wire [1 : 0] id_mem_size;
input wire id_mem_unsigned;
input wire id_rd_we;
input wire [2 : 0] id_wb_sel;
input wire id_illegal_instr;
output wire ex_valid;
output wire [31 : 0] ex_pc;
output wire [31 : 0] ex_pc_plus4;
output wire [31 : 0] ex_pred_next_pc;
output wire [31 : 0] ex_rs1_data;
output wire [31 : 0] ex_rs2_data;
output wire [31 : 0] ex_imm;
output wire [31 : 0] ex_imm_u;
output wire [4 : 0] ex_rs1;
output wire [4 : 0] ex_rs2;
output wire [4 : 0] ex_rd;
output wire [3 : 0] ex_alu_op;
output wire [1 : 0] ex_op_a_sel;
output wire [1 : 0] ex_op_b_sel;
output wire ex_branch_en;
output wire [2 : 0] ex_branch_funct3;
output wire ex_jal;
output wire ex_jalr;
output wire ex_mem_re;
output wire ex_mem_we;
output wire [1 : 0] ex_mem_size;
output wire ex_mem_unsigned;
output wire ex_rd_we;
output wire [31 : 0] ex_instr;
output wire ex_illegal_instr;
output wire [2 : 0] ex_wb_sel;

  id_ex_reg inst (
    .clk(clk),
    .rst(rst),
    .id_instr(id_instr),
    .stall(stall),
    .bubble(bubble),
    .id_valid(id_valid),
    .id_pc(id_pc),
    .id_pc_plus4(id_pc_plus4),
    .id_pred_next_pc(id_pred_next_pc),
    .id_rs1_data(id_rs1_data),
    .id_rs2_data(id_rs2_data),
    .id_imm(id_imm),
    .id_imm_u(id_imm_u),
    .id_rs1(id_rs1),
    .id_rs2(id_rs2),
    .id_rd(id_rd),
    .id_alu_op(id_alu_op),
    .id_op_a_sel(id_op_a_sel),
    .id_op_b_sel(id_op_b_sel),
    .id_branch_en(id_branch_en),
    .id_branch_funct3(id_branch_funct3),
    .id_jal(id_jal),
    .id_jalr(id_jalr),
    .id_mem_re(id_mem_re),
    .id_mem_we(id_mem_we),
    .id_mem_size(id_mem_size),
    .id_mem_unsigned(id_mem_unsigned),
    .id_rd_we(id_rd_we),
    .id_wb_sel(id_wb_sel),
    .id_illegal_instr(id_illegal_instr),
    .ex_valid(ex_valid),
    .ex_pc(ex_pc),
    .ex_pc_plus4(ex_pc_plus4),
    .ex_pred_next_pc(ex_pred_next_pc),
    .ex_rs1_data(ex_rs1_data),
    .ex_rs2_data(ex_rs2_data),
    .ex_imm(ex_imm),
    .ex_imm_u(ex_imm_u),
    .ex_rs1(ex_rs1),
    .ex_rs2(ex_rs2),
    .ex_rd(ex_rd),
    .ex_alu_op(ex_alu_op),
    .ex_op_a_sel(ex_op_a_sel),
    .ex_op_b_sel(ex_op_b_sel),
    .ex_branch_en(ex_branch_en),
    .ex_branch_funct3(ex_branch_funct3),
    .ex_jal(ex_jal),
    .ex_jalr(ex_jalr),
    .ex_mem_re(ex_mem_re),
    .ex_mem_we(ex_mem_we),
    .ex_mem_size(ex_mem_size),
    .ex_mem_unsigned(ex_mem_unsigned),
    .ex_rd_we(ex_rd_we),
    .ex_instr(ex_instr),
    .ex_illegal_instr(ex_illegal_instr),
    .ex_wb_sel(ex_wb_sel)
  );
endmodule
