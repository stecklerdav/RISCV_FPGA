`timescale 1ns/1ps

package rv32i_load_extender_types_pkg;

    typedef enum logic [1:0] {
        RV32I_LD_SIZE_B = 2'b00,
        RV32I_LD_SIZE_H = 2'b01,
        RV32I_LD_SIZE_W = 2'b10
    } rv32i_ld_size_t;

endpackage