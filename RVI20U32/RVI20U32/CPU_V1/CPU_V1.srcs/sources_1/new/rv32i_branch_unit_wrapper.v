`timescale 1ns / 1ps

module rv32i_branch_unit_wrapper (
    input  wire        ex_valid,
    input  wire [31:0] ex_pc,
    input  wire [31:0] ex_rs1_data,
    input  wire [31:0] ex_rs2_data,
    input  wire [31:0] ex_imm,
    input  wire        ex_branch_en,
    input  wire [2:0]  ex_branch_funct3,
    input  wire        ex_jal,
    input  wire        ex_jalr,

    output wire        branch_taken,

    output wire        pc_redirect_valid,
    output wire [31:0] pc_redirect_target,

    output wire        instr_addr_misaligned,
    output wire [31:0] instr_addr_misaligned_target,

    output wire        ex_exception_valid,
    output wire [3:0]  ex_exception_cause,
    output wire [31:0] ex_exception_tval,

    output wire        ex_flush_req,
    output wire        ex_control_flow_change
);

    rv32i_branch_unit u_rv32i_branch_unit (
        .ex_valid                      (ex_valid),
        .ex_pc                         (ex_pc),
        .ex_rs1_data                   (ex_rs1_data),
        .ex_rs2_data                   (ex_rs2_data),
        .ex_imm                        (ex_imm),
        .ex_branch_en                  (ex_branch_en),
        .ex_branch_funct3              (ex_branch_funct3),
        .ex_jal                        (ex_jal),
        .ex_jalr                       (ex_jalr),
        .branch_taken                  (branch_taken),
        .pc_redirect_valid             (pc_redirect_valid),
        .pc_redirect_target            (pc_redirect_target),
        .instr_addr_misaligned         (instr_addr_misaligned),
        .instr_addr_misaligned_target  (instr_addr_misaligned_target),
        .ex_exception_valid            (ex_exception_valid),
        .ex_exception_cause            (ex_exception_cause),
        .ex_exception_tval             (ex_exception_tval),
        .ex_flush_req                  (ex_flush_req),
        .ex_control_flow_change        (ex_control_flow_change)
    );

endmodule
