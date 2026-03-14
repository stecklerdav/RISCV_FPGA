`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2026 11:24:49 PM
// Design Name: 
// Module Name: rv32i_regfile
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

`timescale 1ns / 1ps

module rv32i_regfile (
    input  wire        clk,

    // Lecturas
    input  wire [4:0]  rs1_addr,
    input  wire [4:0]  rs2_addr,
    output wire [31:0] rs1_rdata,
    output wire [31:0] rs2_rdata,

    // Escritura
    input  wire [4:0]  rd_addr,
    input  wire [31:0] rd_wdata,
    input  wire        rd_we
);

    reg [31:0] regs [0:31];
    integer i;

    // Inicialización (solo simulación)
    initial begin
        for (i = 0; i < 32; i = i + 1)
            regs[i] = 32'b0;
    end

    // Lectura combinacional
    assign rs1_rdata = (rs1_addr == 5'd0) ? 32'b0 : regs[rs1_addr];
    assign rs2_rdata = (rs2_addr == 5'd0) ? 32'b0 : regs[rs2_addr];

    // Escritura síncrona
    always @(posedge clk) begin
        if (rd_we && (rd_addr != 5'd0))
            regs[rd_addr] <= rd_wdata;
    end

endmodule
