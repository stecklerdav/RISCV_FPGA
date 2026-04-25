`timescale 1ns / 1ps

import rv32i_pkg::*;

module rv32i_operand_a_mux (
    input  logic [31:0] rs1_data,
    input  logic [31:0] pc,
    input  logic [1:0]  op_a_sel,
    output logic [31:0] operand_a
);

    rv32i_op_a_sel_t op_a_sel_e;

    assign op_a_sel_e = rv32i_op_a_sel_t'(op_a_sel);

    always_comb begin
        unique case (op_a_sel_e)
            RV32I_OP_A_RS1:  operand_a = rs1_data;
            RV32I_OP_A_PC:   operand_a = pc;
            RV32I_OP_A_ZERO: operand_a = 32'd0;
            default:         operand_a = rs1_data;
        endcase
    end

endmodule