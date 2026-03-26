`timescale 1ns / 1ps

import rv32i_control_types_pkg::*;

module rv32i_control_full (
    input  logic [6:0] opcode,
    input  logic [2:0] funct3,
    input  logic [6:0] funct7,
    input  logic [2:0] fmt,
    input  logic       bit30,
    output rv32i_ctrl_bus_t ctrl_out
);

    // ------------------------------------------------------------
    // Immediate select
    // ------------------------------------------------------------
    localparam logic [2:0] IMM_I = 3'd0;
    localparam logic [2:0] IMM_S = 3'd1;
    localparam logic [2:0] IMM_B = 3'd2;
    localparam logic [2:0] IMM_U = 3'd3;
    localparam logic [2:0] IMM_J = 3'd4;

    // ------------------------------------------------------------
    // Operand A select
    // ------------------------------------------------------------
    localparam logic [1:0] A_RS1  = 2'd0;
    localparam logic [1:0] A_PC   = 2'd1;
    localparam logic [1:0] A_ZERO = 2'd2;

    // ------------------------------------------------------------
    // Operand B select
    // ------------------------------------------------------------
    localparam logic [1:0] B_RS2  = 2'd0;
    localparam logic [1:0] B_IMM  = 2'd1;
    localparam logic [1:0] B_4    = 2'd2;

    // ------------------------------------------------------------
    // Writeback select
    // ------------------------------------------------------------
    localparam logic [1:0] WB_ALU = 2'd0;
    localparam logic [1:0] WB_MEM = 2'd1;
    localparam logic [1:0] WB_PC4 = 2'd2;
    localparam logic [1:0] WB_IMM = 2'd3;   // para LUI

    // ------------------------------------------------------------
    // ALU ops
    // ------------------------------------------------------------
    localparam logic [3:0] ALU_ADD  = 4'd0;
    localparam logic [3:0] ALU_SUB  = 4'd1;
    localparam logic [3:0] ALU_AND  = 4'd2;
    localparam logic [3:0] ALU_OR   = 4'd3;
    localparam logic [3:0] ALU_XOR  = 4'd4;
    localparam logic [3:0] ALU_SLL  = 4'd5;
    localparam logic [3:0] ALU_SRL  = 4'd6;
    localparam logic [3:0] ALU_SRA  = 4'd7;
    localparam logic [3:0] ALU_SLT  = 4'd8;
    localparam logic [3:0] ALU_SLTU = 4'd9;

    // ------------------------------------------------------------
    // Memory access size
    // ------------------------------------------------------------
    localparam logic [1:0] SZ_B = 2'd0;
    localparam logic [1:0] SZ_H = 2'd1;
    localparam logic [1:0] SZ_W = 2'd2;

    rv32i_ctrl_bus_t ctrl_r;

    always_comb begin
        // defaults
        ctrl_r.rd_we         = 1'b0;
        ctrl_r.wb_sel        = WB_ALU;
        ctrl_r.imm_sel       = IMM_I;
        ctrl_r.op_a_sel      = A_RS1;
        ctrl_r.op_b_sel      = B_RS2;
        ctrl_r.alu_op        = ALU_ADD;

        ctrl_r.mem_re        = 1'b0;
        ctrl_r.mem_we        = 1'b0;
        ctrl_r.mem_size      = SZ_W;
        ctrl_r.mem_sign_ext  = 1'b1;

        ctrl_r.branch_en     = 1'b0;
        ctrl_r.branch_funct3 = funct3;
        ctrl_r.jal           = 1'b0;
        ctrl_r.jalr          = 1'b0;

        unique case (opcode)

            // ----------------------------------------------------
            // R-type
            // ----------------------------------------------------
            7'b0110011: begin
                ctrl_r.rd_we    = 1'b1;
                ctrl_r.wb_sel   = WB_ALU;
                ctrl_r.op_a_sel = A_RS1;
                ctrl_r.op_b_sel = B_RS2;

                unique case (funct3)
                    3'b000: ctrl_r.alu_op = bit30 ? ALU_SUB : ALU_ADD;
                    3'b001: ctrl_r.alu_op = ALU_SLL;
                    3'b010: ctrl_r.alu_op = ALU_SLT;
                    3'b011: ctrl_r.alu_op = ALU_SLTU;
                    3'b100: ctrl_r.alu_op = ALU_XOR;
                    3'b101: ctrl_r.alu_op = bit30 ? ALU_SRA : ALU_SRL;
                    3'b110: ctrl_r.alu_op = ALU_OR;
                    3'b111: ctrl_r.alu_op = ALU_AND;
                    default: ctrl_r.alu_op = ALU_ADD;
                endcase
            end

            // ----------------------------------------------------
            // I-type ALU
            // ----------------------------------------------------
            7'b0010011: begin
                ctrl_r.rd_we    = 1'b1;
                ctrl_r.wb_sel   = WB_ALU;
                ctrl_r.op_a_sel = A_RS1;
                ctrl_r.op_b_sel = B_IMM;
                ctrl_r.imm_sel  = IMM_I;

                unique case (funct3)
                    3'b000: ctrl_r.alu_op = ALU_ADD;
                    3'b010: ctrl_r.alu_op = ALU_SLT;
                    3'b011: ctrl_r.alu_op = ALU_SLTU;
                    3'b100: ctrl_r.alu_op = ALU_XOR;
                    3'b110: ctrl_r.alu_op = ALU_OR;
                    3'b111: ctrl_r.alu_op = ALU_AND;
                    3'b001: ctrl_r.alu_op = ALU_SLL;
                    3'b101: ctrl_r.alu_op = bit30 ? ALU_SRA : ALU_SRL;
                    default: ctrl_r.alu_op = ALU_ADD;
                endcase
            end

            // ----------------------------------------------------
            // LOAD
            // ----------------------------------------------------
            7'b0000011: begin
                ctrl_r.rd_we    = 1'b1;
                ctrl_r.wb_sel   = WB_MEM;
                ctrl_r.op_a_sel = A_RS1;
                ctrl_r.op_b_sel = B_IMM;
                ctrl_r.imm_sel  = IMM_I;
                ctrl_r.alu_op   = ALU_ADD;
                ctrl_r.mem_re   = 1'b1;

                unique case (funct3)
                    3'b000: begin ctrl_r.mem_size = SZ_B; ctrl_r.mem_sign_ext = 1'b1; end // LB
                    3'b001: begin ctrl_r.mem_size = SZ_H; ctrl_r.mem_sign_ext = 1'b1; end // LH
                    3'b010: begin ctrl_r.mem_size = SZ_W; ctrl_r.mem_sign_ext = 1'b1; end // LW
                    3'b100: begin ctrl_r.mem_size = SZ_B; ctrl_r.mem_sign_ext = 1'b0; end // LBU
                    3'b101: begin ctrl_r.mem_size = SZ_H; ctrl_r.mem_sign_ext = 1'b0; end // LHU
                    default: begin ctrl_r.mem_size = SZ_W; ctrl_r.mem_sign_ext = 1'b1; end
                endcase
            end

            // ----------------------------------------------------
            // STORE
            // ----------------------------------------------------
            7'b0100011: begin
                ctrl_r.rd_we    = 1'b0;
                ctrl_r.mem_we   = 1'b1;
                ctrl_r.op_a_sel = A_RS1;
                ctrl_r.op_b_sel = B_IMM;
                ctrl_r.imm_sel  = IMM_S;
                ctrl_r.alu_op   = ALU_ADD;

                unique case (funct3)
                    3'b000: ctrl_r.mem_size = SZ_B; // SB
                    3'b001: ctrl_r.mem_size = SZ_H; // SH
                    3'b010: ctrl_r.mem_size = SZ_W; // SW
                    default: ctrl_r.mem_size = SZ_W;
                endcase
            end

            // ----------------------------------------------------
            // BRANCH
            // ----------------------------------------------------
            7'b1100011: begin
                ctrl_r.branch_en     = 1'b1;
                ctrl_r.branch_funct3 = funct3;
                ctrl_r.imm_sel       = IMM_B;
                ctrl_r.alu_op        = ALU_SUB;
                ctrl_r.op_a_sel      = A_RS1;
                ctrl_r.op_b_sel      = B_RS2;
            end

            // ----------------------------------------------------
            // JAL
            // ----------------------------------------------------
            7'b1101111: begin
                ctrl_r.jal      = 1'b1;
                ctrl_r.imm_sel  = IMM_J;
                ctrl_r.rd_we    = 1'b1;
                ctrl_r.wb_sel   = WB_PC4;
                ctrl_r.alu_op   = ALU_ADD;
                ctrl_r.op_a_sel = A_PC;
                ctrl_r.op_b_sel = B_4;
            end

            // ----------------------------------------------------
            // JALR
            // ----------------------------------------------------
            7'b1100111: begin
                ctrl_r.jalr     = 1'b1;
                ctrl_r.imm_sel  = IMM_I;
                ctrl_r.rd_we    = 1'b1;
                ctrl_r.wb_sel   = WB_PC4;
                ctrl_r.alu_op   = ALU_ADD;
                ctrl_r.op_a_sel = A_RS1;
                ctrl_r.op_b_sel = B_IMM;
            end

            // ----------------------------------------------------
            // LUI
            // ----------------------------------------------------
            7'b0110111: begin
                ctrl_r.rd_we    = 1'b1;
                ctrl_r.wb_sel   = WB_IMM;
                ctrl_r.imm_sel  = IMM_U;
                ctrl_r.alu_op   = ALU_ADD;
                ctrl_r.op_a_sel = A_ZERO;
                ctrl_r.op_b_sel = B_IMM;
            end

            // ----------------------------------------------------
            // AUIPC
            // ----------------------------------------------------
            7'b0010111: begin
                ctrl_r.rd_we    = 1'b1;
                ctrl_r.wb_sel   = WB_ALU;
                ctrl_r.imm_sel  = IMM_U;
                ctrl_r.alu_op   = ALU_ADD;
                ctrl_r.op_a_sel = A_PC;
                ctrl_r.op_b_sel = B_IMM;
            end

            default: begin
            end
        endcase
    end

    assign ctrl_out = ctrl_r;

endmodule