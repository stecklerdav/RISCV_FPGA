`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2026 09:02:24 PM
// Design Name: 
// Module Name: rv32i_lsu
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
module rv32i_lsu (
    input  wire [31:0] addr,
    input  wire [31:0] store_data,
    input  wire [31:0] mem_rdata,

    input  wire [1:0]  size,        // B/H/W
    input  wire        is_unsigned,

    output reg  [3:0]  be,
    output reg  [31:0] load_data
);

    localparam SZ_B = 2'd0,
               SZ_H = 2'd1,
               SZ_W = 2'd2;

    wire [1:0] off = addr[1:0];

    always @(*) begin
        be = 4'b0000;

        case (size)
            SZ_B: be = 4'b0001 << off;
            SZ_H: be = off[1] ? 4'b1100 : 4'b0011;
            SZ_W: be = 4'b1111;
        endcase
    end

    always @(*) begin
        case (size)
            SZ_B: begin
                load_data = mem_rdata >> (off * 8);
                if (!is_unsigned)
                    load_data = {{24{load_data[7]}}, load_data[7:0]};
            end

            SZ_H: begin
                load_data = mem_rdata >> (off[1] * 16);
                if (!is_unsigned)
                    load_data = {{16{load_data[15]}}, load_data[15:0]};
            end

            default: load_data = mem_rdata;
        endcase
    end
endmodule
