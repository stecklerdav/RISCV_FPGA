`timescale 1ns/1ps

module ram_data #(
    parameter ADDR_WIDTH = 10,
    parameter WORDS      = (1 << ADDR_WIDTH)
)(
    input  wire        clk,
    input  wire        rst,

    input  wire        valid,
    input  wire        we,
    input  wire [3:0]  be,
    input  wire [31:0] addr,
    input  wire [31:0] wdata,

    output reg  [31:0] rdata,
    output reg         ready
);

    wire [ADDR_WIDTH-1:0] wa;
    assign wa = addr[ADDR_WIDTH+1:2];

    (* ram_style = "block" *) reg [7:0] mem0 [0:WORDS-1];
    (* ram_style = "block" *) reg [7:0] mem1 [0:WORDS-1];
    (* ram_style = "block" *) reg [7:0] mem2 [0:WORDS-1];
    (* ram_style = "block" *) reg [7:0] mem3 [0:WORDS-1];

    integer i;

    initial begin
        for (i = 0; i < WORDS; i = i + 1) begin
            mem0[i] = 8'h00;
            mem1[i] = 8'h00;
            mem2[i] = 8'h00;
            mem3[i] = 8'h00;
        end
    end

    reg [31:0] mem_read;

    always @(*) begin
        mem_read = {mem3[wa], mem2[wa], mem1[wa], mem0[wa]};
    end

    always @(posedge clk) begin
        if (rst) begin
            rdata <= 32'h0000_0000;
            ready <= 1'b0;
        end else begin
            ready <= 1'b0;

            if (valid) begin
                ready <= 1'b1;

                if (we) begin
                    if (be[0]) mem0[wa] <= wdata[7:0];
                    if (be[1]) mem1[wa] <= wdata[15:8];
                    if (be[2]) mem2[wa] <= wdata[23:16];
                    if (be[3]) mem3[wa] <= wdata[31:24];

                    rdata <= {
                        be[3] ? wdata[31:24] : mem_read[31:24],
                        be[2] ? wdata[23:16] : mem_read[23:16],
                        be[1] ? wdata[15:8]  : mem_read[15:8],
                        be[0] ? wdata[7:0]   : mem_read[7:0]
                    };

                end else begin
                    rdata <= mem_read;
                end
            end
        end
    end

endmodule