`timescale 1ns/1ps

module constant_one #(
    parameter WIDTH = 1
)(
    output wire [WIDTH-1:0] dout
);

assign dout = {WIDTH{1'b1}};

endmodule