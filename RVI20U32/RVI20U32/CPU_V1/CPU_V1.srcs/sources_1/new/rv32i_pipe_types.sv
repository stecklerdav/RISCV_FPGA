`timescale 1ns/1ps

typedef struct packed {
    logic [31:0] pc;
    logic [31:0] pc_plus4;
    logic [31:0] instr;
    logic        valid;
} if_id_bus_t;