module util_vector_not #(
    parameter WIDTH = 1
)(
    input  [WIDTH-1:0] Op1,
    output [WIDTH-1:0] Res
);

assign Res = ~Op1;

endmodule