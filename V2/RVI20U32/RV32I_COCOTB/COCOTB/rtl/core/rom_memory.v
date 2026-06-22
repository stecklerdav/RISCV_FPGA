`timescale 1ns/1ps

module rom_memory #(
    parameter ADDR_WIDTH = 11,              // 2048 palabras
    parameter DATA_WIDTH = 32,
    parameter INIT_FILE = "/media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/rv32i_vscode/prog.mem"
)(
    input  wire                     clk,
    input  wire                     en,
    input  wire [ADDR_WIDTH-1:0]    addr,
    output reg  [DATA_WIDTH-1:0]    dout
);

    localparam DEPTH = (1 << ADDR_WIDTH);

    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

    initial begin
        if (INIT_FILE != "") begin
            $readmemh(INIT_FILE, mem);
        end
    end

    always @(posedge clk) begin
        if (en) begin
            dout <= mem[addr];
        end
    end

endmodule
