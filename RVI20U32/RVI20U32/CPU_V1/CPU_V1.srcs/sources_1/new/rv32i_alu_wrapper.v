`timescale 1ns / 1ps

module rv32i_alu_wrapper (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [3:0]  alu_op,
    output wire [31:0] y
);

    rv32i_alu u_rv32i_alu (
        .a      (a),
        .b      (b),
        .alu_op (alu_op),
        .y      (y)
    );

endmodule
