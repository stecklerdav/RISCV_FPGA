`timescale 1ns/1ps
import rv32i_ram_datav_types_pkg::*;
module rv32i_ram_datav #(
    parameter int ADDR_WIDTH = 10,
    parameter int WORDS      = (1 << ADDR_WIDTH)
)(
    input  logic        clk,
    input  logic        we,
    input  logic [3:0]  be,      // byte enable
    input  logic [31:0] addr,    // byte address (local offset)
    input  logic [31:0] wdata,
    output logic [31:0] rdata
);

    // Word index = byte_addr[ADDR_WIDTH+1:2]
    logic [ADDR_WIDTH-1:0] wa;

    // 4 byte lanes
    (* ram_style = "block" *) logic [7:0] mem0 [0:WORDS-1];
    (* ram_style = "block" *) logic [7:0] mem1 [0:WORDS-1];
    (* ram_style = "block" *) logic [7:0] mem2 [0:WORDS-1];
    (* ram_style = "block" *) logic [7:0] mem3 [0:WORDS-1];

    assign wa = addr[ADDR_WIDTH+1:2];

    always_ff @(posedge clk) begin
        // synchronous read
        rdata <= {mem3[wa], mem2[wa], mem1[wa], mem0[wa]};

        // synchronous write with byte enables
        if (we) begin
            if (be[0]) mem0[wa] <= wdata[7:0];
            if (be[1]) mem1[wa] <= wdata[15:8];
            if (be[2]) mem2[wa] <= wdata[23:16];
            if (be[3]) mem3[wa] <= wdata[31:24];
        end
    end

endmodule
