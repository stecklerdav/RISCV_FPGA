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


// IP VLNV: xilinx.com:module_ref:csr_access_unit:1.0
// IP Revision: 1

(* X_CORE_INFO = "csr_access_unit,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "RISCV_COCOTB_csr_access_unit_0_0,csr_access_unit,{}" *)
(* CORE_GENERATION_INFO = "RISCV_COCOTB_csr_access_unit_0_0,csr_access_unit,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=csr_access_unit,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module RISCV_COCOTB_csr_access_unit_0_0 (
  ex_valid,
  is_csrrw,
  is_csrrs,
  is_csrrc,
  csr_rs1,
  csr_rd,
  rs1_data,
  csr_rdata,
  csr_we,
  csr_wdata,
  csr_rd_we,
  csr_rd_addr,
  csr_rd_data
);

input wire ex_valid;
input wire is_csrrw;
input wire is_csrrs;
input wire is_csrrc;
input wire [4 : 0] csr_rs1;
input wire [4 : 0] csr_rd;
input wire [31 : 0] rs1_data;
input wire [31 : 0] csr_rdata;
output wire csr_we;
output wire [31 : 0] csr_wdata;
output wire csr_rd_we;
output wire [4 : 0] csr_rd_addr;
output wire [31 : 0] csr_rd_data;

  csr_access_unit inst (
    .ex_valid(ex_valid),
    .is_csrrw(is_csrrw),
    .is_csrrs(is_csrrs),
    .is_csrrc(is_csrrc),
    .csr_rs1(csr_rs1),
    .csr_rd(csr_rd),
    .rs1_data(rs1_data),
    .csr_rdata(csr_rdata),
    .csr_we(csr_we),
    .csr_wdata(csr_wdata),
    .csr_rd_we(csr_rd_we),
    .csr_rd_addr(csr_rd_addr),
    .csr_rd_data(csr_rd_data)
  );
endmodule
