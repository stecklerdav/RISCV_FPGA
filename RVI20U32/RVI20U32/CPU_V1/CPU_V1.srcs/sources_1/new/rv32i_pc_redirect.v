`timescale 1ns / 1ps

module rv32i_pc_redirect(
    input  wire        rst,
    input  wire [31:0] pc,
    input  wire [31:0] rs1,
    input  wire [31:0] rs2,

    input  wire [31:0] imm_i,
    input  wire [31:0] imm_b,
    input  wire [31:0] imm_j,

    input  wire        branch_en,
    input  wire [2:0]  branch_f3,
    input  wire        jal,
    input  wire        jalr,

    output reg         pc_redirect_valid,
    output reg  [31:0] pc_redirect_target
);

    // ------------------------------------------------------------
    // Branch compare
    // ------------------------------------------------------------
    reg branch_taken;

    always @(*) begin
        branch_taken = 1'b0;

        case (branch_f3)
            3'b000: branch_taken = (rs1 == rs2);                           // BEQ
            3'b001: branch_taken = (rs1 != rs2);                           // BNE
            3'b100: branch_taken = ($signed(rs1) <  $signed(rs2));         // BLT
            3'b101: branch_taken = ($signed(rs1) >= $signed(rs2));         // BGE
            3'b110: branch_taken = (rs1 < rs2);                            // BLTU
            3'b111: branch_taken = (rs1 >= rs2);                           // BGEU
            default: branch_taken = 1'b0;
        endcase
    end

    // ------------------------------------------------------------
    // Target calculation
    // ------------------------------------------------------------
    wire [31:0] target_jal  = pc + imm_j;
    wire [31:0] target_br   = pc + imm_b;
    wire [31:0] target_jalr = (rs1 + imm_i) & 32'hFFFF_FFFE;

    // ------------------------------------------------------------
    // Redirect decision
    // ------------------------------------------------------------
    always @(*) begin
        pc_redirect_valid  = 1'b0;
        pc_redirect_target = 32'd0;

        if (!rst) begin
            if (jalr) begin
                pc_redirect_valid  = 1'b1;
                pc_redirect_target = target_jalr;
            end
            else if (jal) begin
                pc_redirect_valid  = 1'b1;
                pc_redirect_target = target_jal;
            end
            else if (branch_en && branch_taken) begin
                pc_redirect_valid  = 1'b1;
                pc_redirect_target = target_br;
            end
        end
    end

endmodule