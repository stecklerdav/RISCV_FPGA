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
    output reg  [DATA_WIDTH-1:0] dout
);

    reg [DATA_WIDTH-1:0] rom [0:DEPTH-1];

   initial begin
    $display("[ROM] Loading MEM_FILE = %s", MEM_FILE);
    $readmemh(MEM_FILE, rom);
    $display("[ROM] rom[0] = %08h", rom[0]);
    $display("[ROM] rom[1] = %08h", rom[1]);
    $display("[ROM] rom[2] = %08h", rom[2]);
end
    always @(posedge clk) begin
        if (en) begin
            dout <= rom[addr];
        end
    end

endmodule
