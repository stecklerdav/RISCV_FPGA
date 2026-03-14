`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2026 09:20:08 PM
// Design Name: 
// Module Name: rv32i_addr_imm_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module rv32i_addr_imm_mux(
  input  wire mem_re,
  input  wire mem_we,
  input  wire [31:0] imm_i,
  input  wire [31:0] imm_s,
  output wire [31:0] imm_addr
);
  assign imm_addr = mem_we ? imm_s : imm_i; // store gana
endmodule
