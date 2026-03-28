`timescale 1ns / 1ps

module rv32i_control_full_wrapper (
    input  wire [6:0] opcode,
    input  wire [2:0] funct3,
    input  wire [6:0] funct7,
    input  wire [2:0] fmt,
    input  wire       bit30,

    output wire       rd_we,
    output wire [1:0] wb_sel,
    output wire [3:0] alu_op,
    output wire [1:0] opA_sel,
    output wire [1:0] opB_sel,
    output wire [2:0] imm_sel,

    output wire       mem_re,
    output wire       mem_we,
    output wire [1:0] lsu_size,
    output wire       lsu_unsigned,

    output wire       branch_en,
    output wire [2:0] branch_f3,
    output wire       jal,
    output wire       jalr
);

    wire [24:0] ctrl_flat;

    rv32i_control_full u_control (
        .opcode   (opcode),
        .funct3   (funct3),
        .funct7   (funct7),
        .fmt      (fmt),
        .bit30    (bit30),
        .ctrl_out (ctrl_flat)
    );

    // 🔥 slicing exacto (NO ERROR)
    assign rd_we        = ctrl_flat[24];
    assign wb_sel       = ctrl_flat[23:22];
    assign imm_sel      = ctrl_flat[21:19];
    assign opA_sel      = ctrl_flat[18:17];
    assign opB_sel      = ctrl_flat[16:15];
    assign alu_op       = ctrl_flat[14:11];
    assign mem_re       = ctrl_flat[10];
    assign mem_we       = ctrl_flat[9];
    assign lsu_size     = ctrl_flat[8:7];

    wire mem_sign_ext   = ctrl_flat[6];
    assign lsu_unsigned = ~mem_sign_ext;

    assign branch_en    = ctrl_flat[5];
    assign branch_f3    = ctrl_flat[4:2];
    assign jal          = ctrl_flat[1];
    assign jalr         = ctrl_flat[0];

endmodule