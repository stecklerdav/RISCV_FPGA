`timescale 1ns / 1ps

module xlslice_2bit (
    input  wire [7:0] Din,
    output wire [1:0] Dout
);

    assign Dout = Din[1:0];

endmodule