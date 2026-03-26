`timescale 1ns/1ps

import rv32i_decode_types_pkg::*;

module rv32i_decoder (
    input  logic [31:0]         instr,
    output rv32i_decode_bus_t   dec_out
);

    // Formatos
    localparam logic [2:0] FMT_R       = 3'b000;
    localparam logic [2:0] FMT_I       = 3'b001;
    localparam logic [2:0] FMT_S       = 3'b010;
    localparam logic [2:0] FMT_B       = 3'b011;
    localparam logic [2:0] FMT_U       = 3'b100;
    localparam logic [2:0] FMT_J       = 3'b101;
    localparam logic [2:0] FMT_UNKNOWN = 3'b111;

    rv32i_decode_bus_t dec_r;

    // -----------------------------
    // Campos básicos
    // -----------------------------
    assign dec_r.opcode = instr[6:0];
    assign dec_r.rd     = instr[11:7];
    assign dec_r.funct3 = instr[14:12];
    assign dec_r.rs1    = instr[19:15];
    assign dec_r.rs2    = instr[24:20];
    assign dec_r.funct7 = instr[31:25];
    assign dec_r.bit30  = instr[30];

    // -----------------------------
    // Inmediatos RV32I
    // -----------------------------
    assign dec_r.imm_i = {{20{instr[31]}}, instr[31:20]};
    assign dec_r.imm_s = {{20{instr[31]}}, instr[31:25], instr[11:7]};
    assign dec_r.imm_b = {{19{instr[31]}}, instr[31], instr[7], instr[30:25], instr[11:8], 1'b0};
    assign dec_r.imm_u = {instr[31:12], 12'b0};
    assign dec_r.imm_j = {{11{instr[31]}}, instr[31], instr[19:12], instr[20], instr[30:21], 1'b0};

    // -----------------------------
    // Formato e illegal opcode
    // -----------------------------
    always_comb begin
        dec_r.fmt            = FMT_UNKNOWN;
        dec_r.illegal_opcode = 1'b0;

        unique case (dec_r.opcode)
            7'b0110011: dec_r.fmt = FMT_R; // OP

            7'b0010011: dec_r.fmt = FMT_I; // OP-IMM
            7'b0000011: dec_r.fmt = FMT_I; // LOAD
            7'b1100111: dec_r.fmt = FMT_I; // JALR
            7'b1110011: dec_r.fmt = FMT_I; // SYSTEM

            7'b0100011: dec_r.fmt = FMT_S; // STORE
            7'b1100011: dec_r.fmt = FMT_B; // BRANCH
            7'b0110111: dec_r.fmt = FMT_U; // LUI
            7'b0010111: dec_r.fmt = FMT_U; // AUIPC
            7'b1101111: dec_r.fmt = FMT_J; // JAL

            default: begin
                dec_r.fmt            = FMT_UNKNOWN;
                dec_r.illegal_opcode = 1'b1;
            end
        endcase
    end

    assign dec_out = dec_r;

endmodule