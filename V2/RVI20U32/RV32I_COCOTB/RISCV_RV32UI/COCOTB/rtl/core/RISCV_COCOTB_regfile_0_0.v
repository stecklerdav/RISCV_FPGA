// IP VLNV: xilinx.com:module_ref:regfile:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module RISCV_COCOTB_regfile_0_0 (
  clk,
  rs1_addr,
  rs2_addr,
  rs1_rdata,
  rs2_rdata,
  rd_we,
  rd_addr,
  rd_wdata,
  debug_x4,
  debug_x5
);

input wire clk;
input wire [4 : 0] rs1_addr;
input wire [4 : 0] rs2_addr;
output wire [31 : 0] rs1_rdata;
output wire [31 : 0] rs2_rdata;
input wire rd_we;
input wire [4 : 0] rd_addr;
input wire [31 : 0] rd_wdata;
output wire [31 : 0] debug_x4;
output wire [31 : 0] debug_x5;

regfile inst (
  .clk(clk),
  .rs1_addr(rs1_addr),
  .rs2_addr(rs2_addr),
  .rs1_rdata(rs1_rdata),
  .rs2_rdata(rs2_rdata),
  .rd_we(rd_we),
  .rd_addr(rd_addr),
  .rd_wdata(rd_wdata),
  .debug_x4(debug_x4),
  .debug_x5(debug_x5)
);

endmodule
