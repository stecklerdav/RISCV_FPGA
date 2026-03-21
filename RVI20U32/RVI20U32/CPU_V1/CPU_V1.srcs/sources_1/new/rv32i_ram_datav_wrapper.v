`timescale 1ns/1ps

module rv32i_ram_datav_wrapper #(
    parameter integer ADDR_WIDTH = 10,
    parameter integer WORDS      = (1 << ADDR_WIDTH)
)(
    input  wire        clk,
    input  wire        we,
    input  wire [3:0]  be,
    input  wire [31:0] addr,
    input  wire [31:0] wdata,
    output wire [31:0] rdata
);

    rv32i_ram_datav #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .WORDS     (WORDS)
    ) u_rv32i_ram_datav (
        .clk   (clk),
        .we    (we),
        .be    (be),
        .addr  (addr),
        .wdata (wdata),
        .rdata (rdata)
    );

endmodule
