`timescale 1ns / 1ps

import rv32i_branch_types_pkg::*;

module rv32i_branch_unit (
    input  logic        ex_valid,
    input  logic [31:0] ex_pc,
    input  logic [31:0] ex_rs1_data,
    input  logic [31:0] ex_rs2_data,
    input  logic [31:0] ex_imm,
    input  logic        ex_branch_en,
    input  logic [2:0]  ex_branch_funct3,
    input  logic        ex_jal,
    input  logic        ex_jalr,

    output logic        branch_taken,

    output logic        pc_redirect_valid,
    output logic [31:0] pc_redirect_target,

    output logic        instr_addr_misaligned,
    output logic [31:0] instr_addr_misaligned_target,

    output logic        ex_exception_valid,
    output logic [3:0]  ex_exception_cause,
    output logic [31:0] ex_exception_tval,

    output logic        ex_flush_req,
    output logic        ex_control_flow_change
);

    logic eq;
    logic ne;
    logic lt;
    logic ge;
    logic ltu;
    logic geu;

    logic signed [31:0] ex_rs1_data_s;
    logic signed [31:0] ex_rs2_data_s;

    logic [31:0] jal_target;
    logic [31:0] jalr_target;
    logic [31:0] branch_target;

    logic        control_flow_req;
    logic [31:0] control_flow_target;

    rv32i_branch_funct3_t   ex_branch_funct3_e;
    rv32i_exception_cause_t ex_exception_cause_e;

    assign ex_branch_funct3_e = rv32i_branch_funct3_t'(ex_branch_funct3);

    assign ex_rs1_data_s = ex_rs1_data;
    assign ex_rs2_data_s = ex_rs2_data;

    assign eq  = (ex_rs1_data == ex_rs2_data);
    assign ne  = (ex_rs1_data != ex_rs2_data);
    assign lt  = (ex_rs1_data_s <  ex_rs2_data_s);
    assign ge  = (ex_rs1_data_s >= ex_rs2_data_s);
    assign ltu = (ex_rs1_data <  ex_rs2_data);
    assign geu = (ex_rs1_data >= ex_rs2_data);

    assign jal_target    = ex_pc + ex_imm;
    assign jalr_target   = (ex_rs1_data + ex_imm) & 32'hFFFF_FFFE;
    assign branch_target = ex_pc + ex_imm;

    always_comb begin
        branch_taken = 1'b0;

        if (ex_valid && ex_branch_en) begin
            unique case (ex_branch_funct3_e)
                RV32I_BRANCH_BEQ:  branch_taken = eq;
                RV32I_BRANCH_BNE:  branch_taken = ne;
                RV32I_BRANCH_BLT:  branch_taken = lt;
                RV32I_BRANCH_BGE:  branch_taken = ge;
                RV32I_BRANCH_BLTU: branch_taken = ltu;
                RV32I_BRANCH_BGEU: branch_taken = geu;
                default:           branch_taken = 1'b0;
            endcase
        end
    end

    always_comb begin
        control_flow_req    = 1'b0;
        control_flow_target = 32'd0;

        if (ex_valid) begin
            if (ex_jalr) begin
                control_flow_req    = 1'b1;
                control_flow_target = jalr_target;
            end
            else if (ex_jal) begin
                control_flow_req    = 1'b1;
                control_flow_target = jal_target;
            end
            else if (ex_branch_en && branch_taken) begin
                control_flow_req    = 1'b1;
                control_flow_target = branch_target;
            end
        end
    end

    always_comb begin
        instr_addr_misaligned        = 1'b0;
        instr_addr_misaligned_target = 32'd0;

        if (control_flow_req && (control_flow_target[1:0] != 2'b00)) begin
            instr_addr_misaligned        = 1'b1;
            instr_addr_misaligned_target = control_flow_target;
        end
    end

    always_comb begin
        ex_exception_valid = 1'b0;
        ex_exception_cause_e = RV32I_EXC_NONE;
        ex_exception_tval  = 32'd0;

        if (instr_addr_misaligned) begin
            ex_exception_valid = 1'b1;
            ex_exception_cause_e = RV32I_EXC_INSTR_ADDR_MISALIGNED;
            ex_exception_tval  = instr_addr_misaligned_target;
        end
    end

    assign ex_exception_cause = ex_exception_cause_e;

    always_comb begin
        pc_redirect_valid  = 1'b0;
        pc_redirect_target = 32'd0;

        if (control_flow_req && !ex_exception_valid) begin
            pc_redirect_valid  = 1'b1;
            pc_redirect_target = control_flow_target;
        end
    end

    always_comb begin
        ex_control_flow_change = control_flow_req;
        ex_flush_req           = ex_exception_valid | pc_redirect_valid;
    end

endmodule