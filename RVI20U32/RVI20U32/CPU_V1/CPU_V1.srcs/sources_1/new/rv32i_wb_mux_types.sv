`timescale 1ns / 1ps

package rv32i_wb_mux_types_pkg;

    localparam logic [1:0] WB_ALU = 2'd0;
    localparam logic [1:0] WB_MEM = 2'd1;
    localparam logic [1:0] WB_PC4 = 2'd2;
    localparam logic [1:0] WB_IMM = 2'd3;

endpackage
