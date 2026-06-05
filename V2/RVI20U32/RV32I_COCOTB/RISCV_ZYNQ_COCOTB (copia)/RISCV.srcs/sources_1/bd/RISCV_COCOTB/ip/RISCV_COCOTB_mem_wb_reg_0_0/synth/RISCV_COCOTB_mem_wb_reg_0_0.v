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


// IP VLNV: xilinx.com:module_ref:mem_wb_reg:1.0
// IP Revision: 1

(* X_CORE_INFO = "mem_wb_reg,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "RISCV_COCOTB_mem_wb_reg_0_0,mem_wb_reg,{}" *)
(* CORE_GENERATION_INFO = "RISCV_COCOTB_mem_wb_reg_0_0,mem_wb_reg,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mem_wb_reg,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module RISCV_COCOTB_mem_wb_reg_0_0 (
  clk,
  rst,
  stall,
  flush,
  mem_valid,
  mem_data,
  mem_alu_result,
  mem_pc_plus4,
  mem_imm_u,
  mem_rd,
  mem_rd_we,
  mem_wb_sel,
  mem_csr_rd_we,
  mem_csr_rd_addr,
  mem_csr_rd_data,
  wb_valid,
  wb_data,
  wb_alu_result,
  wb_pc_plus4,
  wb_imm_u,
  wb_rd,
  wb_rd_we,
  wb_sel,
  wb_csr_rd_we,
  wb_csr_rd_addr,
  wb_csr_rd_data
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 190474289, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN BASIC_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire stall;
input wire flush;
input wire mem_valid;
input wire [31 : 0] mem_data;
input wire [31 : 0] mem_alu_result;
input wire [31 : 0] mem_pc_plus4;
input wire [31 : 0] mem_imm_u;
input wire [4 : 0] mem_rd;
input wire mem_rd_we;
input wire [2 : 0] mem_wb_sel;
input wire mem_csr_rd_we;
input wire [4 : 0] mem_csr_rd_addr;
input wire [31 : 0] mem_csr_rd_data;
output wire wb_valid;
output wire [31 : 0] wb_data;
output wire [31 : 0] wb_alu_result;
output wire [31 : 0] wb_pc_plus4;
output wire [31 : 0] wb_imm_u;
output wire [4 : 0] wb_rd;
output wire wb_rd_we;
output wire [2 : 0] wb_sel;
output wire wb_csr_rd_we;
output wire [4 : 0] wb_csr_rd_addr;
output wire [31 : 0] wb_csr_rd_data;

  mem_wb_reg inst (
    .clk(clk),
    .rst(rst),
    .stall(stall),
    .flush(flush),
    .mem_valid(mem_valid),
    .mem_data(mem_data),
    .mem_alu_result(mem_alu_result),
    .mem_pc_plus4(mem_pc_plus4),
    .mem_imm_u(mem_imm_u),
    .mem_rd(mem_rd),
    .mem_rd_we(mem_rd_we),
    .mem_wb_sel(mem_wb_sel),
    .mem_csr_rd_we(mem_csr_rd_we),
    .mem_csr_rd_addr(mem_csr_rd_addr),
    .mem_csr_rd_data(mem_csr_rd_data),
    .wb_valid(wb_valid),
    .wb_data(wb_data),
    .wb_alu_result(wb_alu_result),
    .wb_pc_plus4(wb_pc_plus4),
    .wb_imm_u(wb_imm_u),
    .wb_rd(wb_rd),
    .wb_rd_we(wb_rd_we),
    .wb_sel(wb_sel),
    .wb_csr_rd_we(wb_csr_rd_we),
    .wb_csr_rd_addr(wb_csr_rd_addr),
    .wb_csr_rd_data(wb_csr_rd_data)
  );
endmodule
