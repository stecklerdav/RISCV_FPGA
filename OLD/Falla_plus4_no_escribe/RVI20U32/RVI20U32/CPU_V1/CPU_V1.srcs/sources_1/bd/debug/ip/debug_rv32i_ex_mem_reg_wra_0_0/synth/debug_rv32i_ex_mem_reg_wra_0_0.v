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


// IP VLNV: xilinx.com:module_ref:rv32i_ex_mem_reg_wrapper:1.0
// IP Revision: 1

(* X_CORE_INFO = "rv32i_ex_mem_reg_wrapper,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "debug_rv32i_ex_mem_reg_wra_0_0,rv32i_ex_mem_reg_wrapper,{}" *)
(* CORE_GENERATION_INFO = "debug_rv32i_ex_mem_reg_wra_0_0,rv32i_ex_mem_reg_wrapper,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=rv32i_ex_mem_reg_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module debug_rv32i_ex_mem_reg_wra_0_0 (
  clk,
  rst,
  stall,
  flush,
  ex_valid,
  ex_pc,
  ex_alu_result,
  ex_store_data,
  ex_pc_plus4,
  ex_imm_u,
  ex_rd,
  ex_mem_re,
  ex_mem_we,
  ex_mem_size,
  ex_mem_unsigned,
  ex_rd_we,
  ex_wb_sel,
  ex_exception_valid,
  ex_exception_cause,
  ex_exception_tval,
  mem_valid,
  mem_pc,
  mem_alu_result,
  mem_store_data,
  mem_pc_plus4,
  mem_imm_u,
  mem_rd,
  mem_mem_re,
  mem_mem_we,
  mem_mem_size,
  mem_mem_unsigned,
  mem_rd_we,
  mem_wb_sel,
  mem_exception_valid,
  mem_exception_cause,
  mem_exception_tval
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 9999900, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN debug_zynq_ultra_ps_e_1_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire stall;
input wire flush;
input wire ex_valid;
input wire [31 : 0] ex_pc;
input wire [31 : 0] ex_alu_result;
input wire [31 : 0] ex_store_data;
input wire [31 : 0] ex_pc_plus4;
input wire [31 : 0] ex_imm_u;
input wire [4 : 0] ex_rd;
input wire ex_mem_re;
input wire ex_mem_we;
input wire [1 : 0] ex_mem_size;
input wire ex_mem_unsigned;
input wire ex_rd_we;
input wire [1 : 0] ex_wb_sel;
input wire ex_exception_valid;
input wire [3 : 0] ex_exception_cause;
input wire [31 : 0] ex_exception_tval;
output wire mem_valid;
output wire [31 : 0] mem_pc;
output wire [31 : 0] mem_alu_result;
output wire [31 : 0] mem_store_data;
output wire [31 : 0] mem_pc_plus4;
output wire [31 : 0] mem_imm_u;
output wire [4 : 0] mem_rd;
output wire mem_mem_re;
output wire mem_mem_we;
output wire [1 : 0] mem_mem_size;
output wire mem_mem_unsigned;
output wire mem_rd_we;
output wire [1 : 0] mem_wb_sel;
output wire mem_exception_valid;
output wire [3 : 0] mem_exception_cause;
output wire [31 : 0] mem_exception_tval;

  rv32i_ex_mem_reg_wrapper inst (
    .clk(clk),
    .rst(rst),
    .stall(stall),
    .flush(flush),
    .ex_valid(ex_valid),
    .ex_pc(ex_pc),
    .ex_alu_result(ex_alu_result),
    .ex_store_data(ex_store_data),
    .ex_pc_plus4(ex_pc_plus4),
    .ex_imm_u(ex_imm_u),
    .ex_rd(ex_rd),
    .ex_mem_re(ex_mem_re),
    .ex_mem_we(ex_mem_we),
    .ex_mem_size(ex_mem_size),
    .ex_mem_unsigned(ex_mem_unsigned),
    .ex_rd_we(ex_rd_we),
    .ex_wb_sel(ex_wb_sel),
    .ex_exception_valid(ex_exception_valid),
    .ex_exception_cause(ex_exception_cause),
    .ex_exception_tval(ex_exception_tval),
    .mem_valid(mem_valid),
    .mem_pc(mem_pc),
    .mem_alu_result(mem_alu_result),
    .mem_store_data(mem_store_data),
    .mem_pc_plus4(mem_pc_plus4),
    .mem_imm_u(mem_imm_u),
    .mem_rd(mem_rd),
    .mem_mem_re(mem_mem_re),
    .mem_mem_we(mem_mem_we),
    .mem_mem_size(mem_mem_size),
    .mem_mem_unsigned(mem_mem_unsigned),
    .mem_rd_we(mem_rd_we),
    .mem_wb_sel(mem_wb_sel),
    .mem_exception_valid(mem_exception_valid),
    .mem_exception_cause(mem_exception_cause),
    .mem_exception_tval(mem_exception_tval)
  );
endmodule
