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


// IP VLNV: xilinx.com:module_ref:load_use_detection:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module RV32UI_load_use_detection_0_0 (
  id_ex_valid,
  id_ex_mem_re,
  id_ex_rd_we,
  id_ex_rd,
  if_id_valid,
  if_id_rs1,
  if_id_rs2,
  if_id_rs1_used,
  if_id_rs2_used,
  pc_en,
  if_id_hold,
  id_ex_flush
);

input wire id_ex_valid;
input wire id_ex_mem_re;
input wire id_ex_rd_we;
input wire [4 : 0] id_ex_rd;
input wire if_id_valid;
input wire [4 : 0] if_id_rs1;
input wire [4 : 0] if_id_rs2;
input wire if_id_rs1_used;
input wire if_id_rs2_used;
output wire pc_en;
output wire if_id_hold;
output wire id_ex_flush;

  load_use_detection inst (
    .id_ex_valid(id_ex_valid),
    .id_ex_mem_re(id_ex_mem_re),
    .id_ex_rd_we(id_ex_rd_we),
    .id_ex_rd(id_ex_rd),
    .if_id_valid(if_id_valid),
    .if_id_rs1(if_id_rs1),
    .if_id_rs2(if_id_rs2),
    .if_id_rs1_used(if_id_rs1_used),
    .if_id_rs2_used(if_id_rs2_used),
    .pc_en(pc_en),
    .if_id_hold(if_id_hold),
    .id_ex_flush(id_ex_flush)
  );
endmodule
