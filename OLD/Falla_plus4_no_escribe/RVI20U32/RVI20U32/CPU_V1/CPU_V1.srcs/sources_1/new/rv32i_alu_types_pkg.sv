`timescale 1ns / 1ps

package rv32i_alu_types_pkg;

  typedef enum logic [3:0] {
      RV32I_ALU_ADD    = 4'd0,
      RV32I_ALU_SUB    = 4'd1,
      RV32I_ALU_AND    = 4'd2,
      RV32I_ALU_OR     = 4'd3,
      RV32I_ALU_XOR    = 4'd4,
      RV32I_ALU_SLL    = 4'd5,
      RV32I_ALU_SRL    = 4'd6,
      RV32I_ALU_SRA    = 4'd7,
      RV32I_ALU_SLT    = 4'd8,
      RV32I_ALU_SLTU   = 4'd9,
      RV32I_ALU_COPY_B = 4'd10
  } rv32i_alu_op_t;

endpackage  