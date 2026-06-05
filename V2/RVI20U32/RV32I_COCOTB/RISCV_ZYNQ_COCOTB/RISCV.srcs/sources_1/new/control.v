`timescale 1ns / 1ps

module control (
    input  wire [6:0] opcode,
    input  wire [2:0] funct3,
    input  wire [6:0] funct7,
    input  wire [2:0] fmt,
    input  wire       bit30,

    output reg        rd_we,
    output reg [2:0]  wb_sel,

    output reg [1:0]  op_a_sel,
    output reg [1:0]  op_b_sel,
    output reg [3:0]  alu_op,

    output reg        mem_re,
    output reg        mem_we,
    output reg [1:0]  mem_size,
    output reg        mem_unsigned,

    output reg        branch_en,
    output reg [2:0]  branch_funct3,
    output reg        jal,
    output reg        jalr,
    output reg [2:0]  imm_sel
);

    localparam [2:0] IMM_I = 3'd0;
    localparam [2:0] IMM_S = 3'd1;
    localparam [2:0] IMM_B = 3'd2;
    localparam [2:0] IMM_U = 3'd3;
    localparam [2:0] IMM_J = 3'd4;

    localparam [1:0] A_RS1  = 2'd0;
    localparam [1:0] A_PC   = 2'd1;
    localparam [1:0] A_ZERO = 2'd2;

    localparam [1:0] B_RS2  = 2'd0;
    localparam [1:0] B_IMM  = 2'd1;
    localparam [1:0] B_4    = 2'd2;

    localparam [2:0] WB_ALU = 3'd0;
    localparam [2:0] WB_MEM = 3'd1;
    localparam [2:0] WB_PC4 = 3'd2;
    localparam [2:0] WB_IMM = 3'd3;

    localparam [3:0] ALU_ADD  = 4'd0;
    localparam [3:0] ALU_SUB  = 4'd1;
    localparam [3:0] ALU_AND  = 4'd2;
    localparam [3:0] ALU_OR   = 4'd3;
    localparam [3:0] ALU_XOR  = 4'd4;
    localparam [3:0] ALU_SLL  = 4'd5;
    localparam [3:0] ALU_SRL  = 4'd6;
    localparam [3:0] ALU_SRA  = 4'd7;
    localparam [3:0] ALU_SLT  = 4'd8;
    localparam [3:0] ALU_SLTU = 4'd9;

    localparam [1:0] SZ_B = 2'd0;
    localparam [1:0] SZ_H = 2'd1;
    localparam [1:0] SZ_W = 2'd2;

    always @(*) begin
        rd_we         = 1'b0;
        wb_sel        = WB_ALU;
        imm_sel       = IMM_I;
        op_a_sel      = A_RS1;
        op_b_sel      = B_RS2;
        alu_op        = ALU_ADD;

        mem_re        = 1'b0;
        mem_we        = 1'b0;
        mem_size      = SZ_W;
        mem_unsigned  = 1'b0;

        branch_en     = 1'b0;
        branch_funct3 = funct3;
        jal           = 1'b0;
        jalr          = 1'b0;

        case (opcode)

            7'b0110011: begin
                rd_we    = 1'b1;
                wb_sel   = WB_ALU;
                op_a_sel = A_RS1;
                op_b_sel = B_RS2;

                case (funct3)
                    3'b000: alu_op = bit30 ? ALU_SUB : ALU_ADD;
                    3'b001: alu_op = ALU_SLL;
                    3'b010: alu_op = ALU_SLT;
                    3'b011: alu_op = ALU_SLTU;
                    3'b100: alu_op = ALU_XOR;
                    3'b101: alu_op = bit30 ? ALU_SRA : ALU_SRL;
                    3'b110: alu_op = ALU_OR;
                    3'b111: alu_op = ALU_AND;
                    default: alu_op = ALU_ADD;
                endcase
            end

            7'b0010011: begin
                rd_we    = 1'b1;
                wb_sel   = WB_ALU;
                op_a_sel = A_RS1;
                op_b_sel = B_IMM;
                imm_sel  = IMM_I;

                case (funct3)
                    3'b000: alu_op = ALU_ADD;
                    3'b010: alu_op = ALU_SLT;
                    3'b011: alu_op = ALU_SLTU;
                    3'b100: alu_op = ALU_XOR;
                    3'b110: alu_op = ALU_OR;
                    3'b111: alu_op = ALU_AND;
                    3'b001: alu_op = ALU_SLL;
                    3'b101: alu_op = bit30 ? ALU_SRA : ALU_SRL;
                    default: alu_op = ALU_ADD;
                endcase
            end

            7'b0000011: begin
                rd_we    = 1'b1;
                wb_sel   = WB_MEM;
                op_a_sel = A_RS1;
                op_b_sel = B_IMM;
                imm_sel  = IMM_I;
                alu_op   = ALU_ADD;
                mem_re   = 1'b1;

                case (funct3)
                    3'b000: begin mem_size = SZ_B; mem_unsigned = 1'b0; end
                    3'b001: begin mem_size = SZ_H; mem_unsigned = 1'b0; end
                    3'b010: begin mem_size = SZ_W; mem_unsigned = 1'b0; end
                    3'b100: begin mem_size = SZ_B; mem_unsigned = 1'b1; end
                    3'b101: begin mem_size = SZ_H; mem_unsigned = 1'b1; end
                    default: begin mem_size = SZ_W; mem_unsigned = 1'b0; end
                endcase
            end

            7'b0100011: begin
                mem_we   = 1'b1;
                op_a_sel = A_RS1;
                op_b_sel = B_IMM;
                imm_sel  = IMM_S;
                alu_op   = ALU_ADD;

                case (funct3)
                    3'b000: mem_size = SZ_B;
                    3'b001: mem_size = SZ_H;
                    3'b010: mem_size = SZ_W;
                    default: mem_size = SZ_W;
                endcase
            end

            7'b1100011: begin
                branch_en     = 1'b1;
                branch_funct3 = funct3;
                imm_sel       = IMM_B;
                alu_op        = ALU_SUB;
            end

            7'b1101111: begin
                jal      = 1'b1;
                imm_sel  = IMM_J;
                rd_we    = 1'b1;
                wb_sel   = WB_PC4;
                op_a_sel = A_PC;
                op_b_sel = B_4;
            end

            7'b1100111: begin
                jalr     = 1'b1;
                imm_sel  = IMM_I;
                rd_we    = 1'b1;
                wb_sel   = WB_PC4;
                op_a_sel = A_RS1;
                op_b_sel = B_IMM;
            end

            7'b0110111: begin
                rd_we    = 1'b1;
                wb_sel   = WB_IMM;
                imm_sel  = IMM_U;
                op_a_sel = A_ZERO;
                op_b_sel = B_IMM;
            end

            7'b0010111: begin
                rd_we    = 1'b1;
                wb_sel   = WB_ALU;
                imm_sel  = IMM_U;
                op_a_sel = A_PC;
                op_b_sel = B_IMM;
            end

            // FENCE / FENCE.I
            // En este core simple se trata como NOP válido.
            // No escribe registros, no accede a memoria y no redirecciona PC.
            7'b0001111: begin
                rd_we         = 1'b0;
                wb_sel        = WB_ALU;
                imm_sel       = IMM_I;
                op_a_sel      = A_RS1;
                op_b_sel      = B_RS2;
                alu_op        = ALU_ADD;
                mem_re        = 1'b0;
                mem_we        = 1'b0;
                mem_size      = SZ_W;
                mem_unsigned  = 1'b0;
                branch_en     = 1'b0;
                branch_funct3 = funct3;
                jal           = 1'b0;
                jalr          = 1'b0;
            end

            7'b1110011: begin
                rd_we  = 1'b0;
                wb_sel = WB_ALU;
            end

            default: begin
                rd_we         = 1'b0;
                wb_sel        = WB_ALU;
                imm_sel       = IMM_I;
                op_a_sel      = A_RS1;
                op_b_sel      = B_RS2;
                alu_op        = ALU_ADD;
                mem_re        = 1'b0;
                mem_we        = 1'b0;
                mem_size      = SZ_W;
                mem_unsigned  = 1'b0;
                branch_en     = 1'b0;
                branch_funct3 = funct3;
                jal           = 1'b0;
                jalr          = 1'b0;
            end

        endcase
    end

endmodule
