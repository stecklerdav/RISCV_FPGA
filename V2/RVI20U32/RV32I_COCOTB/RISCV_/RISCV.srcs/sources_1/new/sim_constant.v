`timescale 1ns/1ps

// ============================================================
// CONSTANTE 0 o 1 seleccionable
// WIDTH configurable
// ============================================================
module sim_constant #(
    parameter WIDTH = 1,
    parameter VALUE = 0
)(
    output [WIDTH-1:0] dout
);

assign dout = {WIDTH{VALUE}};

endmodule