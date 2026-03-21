`timescale 1ns/1ps

package rv32i_mem_wb_reg_types_pkg;

    localparam logic [1:0] WB_SEL_ALU  = 2'b00;
    localparam logic [1:0] WB_SEL_MEM  = 2'b01;
    localparam logic [1:0] WB_SEL_PC4  = 2'b10;
    localparam logic [1:0] WB_SEL_IMM  = 2'b11;

endpackage
