`timescale 1ns/1ps

module constant_zero #(
    parameter WIDTH = 1
)(
    output wire [WIDTH-1:0] dout
);

assign dout = {WIDTH{1'b0}};

endmodule