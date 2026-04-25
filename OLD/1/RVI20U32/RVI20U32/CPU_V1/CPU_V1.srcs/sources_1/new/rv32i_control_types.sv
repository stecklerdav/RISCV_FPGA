`timescale 1ns / 1ps

package rv32i_control_types_pkg;

  typedef struct packed {
      logic       rd_we;
      logic [1:0] wb_sel;
      logic [2:0] imm_sel;
      logic [1:0] op_a_sel;
      logic [1:0] op_b_sel;
      logic [3:0] alu_op;
      logic       mem_re;
      logic       mem_we;
      logic [1:0] mem_size;
      logic       mem_sign_ext;
      logic       branch_en;
      logic [2:0] branch_funct3;
      logic       jal;
      logic       jalr;
  } rv32i_ctrl_bus_t;

endpackage