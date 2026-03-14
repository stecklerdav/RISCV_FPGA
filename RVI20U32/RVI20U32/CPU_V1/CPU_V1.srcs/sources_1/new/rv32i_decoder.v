`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2026 11:11:42 PM
// Design Name: 
// Module Name: rv32i_decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
// RV32I Decoder: extrae campos + genera inmediatos (I/S/B/U/J) + formato (R/I/S/B/U/J)
module rv32i_decoder(
    input  wire [31:0] instr,

    // Campos básicos
    
    output wire [4:0]  rs1,
    output wire [4:0]  rs2,
    output wire [4:0]  rd,
    output wire [6:0]  opcode, 
    output wire [2:0]  funct3,
    output wire [6:0]  funct7,
    output reg  [2:0]  fmt,
    output wire bit30,

    // Inmediatos listos (sign-extend)
    output wire [31:0] imm_i,
    output wire [31:0] imm_s,
    output wire [31:0] imm_b,
    output wire [31:0] imm_u,
    output wire [31:0] imm_j

    // Formato detectado según opcode
    // 000=R, 001=I, 010=S, 011=B, 100=U, 101=J, 111=UNKNOWN
    
);

    // -------- Campos --------
    assign opcode = instr[6:0];
    assign rd     = instr[11:7];
    assign funct3 = instr[14:12];
    assign rs1    = instr[19:15];
    assign rs2    = instr[24:20];
    assign funct7 = instr[31:25];
    assign bit30 = instr[30];


    // -------- Inmediatos --------
    // I-type: imm[11:0] = instr[31:20]
    assign imm_i = {{20{instr[31]}}, instr[31:20]};

    // S-type: imm[11:0] = instr[31:25] instr[11:7]
    assign imm_s = {{20{instr[31]}}, instr[31:25], instr[11:7]};

    // B-type: imm[12:1] = instr[31] instr[7] instr[30:25] instr[11:8], imm[0]=0
    assign imm_b = {{19{instr[31]}}, instr[31], instr[7], instr[30:25], instr[11:8], 1'b0};

    // U-type: imm = instr[31:12] << 12
    assign imm_u = {instr[31:12], 12'b0};

    // J-type: imm[20:1] = instr[31] instr[19:12] instr[20] instr[30:21], imm[0]=0
    assign imm_j = {{11{instr[31]}}, instr[31], instr[19:12], instr[20], instr[30:21], 1'b0};

    // -------- Formato (según opcode RV32I) --------
    always @(*) begin
        fmt = 3'b111; // UNKNOWN
        case (opcode)
            // R-type
            7'b0110011: fmt = 3'b000; // OP

            // I-type (familias distintas)
            7'b0010011: fmt = 3'b001; // OP-IMM
            7'b0000011: fmt = 3'b001; // LOAD
            7'b1100111: fmt = 3'b001; // JALR
            7'b1110011: fmt = 3'b001; // SYSTEM (ECALL/EBREAK/CSR*)

            // S-type
            7'b0100011: fmt = 3'b010; // STORE

            // B-type
            7'b1100011: fmt = 3'b011; // BRANCH

            // U-type
            7'b0110111: fmt = 3'b100; // LUI
            7'b0010111: fmt = 3'b100; // AUIPC

            // J-type
            7'b1101111: fmt = 3'b101; // JAL
            
            default;
        endcase
    end

endmodule
