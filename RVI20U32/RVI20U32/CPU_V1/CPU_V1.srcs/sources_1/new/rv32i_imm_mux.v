`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2026 12:36:44 AM
// Design Name: 
// Module Name: rv32i_imm_mux
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

module rv32i_imm_mux (
    input  wire [2:0]  imm_sel,
    input  wire [31:0] imm_i,
    input  wire [31:0] imm_s,
    input  wire [31:0] imm_b,
    input  wire [31:0] imm_u,
    input  wire [31:0] imm_j,
    output reg  [31:0] imm_out
);
    always @(*) begin
        case (imm_sel)
            3'd0: imm_out = imm_i;
            3'd1: imm_out = imm_s;
            3'd2: imm_out = imm_b;
            3'd3: imm_out = imm_u;
            3'd4: imm_out = imm_j;
            default: imm_out = imm_i;
        endcase
    end
endmodule
