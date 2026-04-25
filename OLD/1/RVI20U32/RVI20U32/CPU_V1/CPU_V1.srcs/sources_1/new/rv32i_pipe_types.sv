`timescale 1ns / 1ps

package rv32i_pipe_types_pkg;

  typedef struct packed {
    logic        valid;
    logic [31:0] instr;
    logic [31:0] pc_plus4;
    logic [31:0] pc;
  } if_id_bus_t;

endpackage