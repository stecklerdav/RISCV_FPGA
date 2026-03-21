`timescale 1ns / 1ps

`include "rv32i_pkg.svh"

module rv32i_operand_b_mux (
    input  logic [31:0]       rs2_data,
    input  logic [31:0]       imm,
    input  rv32i_op_b_sel_t   op_b_sel,
    output logic [31:0]       operand_b
);

    always_comb begin
        unique case (op_b_sel)
            RV32I_OP_B_RS2:  operand_b = rs2_data;
            RV32I_OP_B_IMM:  operand_b = imm;
            RV32I_OP_B_FOUR: operand_b = 32'd4;
            default:         operand_b = rs2_data;
        endcase
    end

endmodule
