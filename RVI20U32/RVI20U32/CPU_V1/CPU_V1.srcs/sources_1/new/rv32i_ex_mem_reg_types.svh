`timescale 1ns / 1ps

package rv32i_ex_mem_reg_types_pkg;

  typedef struct packed {
      logic        valid;

      logic [31:0] pc;
      logic [31:0] alu_result;
      logic [31:0] store_data;
      logic [31:0] pc_plus4;
      logic [31:0] imm_u;

      logic [4:0]  rd;

      logic        mem_re;
      logic        mem_we;
      logic [1:0]  mem_size;
      logic        mem_unsigned;

      logic        rd_we;
      logic [1:0]  wb_sel;

      logic        exception_valid;
      logic [3:0]  exception_cause;
      logic [31:0] exception_tval;
  } rv32i_ex_mem_payload_t;

endpackage