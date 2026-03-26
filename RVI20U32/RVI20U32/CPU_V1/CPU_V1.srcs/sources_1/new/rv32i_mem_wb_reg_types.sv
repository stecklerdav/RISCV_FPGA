`timescale 1ns/1ps

package rv32i_mem_wb_reg_types_pkg;

    typedef enum logic [1:0] {
        RV32I_WB_SEL_ALU = 2'b00,
        RV32I_WB_SEL_MEM = 2'b01,
        RV32I_WB_SEL_PC4 = 2'b10,
        RV32I_WB_SEL_IMM = 2'b11
    } rv32i_wb_sel_t;

endpackage