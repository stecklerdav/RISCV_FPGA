`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2025 22:44:20
// Design Name: 
// Module Name: pc_jump_offset
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


module pc_jump_offset(
    input  wire [15:0] pc,
    input  wire [7:0]  jump_offset,
    output wire [15:0] pc_target
);

    assign pc_target = pc + {{8{1'b0}}, jump_offset}; // esto es porque los saltos son hasta 8bits pero el pc 
                                                      //llega hasta 16 bits se completa con ceros a la izquierda
    
endmodule
