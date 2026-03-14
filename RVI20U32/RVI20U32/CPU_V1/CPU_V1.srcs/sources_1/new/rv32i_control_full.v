`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// RV32I full control unit
//////////////////////////////////////////////////////////////////////////////////

module rv32i_control_full (
    // From decoder
    input  wire [6:0] opcode,
    input  wire [2:0] funct3,
    input  wire [6:0] funct7,
    input  wire [2:0] fmt,      // optional, currently unused
    input  wire       bit30,    // instr[30]

    // Main control outputs
    output reg        rd_we,
    output reg [1:0]  wb_sel,        // 0=ALU, 1=MEM, 2=PC+4, 3=reserved
    output reg [3:0]  alu_op,
    output reg [1:0]  opA_sel,       // 0=RS1, 1=PC, 2=ZERO
    output reg [1:0]  opB_sel,       // 0=RS2, 1=IMM, 2=4, 3=reserved
    output reg [2:0]  imm_sel,       // 0=I, 1=S, 2=B, 3=U, 4=J

    // Memory / LSU control
    output reg        mem_re,
    output reg        mem_we,
    output reg [1:0]  lsu_size,      // 0=B, 1=H, 2=W
    output reg        lsu_unsigned,  // 1 for LBU/LHU

    // Control-flow
    output reg        branch_en,
    output reg [2:0]  branch_f3,
    output reg        jal,
    output reg        jalr
);

    // ------------------------------------------------------------
    // imm_sel
    // ------------------------------------------------------------
    localparam IMM_I = 3'd0;
    localparam IMM_S = 3'd1;
    localparam IMM_B = 3'd2;
    localparam IMM_U = 3'd3;
    localparam IMM_J = 3'd4;

    // ------------------------------------------------------------
    // opA_sel
    // ------------------------------------------------------------
    localparam A_RS1  = 2'd0;
    localparam A_PC   = 2'd1;
    localparam A_ZERO = 2'd2;

    // ------------------------------------------------------------
    // opB_sel
    // ------------------------------------------------------------
    localparam B_RS2  = 2'd0;
    localparam B_IMM  = 2'd1;
    localparam B_4    = 2'd2;

    // ------------------------------------------------------------
    // wb_sel
    // ------------------------------------------------------------
    localparam WB_ALU = 2'd0;
    localparam WB_MEM = 2'd1;
    localparam WB_PC4 = 2'd2;
    localparam WB_RSV = 2'd3; // reserved

    // ------------------------------------------------------------
    // ALU ops
    // ------------------------------------------------------------
    localparam ALU_ADD  = 4'd0;
    localparam ALU_SUB  = 4'd1;
    localparam ALU_AND  = 4'd2;
    localparam ALU_OR   = 4'd3;
    localparam ALU_XOR  = 4'd4;
    localparam ALU_SLL  = 4'd5;
    localparam ALU_SRL  = 4'd6;
    localparam ALU_SRA  = 4'd7;
    localparam ALU_SLT  = 4'd8;
    localparam ALU_SLTU = 4'd9;

    // ------------------------------------------------------------
    // LSU sizes
    // ------------------------------------------------------------
    localparam SZ_B = 2'd0;
    localparam SZ_H = 2'd1;
    localparam SZ_W = 2'd2;

    always @(*) begin
        // --------------------------------------------------------
        // Defaults (NOP-like)
        // --------------------------------------------------------
        rd_we        = 1'b0;
        wb_sel       = WB_ALU;
        alu_op       = ALU_ADD;
        opA_sel      = A_RS1;
        opB_sel      = B_RS2;
        imm_sel      = IMM_I;

        mem_re       = 1'b0;
        mem_we       = 1'b0;
        lsu_size     = SZ_W;
        lsu_unsigned = 1'b0;

        branch_en    = 1'b0;
        branch_f3    = funct3;
        jal          = 1'b0;
        jalr         = 1'b0;

        case (opcode)

            // ====================================================
            // R-type OP
            // opcode = 0110011
            // ====================================================
            7'b0110011: begin
                rd_we   = 1'b1;
                wb_sel  = WB_ALU;
                opA_sel = A_RS1;
                opB_sel = B_RS2;

                case (funct3)
                    3'b000: alu_op = (bit30) ? ALU_SUB  : ALU_ADD;  // SUB / ADD
                    3'b001: alu_op = ALU_SLL;                       // SLL
                    3'b010: alu_op = ALU_SLT;                       // SLT
                    3'b011: alu_op = ALU_SLTU;                      // SLTU
                    3'b100: alu_op = ALU_XOR;                       // XOR
                    3'b101: alu_op = (bit30) ? ALU_SRA : ALU_SRL;   // SRA / SRL
                    3'b110: alu_op = ALU_OR;                        // OR
                    3'b111: alu_op = ALU_AND;                       // AND
                    default: alu_op = ALU_ADD;
                endcase
            end

            // ====================================================
            // I-type ALU
            // opcode = 0010011
            // ====================================================
            7'b0010011: begin
                rd_we   = 1'b1;
                wb_sel  = WB_ALU;
                opA_sel = A_RS1;
                opB_sel = B_IMM;
                imm_sel = IMM_I;

                case (funct3)
                    3'b000: alu_op = ALU_ADD;                       // ADDI
                    3'b010: alu_op = ALU_SLT;                       // SLTI
                    3'b011: alu_op = ALU_SLTU;                      // SLTIU
                    3'b100: alu_op = ALU_XOR;                       // XORI
                    3'b110: alu_op = ALU_OR;                        // ORI
                    3'b111: alu_op = ALU_AND;                       // ANDI
                    3'b001: alu_op = ALU_SLL;                       // SLLI
                    3'b101: alu_op = (bit30) ? ALU_SRA : ALU_SRL;   // SRAI / SRLI
                    default: alu_op = ALU_ADD;
                endcase
            end

            // ====================================================
            // LOAD
            // opcode = 0000011
            // ====================================================
            7'b0000011: begin
                rd_we   = 1'b1;
                wb_sel  = WB_MEM;
                opA_sel = A_RS1;
                opB_sel = B_IMM;
                imm_sel = IMM_I;
                alu_op  = ALU_ADD;   // address = rs1 + imm
                mem_re  = 1'b1;

                case (funct3)
                    3'b000: begin lsu_size = SZ_B; lsu_unsigned = 1'b0; end // LB
                    3'b001: begin lsu_size = SZ_H; lsu_unsigned = 1'b0; end // LH
                    3'b010: begin lsu_size = SZ_W; lsu_unsigned = 1'b0; end // LW
                    3'b100: begin lsu_size = SZ_B; lsu_unsigned = 1'b1; end // LBU
                    3'b101: begin lsu_size = SZ_H; lsu_unsigned = 1'b1; end // LHU
                    default: begin lsu_size = SZ_W; lsu_unsigned = 1'b0; end
                endcase
            end

            // ====================================================
            // STORE
            // opcode = 0100011
            // ====================================================
            7'b0100011: begin
                rd_we   = 1'b0;
                mem_we  = 1'b1;
                opA_sel = A_RS1;
                opB_sel = B_IMM;
                imm_sel = IMM_S;
                alu_op  = ALU_ADD;   // address = rs1 + imm

                case (funct3)
                    3'b000: lsu_size = SZ_B; // SB
                    3'b001: lsu_size = SZ_H; // SH
                    3'b010: lsu_size = SZ_W; // SW
                    default: lsu_size = SZ_W;
                endcase
            end

            // ====================================================
            // BRANCH
            // opcode = 1100011
            // ====================================================
            7'b1100011: begin
                branch_en = 1'b1;
                branch_f3 = funct3;
                imm_sel   = IMM_B;

                rd_we     = 1'b0;
                mem_re    = 1'b0;
                mem_we    = 1'b0;

                // Optional ALU setup for debug/consistency
                alu_op    = ALU_SUB;
                opA_sel   = A_RS1;
                opB_sel   = B_RS2;
            end

            // ====================================================
            // JAL
            // opcode = 1101111
            // ====================================================
            7'b1101111: begin
                jal      = 1'b1;
                imm_sel  = IMM_J;
                rd_we    = 1'b1;
                wb_sel   = WB_PC4;

                // Not strictly required for WB, but useful/consistent
                alu_op   = ALU_ADD;
                opA_sel  = A_PC;
                opB_sel  = B_4;
            end

            // ====================================================
            // JALR
            // opcode = 1100111
            // ====================================================
            7'b1100111: begin
                jalr     = 1'b1;
                imm_sel  = IMM_I;
                rd_we    = 1'b1;
                wb_sel   = WB_PC4;

                // target = rs1 + imm
                alu_op   = ALU_ADD;
                opA_sel  = A_RS1;
                opB_sel  = B_IMM;
            end

            // ====================================================
            // LUI
            // opcode = 0110111
            // rd = imm_u
            // We implement it through ALU: 0 + imm_u
            // ====================================================
            7'b0110111: begin
                rd_we    = 1'b1;
                wb_sel   = WB_ALU;
                imm_sel  = IMM_U;

                alu_op   = ALU_ADD;
                opA_sel  = A_ZERO;
                opB_sel  = B_IMM;
            end

            // ====================================================
            // AUIPC
            // opcode = 0010111
            // rd = pc + imm_u
            // ====================================================
            7'b0010111: begin
                rd_we    = 1'b1;
                wb_sel   = WB_ALU;
                imm_sel  = IMM_U;

                alu_op   = ALU_ADD;
                opA_sel  = A_PC;
                opB_sel  = B_IMM;
            end

            default: begin
                // NOP / unsupported instruction
            end
        endcase
    end

endmodule