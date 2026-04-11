`timescale 1ns / 1ps

package rv32i_id_ex_types_pkg;

  typedef struct packed {
      logic        valid;
      logic [31:0] pc;
      logic [31:0] pc_plus4;
      logic [31:0] rs1_data;
      logic [31:0] rs2_data;
      logic [31:0] imm;
      logic [31:0] imm_u;
      logic [4:0]  rs1;
      logic [4:0]  rs2;
      logic [4:0]  rd;
      logic [3:0]  alu_op;
      logic [1:0]  op_a_sel;
      logic [1:0]  op_b_sel;
      logic        branch_en;
      logic [2:0]  branch_funct3;
      logic        jal;
      logic        jalr;
      logic        mem_re;
      logic        mem_we;
      logic [1:0]  mem_size;
      logic        mem_unsigned;
      logic        rd_we;
      logic [1:0]  wb_sel;
  } rv32i_id_ex_bus_t;

endpackage