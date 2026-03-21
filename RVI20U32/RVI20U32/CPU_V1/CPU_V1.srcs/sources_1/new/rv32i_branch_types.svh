`timescale 1ns / 1ps

typedef enum logic [2:0] {
    RV32I_BRANCH_BEQ  = 3'b000,
    RV32I_BRANCH_BNE  = 3'b001,
    RV32I_BRANCH_BLT  = 3'b100,
    RV32I_BRANCH_BGE  = 3'b101,
    RV32I_BRANCH_BLTU = 3'b110,
    RV32I_BRANCH_BGEU = 3'b111
} rv32i_branch_funct3_t;

// Exception cause encoding local al core.
// Para RV32I básico, instruction address misaligned = 0.
typedef enum logic [3:0] {
    RV32I_EXC_NONE                     = 4'd0,
    RV32I_EXC_INSTR_ADDR_MISALIGNED    = 4'd1
} rv32i_exception_cause_t;
