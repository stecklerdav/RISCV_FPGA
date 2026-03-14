`timescale 1ns/1ps
module rv32i_ram_datav #(
    parameter integer ADDR_WIDTH = 10,          // 2^10 words = 1024 words = 4KB
    parameter integer WORDS      = (1<<ADDR_WIDTH)
)(
    input  wire        clk,
    input  wire        we,
    input  wire [3:0]  be,          // byte enable
    input  wire [31:0] addr,        // byte address (offset local)
    input  wire [31:0] wdata,
    output wire [31:0] rdata
);

    // Word index = byte_addr[ADDR_WIDTH+1:2]
    wire [ADDR_WIDTH-1:0] wa = addr[ADDR_WIDTH+1:2];

    // 4 byte lanes
    (* ram_style = "block" *) reg [7:0] mem0 [0:WORDS-1];
    (* ram_style = "block" *) reg [7:0] mem1 [0:WORDS-1];
    (* ram_style = "block" *) reg [7:0] mem2 [0:WORDS-1];
    (* ram_style = "block" *) reg [7:0] mem3 [0:WORDS-1];

    // Combinational read
    assign rdata = { mem3[wa], mem2[wa], mem1[wa], mem0[wa] };

    // Synchronous write with byte enables
    always @(posedge clk) begin
        if (we) begin
            if (be[0]) mem0[wa] <= wdata[7:0];
            if (be[1]) mem1[wa] <= wdata[15:8];
            if (be[2]) mem2[wa] <= wdata[23:16];
            if (be[3]) mem3[wa] <= wdata[31:24];
        end
    end

endmodule