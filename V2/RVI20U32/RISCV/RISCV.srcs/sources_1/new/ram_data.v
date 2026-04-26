`timescale 1ns/1ps

module ram_data #(
    parameter ADDR_WIDTH = 10,
    parameter WORDS      = (1 << ADDR_WIDTH)
)(
    input  wire        clk,
    input  wire        we,
    input  wire [3:0]  be,      // byte enable
    input  wire [31:0] addr,    // byte address
    input  wire [31:0] wdata,
    output reg  [31:0] rdata
);

    // Word index = byte_addr[ADDR_WIDTH+1:2]
    wire [ADDR_WIDTH-1:0] wa;
    assign wa = addr[ADDR_WIDTH+1:2];

    // 4 byte lanes
    (* ram_style = "block" *) reg [7:0] mem0 [0:WORDS-1];
    (* ram_style = "block" *) reg [7:0] mem1 [0:WORDS-1];
    (* ram_style = "block" *) reg [7:0] mem2 [0:WORDS-1];
    (* ram_style = "block" *) reg [7:0] mem3 [0:WORDS-1];

    integer i;

    // 🔹 Inicialización a 0
    initial begin
        for (i = 0; i < WORDS; i = i + 1) begin
            mem0[i] = 8'h00;
            mem1[i] = 8'h00;
            mem2[i] = 8'h00;
            mem3[i] = 8'h00;
        end
    end

    always @(posedge clk) begin
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