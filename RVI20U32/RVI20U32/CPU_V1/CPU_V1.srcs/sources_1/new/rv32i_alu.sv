`timescale 1ns / 1ps

`include "rv32i_alu_types.svh"

module rv32i_alu (
    input  logic [31:0]       a,
    input  logic [31:0]       b,
    input  rv32i_alu_op_t     alu_op,
    output logic [31:0]       y
);

    logic signed [31:0] a_s;
    logic signed [31:0] b_s;

    assign a_s = a;
    assign b_s = b;

    always_comb begin
        unique case (alu_op)
            RV32I_ALU_ADD:    y = a + b;
            RV32I_ALU_SUB:    y = a - b;
            RV32I_ALU_AND:    y = a & b;
            RV32I_ALU_OR:     y = a | b;
            RV32I_ALU_XOR:    y = a ^ b;
            RV32I_ALU_SLL:    y = a << b[4:0];
            RV32I_ALU_SRL:    y = a >> b[4:0];
            RV32I_ALU_SRA:    y = a_s >>> b[4:0];
            RV32I_ALU_SLT:    y = (a_s < b_s) ? 32'd1 : 32'd0;
            RV32I_ALU_SLTU:   y = (a < b) ? 32'd1 : 32'd0;
            RV32I_ALU_COPY_B: y = b;
            default:          y = a + b;
        endcase
    end

endmodule
