`timescale 1ns / 1ps

package rv32i_decode_types_pkg;

typedef struct packed {
    logic [4:0]  rs1;
    logic [4:0]  rs2;
    logic [4:0]  rd;
    logic [6:0]  opcode;
    logic [2:0]  funct3;
    logic [6:0]  funct7;
    logic [31:0] imm_i;
    logic [31:0] imm_s;
    logic [31:0] imm_b;
    logic [31:0] imm_u;
    logic [31:0] imm_j;
    logic [2:0]  fmt;
    logic        bit30;
    logic        illegal_opcode;
} rv32i_decode_bus_t;

endpackage