`timescale 1ns / 1ps

module rv32i_decoder_wrapper (
    input  wire [31:0] instr,

    // Campos básicos
    output wire [4:0]  rs1,
    output wire [4:0]  rs2,
    output wire [4:0]  rd,
    output wire [6:0]  opcode,
    output wire [2:0]  funct3,
    output wire [6:0]  funct7,
    output wire [2:0]  fmt,
    output wire        bit30,

    // Inmediatos sign-extended
    output wire [31:0] imm_i,
    output wire [31:0] imm_s,
    output wire [31:0] imm_b,
    output wire [31:0] imm_u,
    output wire [31:0] imm_j,

    // Útil para control / debug
    output wire        illegal_opcode
);

    // Total bits del struct packed:
    // 5+5+5+7+3+7+3+1 + 32+32+32+32+32 +1 = 197 bits
    wire [196:0] dec_out_flat;

    rv32i_decoder u_rv32i_decoder (
        .instr   (instr),
        .dec_out (dec_out_flat)
    );

    assign {
        rs1,
        rs2,
        rd,
        opcode,
        funct3,
        funct7,
        fmt,
        bit30,
        imm_i,
        imm_s,
        imm_b,
        imm_u,
        imm_j,
        illegal_opcode
    } = dec_out_flat;

endmodule