`timescale 1ns / 1ps

module xlconcat_8 (
    input  wire in0,
    input  wire in1,
    input  wire in2,
    input  wire in3,
    input  wire in4,
    input  wire in5,
    input  wire in6,
    input  wire in7,

    output wire [7:0] dout
);

    assign dout = {
        in7,
        in6,
        in5,
        in4,
        in3,
        in2,
        in1,
        in0
    };

endmodule