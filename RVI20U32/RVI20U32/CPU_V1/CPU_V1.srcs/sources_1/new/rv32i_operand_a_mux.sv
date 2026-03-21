`timescale 1ns / 1ps

`include "rv32i_pkg.svh"

module rv32i_operand_a_mux (
    input  logic [31:0]       rs1_data,
    input  logic [31:0]       pc,
    input  rv32i_op_a_sel_t   op_a_sel,
    output logic [31:0]       operand_a
);

    always_comb begin
        unique case (op_a_sel)
            RV32I_OP_A_RS1:  operand_a = rs1_data;
            RV32I_OP_A_PC:   operand_a = pc;
            RV32I_OP_A_ZERO: operand_a = 32'd0;
            default:         operand_a = rs1_data;
        endcase
    end

endmodule
