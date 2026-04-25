`timescale 1ns / 1ps

module rv32i_operand_a_mux_wrapper (
    input  wire [31:0] rs1_data,
    input  wire [31:0] pc,
    input  wire [1:0]  op_a_sel,
    output wire [31:0] operand_a
);

    rv32i_operand_a_mux u_rv32i_operand_a_mux (
        .rs1_data  (rs1_data),
        .pc        (pc),
        .op_a_sel  (op_a_sel),
        .operand_a (operand_a)
    );

endmodule
