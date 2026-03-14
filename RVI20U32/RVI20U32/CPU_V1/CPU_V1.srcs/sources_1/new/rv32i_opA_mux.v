`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2026 12:43:32 AM
// Design Name: 
// Module Name: rv32i_opA_mux
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
module rv32i_opA_mux (
    input  wire [1:0]  opA_sel,
    input  wire [31:0] rs1,
    input  wire [31:0] pc,
    output reg  [31:0] A
);
    always @(*) begin
        case (opA_sel)
            2'd0: A = rs1;
            2'd1: A = pc;
            2'd2: A = 32'b0;
            default: A = rs1;
        endcase
    end
endmodule
