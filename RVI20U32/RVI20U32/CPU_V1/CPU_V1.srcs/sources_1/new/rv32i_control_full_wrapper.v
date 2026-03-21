`timescale 1ns / 1ps

module rv32i_control_full_wrapper (
    // From decoder
    input  wire [6:0] opcode,
    input  wire [2:0] funct3,
    input  wire [6:0] funct7,
    input  wire [2:0] fmt,
    input  wire       bit30,

    // Main control outputs
    output wire       rd_we,
    output wire [1:0] wb_sel,
    output wire [3:0] alu_op,
    output wire [1:0] opA_sel,
    output wire [1:0] opB_sel,
    output wire [2:0] imm_sel,

    // Memory / LSU control
    output wire       mem_re,
    output wire       mem_we,
    output wire [1:0] lsu_size,
    output wire       lsu_unsigned,

    // Control-flow
    output wire       branch_en,
    output wire [2:0] branch_f3,
    output wire       jal,
    output wire       jalr
);

    // struct packed total bits:
    // 1 + 2 + 4 + 2 + 2 + 3 + 1 + 1 + 2 + 1 + 1 + 3 + 1 + 1 = 25 bits
    wire [24:0] ctrl_out_flat;

    rv32i_control_full u_control (
        .opcode   (opcode),
        .funct3   (funct3),
        .funct7   (funct7),
        .fmt      (fmt),
        .bit30    (bit30),
        .ctrl_out (ctrl_out_flat)
    );

    assign {
        rd_we,
        wb_sel,
        alu_op,
        opA_sel,
        opB_sel,
        imm_sel,
        mem_re,
        mem_we,
        lsu_size,
        lsu_unsigned,
        branch_en,
        branch_f3,
        jal,
        jalr
    } = ctrl_out_flat;

endmodule