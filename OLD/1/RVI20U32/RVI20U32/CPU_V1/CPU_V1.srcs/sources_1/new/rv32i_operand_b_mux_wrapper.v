`timescale 1ns / 1ps

module rv32i_operand_b_mux_wrapper (
    input  wire [31:0] rs2_data,
    input  wire [31:0] imm,
    input  wire [1:0]  op_b_sel,
    output wire [31:0] operand_b
);

    rv32i_operand_b_mux u_rv32i_operand_b_mux (
        .rs2_data (rs2_data),
        .imm      (imm),
        .op_b_sel (op_b_sel),
        .operand_b(operand_b)
    );

endmodule
