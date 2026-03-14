`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2026 09:19:20 PM
// Design Name: 
// Module Name: pc_to_rom_addr
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
module pc_to_rom_addr #(
    parameter integer ADDR_W = 13  // 256 words
)(
    input  wire [31:0] pc,
    output wire [ADDR_W-1:0] a
);
    // toma bits [ADDR_W+1 : 2]
    assign a = pc[ADDR_W+1 : 2];
endmodule
