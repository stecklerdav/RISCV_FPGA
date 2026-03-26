`timescale 1ns / 1ps

package rv32i_pkg_pkg;

  typedef enum logic [1:0] {
      RV32I_OP_A_RS1  = 2'b00,
      RV32I_OP_A_PC   = 2'b01,
      RV32I_OP_A_ZERO = 2'b10
  } rv32i_op_a_sel_t;

  typedef enum logic [1:0] {
      RV32I_OP_B_RS2  = 2'b00,
      RV32I_OP_B_IMM  = 2'b01,
      RV32I_OP_B_FOUR = 2'b10
  } rv32i_op_b_sel_t;

 

endpackage