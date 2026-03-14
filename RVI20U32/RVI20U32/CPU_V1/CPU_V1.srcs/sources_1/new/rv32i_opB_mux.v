`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2026 12:44:28 AM
// Design Name: 
// Module Name: rv32i_opB_mux
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
module rv32i_opB_mux (
    input  wire        opB_sel_imm,
    input  wire [31:0] rs2,
    input  wire [31:0] imm,
    output wire [31:0] B
);
    assign B = (opB_sel_imm) ? imm : rs2;
endmodule
