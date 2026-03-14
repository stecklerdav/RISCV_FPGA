`timescale 1ns / 1ps

module rv32i_branch_unit (
    input  wire [31:0] ex_pc,
    input  wire [31:0] ex_rs1_data,
    input  wire [31:0] ex_rs2_data,
    input  wire [31:0] ex_imm,
    input  wire        ex_branch_en,
    input  wire [2:0]  ex_branch_funct3,
    input  wire        ex_jal,
    input  wire        ex_jalr,

    output reg         branch_taken,
    output reg         pc_redirect_valid,
    output reg  [31:0] pc_redirect_target
);

    wire eq;
    wire ne;
    wire lt;
    wire ge;
    wire ltu;
    wire geu;

    assign eq  = (ex_rs1_data == ex_rs2_data);
    assign ne  = (ex_rs1_data != ex_rs2_data);
    assign lt  = ($signed(ex_rs1_data) <  $signed(ex_rs2_data));
    assign ge  = ($signed(ex_rs1_data) >= $signed(ex_rs2_data));
    assign ltu = (ex_rs1_data <  ex_rs2_data);
    assign geu = (ex_rs1_data >= ex_rs2_data);

    always @(*) begin
        branch_taken = 1'b0;

        if (ex_branch_en) begin
            case (ex_branch_funct3)
                3'b000: branch_taken = eq;   // BEQ
                3'b001: branch_taken = ne;   // BNE
                3'b100: branch_taken = lt;   // BLT
                3'b101: branch_taken = ge;   // BGE
                3'b110: branch_taken = ltu;  // BLTU
                3'b111: branch_taken = geu;  // BGEU
                default: branch_taken = 1'b0;
            endcase
        end
    end

    always @(*) begin
        pc_redirect_valid  = 1'b0;
        pc_redirect_target = 32'd0;

        if (ex_jalr) begin
            pc_redirect_valid  = 1'b1;
            pc_redirect_target = (ex_rs1_data + ex_imm) & 32'hFFFFFFFE;
        end
        else if (ex_jal) begin
            pc_redirect_valid  = 1'b1;
            pc_redirect_target = ex_pc + ex_imm;
        end
        else if (ex_branch_en && branch_taken) begin
            pc_redirect_valid  = 1'b1;
            pc_redirect_target = ex_pc + ex_imm;
        end
    end

endmodule