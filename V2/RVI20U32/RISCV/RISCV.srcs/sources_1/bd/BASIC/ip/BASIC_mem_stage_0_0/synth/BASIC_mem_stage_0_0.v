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


// IP VLNV: xilinx.com:module_ref:mem_stage:1.0
// IP Revision: 1

(* X_CORE_INFO = "mem_stage,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "BASIC_mem_stage_0_0,mem_stage,{}" *)
(* CORE_GENERATION_INFO = "BASIC_mem_stage_0_0,mem_stage,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mem_stage,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module BASIC_mem_stage_0_0 (
  clk,
  rst,
  stall,
  kill,
  mem_in_valid,
  mem_in_alu_result,
  mem_in_store_data,
  mem_in_pc_plus4,
  mem_in_imm_u,
  mem_in_rd,
  mem_in_mem_re,
  mem_in_mem_we,
  mem_in_mem_size,
  mem_in_mem_unsigned,
  mem_in_rd_we,
  mem_in_wb_sel,
  dmem_addr,
  dmem_valid,
  dmem_we,
  dmem_re,
  dmem_be,
  dmem_wdata,
  dmem_rdata,
  dmem_ready,
  mem_stall_req,
  mem_out_valid,
  mem_out_data,
  mem_out_alu_result,
  mem_out_pc_plus4,
  mem_out_imm_u,
  mem_out_rd,
  mem_out_mem_size,
  mem_out_mem_unsigned,
  mem_out_rd_we,
  mem_out_wb_sel,
  mem_forward_data
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 199998001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN BASIC_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire stall;
input wire kill;
input wire mem_in_valid;
input wire [31 : 0] mem_in_alu_result;
input wire [31 : 0] mem_in_store_data;
input wire [31 : 0] mem_in_pc_plus4;
input wire [31 : 0] mem_in_imm_u;
input wire [4 : 0] mem_in_rd;
input wire mem_in_mem_re;
input wire mem_in_mem_we;
input wire [1 : 0] mem_in_mem_size;
input wire mem_in_mem_unsigned;
input wire mem_in_rd_we;
input wire [1 : 0] mem_in_wb_sel;
output wire [31 : 0] dmem_addr;
output wire dmem_valid;
output wire dmem_we;
output wire dmem_re;
output wire [3 : 0] dmem_be;
output wire [31 : 0] dmem_wdata;
input wire [31 : 0] dmem_rdata;
input wire dmem_ready;
output wire mem_stall_req;
output wire mem_out_valid;
output wire [31 : 0] mem_out_data;
output wire [31 : 0] mem_out_alu_result;
output wire [31 : 0] mem_out_pc_plus4;
output wire [31 : 0] mem_out_imm_u;
output wire [4 : 0] mem_out_rd;
output wire [1 : 0] mem_out_mem_size;
output wire mem_out_mem_unsigned;
output wire mem_out_rd_we;
output wire [1 : 0] mem_out_wb_sel;
output wire [31 : 0] mem_forward_data;

  mem_stage inst (
    .clk(clk),
    .rst(rst),
    .stall(stall),
    .kill(kill),
    .mem_in_valid(mem_in_valid),
    .mem_in_alu_result(mem_in_alu_result),
    .mem_in_store_data(mem_in_store_data),
    .mem_in_pc_plus4(mem_in_pc_plus4),
    .mem_in_imm_u(mem_in_imm_u),
    .mem_in_rd(mem_in_rd),
    .mem_in_mem_re(mem_in_mem_re),
    .mem_in_mem_we(mem_in_mem_we),
    .mem_in_mem_size(mem_in_mem_size),
    .mem_in_mem_unsigned(mem_in_mem_unsigned),
    .mem_in_rd_we(mem_in_rd_we),
    .mem_in_wb_sel(mem_in_wb_sel),
    .dmem_addr(dmem_addr),
    .dmem_valid(dmem_valid),
    .dmem_we(dmem_we),
    .dmem_re(dmem_re),
    .dmem_be(dmem_be),
    .dmem_wdata(dmem_wdata),
    .dmem_rdata(dmem_rdata),
    .dmem_ready(dmem_ready),
    .mem_stall_req(mem_stall_req),
    .mem_out_valid(mem_out_valid),
    .mem_out_data(mem_out_data),
    .mem_out_alu_result(mem_out_alu_result),
    .mem_out_pc_plus4(mem_out_pc_plus4),
    .mem_out_imm_u(mem_out_imm_u),
    .mem_out_rd(mem_out_rd),
    .mem_out_mem_size(mem_out_mem_size),
    .mem_out_mem_unsigned(mem_out_mem_unsigned),
    .mem_out_rd_we(mem_out_rd_we),
    .mem_out_wb_sel(mem_out_wb_sel),
    .mem_forward_data(mem_forward_data)
  );
endmodule
