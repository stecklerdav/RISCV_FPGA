`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2026 08:36:24 PM
// Design Name: 
// Module Name: eerom
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

module eerom #(
    parameter MEM_FILE = "program_sim_saltos.mem"
)(
    input  wire [31:0] pc,       // PC en bytes
    output wire [31:0] instr      // instrucción RV32I (32-bit)
);

    localparam ADDR_WIDTH = 8;
    localparam DEPTH      = 1 << ADDR_WIDTH;

    // PC byte-addressed -> word index (>>2)
    wire [ADDR_WIDTH-1:0] addr = pc[ADDR_WIDTH+1:2];  // pc[9:2] para 256 instr

    // Forzar ROM distribuida (LUT) para lectura asíncrona en FPGA
    (* rom_style = "distributed" *)
    reg [31:0] mem [0:DEPTH-1];

    integer i;
    initial begin
        for (i = 0; i < DEPTH; i = i + 1)
            mem[i] = 32'h0000_0013; // NOP RV32I (ADDI x0,x0,0)

        $readmemh(MEM_FILE, mem);
    end

    // Lectura asíncrona / combinacional
    assign instr = mem[addr];

endmodule
