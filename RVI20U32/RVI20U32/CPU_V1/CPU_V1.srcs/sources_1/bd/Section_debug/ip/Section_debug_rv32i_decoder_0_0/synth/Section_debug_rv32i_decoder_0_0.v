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


// IP VLNV: xilinx.com:module_ref:rv32i_decoder:1.0
// IP Revision: 1

(* X_CORE_INFO = "rv32i_decoder,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "Section_debug_rv32i_decoder_0_0,rv32i_decoder,{}" *)
(* CORE_GENERATION_INFO = "Section_debug_rv32i_decoder_0_0,rv32i_decoder,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=rv32i_decoder,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Section_debug_rv32i_decoder_0_0 (
  instr,
  rs1,
  rs2,
  rd,
  opcode,
  funct3,
  funct7,
  fmt,
  bit30,
  imm_i,
  imm_s,
  imm_b,
  imm_u,
  imm_j
);

input wire [31 : 0] instr;
output wire [4 : 0] rs1;
output wire [4 : 0] rs2;
output wire [4 : 0] rd;
output wire [6 : 0] opcode;
output wire [2 : 0] funct3;
output wire [6 : 0] funct7;
output wire [2 : 0] fmt;
output wire bit30;
output wire [31 : 0] imm_i;
output wire [31 : 0] imm_s;
output wire [31 : 0] imm_b;
output wire [31 : 0] imm_u;
output wire [31 : 0] imm_j;

  rv32i_decoder inst (
    .instr(instr),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .opcode(opcode),
    .funct3(funct3),
    .funct7(funct7),
    .fmt(fmt),
    .bit30(bit30),
    .imm_i(imm_i),
    .imm_s(imm_s),
    .imm_b(imm_b),
    .imm_u(imm_u),
    .imm_j(imm_j)
  );
endmodule
