`timescale 1ns / 1ps

module rom_memory #(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 11,
    parameter DEPTH      = 2048,
    parameter MEM_FILE   = "programs/prog_asm.mem"
)(
    input  wire                  clk,
    input  wire                  en,
    input  wire [ADDR_WIDTH-1:0] addr,
    output reg  [DATA_WIDTH-1:0] instr
);

    integer i;

    reg [DATA_WIDTH-1:0] rom [0:DEPTH-1];

    initial begin
        instr = 32'h00000013; // NOP

        for (i = 0; i < DEPTH; i = i + 1) begin
            rom[i] = 32'h00000013; // NOP
        end

        $display("[ROM] Loading MEM_FILE = %s", MEM_FILE);
        $readmemh(MEM_FILE, rom);
        $display("[ROM] ROM[0] = %h", rom[0]);
        $display("[ROM] ROM[1] = %h", rom[1]);
        $display("[ROM] ROM[2] = %h", rom[2]);
        $display("[ROM] ROM[3] = %h", rom[3]);
    end

    always @(posedge clk) begin
        if (en) begin
            instr <= rom[addr];
        end
    end

endmodule
