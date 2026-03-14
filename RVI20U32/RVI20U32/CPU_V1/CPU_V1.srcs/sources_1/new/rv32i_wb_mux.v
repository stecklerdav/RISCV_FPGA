`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2026 09:30:28 PM
// Design Name: 
// Module Name: rv32i_wb_mux
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
module rv32i_wb_mux(
  input  wire [1:0]  wb_sel,
  input  wire [31:0] alu_y,
  input  wire [31:0] load_data,
  input  wire [31:0] pc_plus4,
  input  wire [31:0] imm_u,
  output reg  [31:0] rd_wdata
);
  localparam WB_ALU=2'd0, WB_MEM=2'd1, WB_PC4=2'd2, WB_IMM=2'd3;
  always @(*) begin
    case (wb_sel)
      WB_ALU: rd_wdata = alu_y;
      WB_MEM: rd_wdata = load_data;
      WB_PC4: rd_wdata = pc_plus4;
      WB_IMM: rd_wdata = imm_u;
      default: rd_wdata = alu_y;
    endcase
  end
endmodule
