`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 01:23:30 AM
// Design Name: 
// Module Name: pc_unit
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
module pc_unit #(
    parameter [31:0] RESET_PC = 32'h0000_0000
)(
    input  wire        rst,
    input  wire        clk,

    // Enable / stall: 1=actualiza PC, 0=mantiene PC (para stalls)
    input  wire        pc_en,

    // Redirección de PC (branch/jump/jal/jalr/exception más adelante)
    input  wire        pc_redirect_valid,
    input  wire [31:0] pc_redirect_target,

    output reg  [31:0] pc,
    output wire [31:0] pc_plus4
);

    assign pc_plus4 = pc + 32'd4;

    wire [31:0] pc_next = pc_redirect_valid ? pc_redirect_target : pc_plus4;

    always @(posedge clk) begin
        if (rst)
            pc <= RESET_PC;
        else if (pc_en)
            pc <= pc_next;
    end

endmodule