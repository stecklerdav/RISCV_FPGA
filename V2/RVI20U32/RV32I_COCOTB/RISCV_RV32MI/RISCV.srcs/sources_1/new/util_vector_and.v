module util_vector_and #(
    parameter WIDTH = 1
)(
    input  [WIDTH-1:0] Op1,
    input  [WIDTH-1:0] Op2,
    output [WIDTH-1:0] Res
);

assign Res = Op1 & Op2;

endmodule