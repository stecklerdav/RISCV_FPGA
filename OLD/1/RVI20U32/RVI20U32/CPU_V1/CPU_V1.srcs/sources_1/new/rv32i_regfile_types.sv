`timescale 1ns/1ps

package rv32i_regfile_types_pkg;

  typedef struct packed {
      logic [4:0] rs1_addr;
      logic [4:0] rs2_addr;
  } rv32i_regfile_rd_bus_t;

  typedef struct packed {
      logic [4:0]  rd_addr;
      logic [31:0] rd_wdata;
      logic        rd_we;
  } rv32i_regfile_wr_bus_t;

  typedef struct packed {
      logic [31:0] rs1_rdata;
      logic [31:0] rs2_rdata;
  } rv32i_regfile_out_bus_t;

endpackage