`timescale 1ns / 1ps

module rv32i_id_ex_reg_wrapper (
    input  wire        clk,
    input  wire        rst,

    // Control pipeline
    input  wire        stall,
    input  wire        bubble,

    // Entradas desde ID
    input  wire        id_valid,
    input  wire [31:0] id_pc,
    input  wire [31:0] id_pc_plus4,
    input  wire [31:0] id_rs1_data,
    input  wire [31:0] id_rs2_data,
    input  wire [31:0] id_imm,
    input  wire [31:0] id_imm_u,
    input  wire [4:0]  id_rs1,
    input  wire [4:0]  id_rs2,
    input  wire [4:0]  id_rd,

    // Control EX
    input  wire [3:0]  id_alu_op,
    input  wire [1:0]  id_op_a_sel,
    input  wire [1:0]  id_op_b_sel,
    input  wire        id_branch_en,
    input  wire [2:0]  id_branch_funct3,
    input  wire        id_jal,
    input  wire        id_jalr,

    // Control MEM
    input  wire        id_mem_re,
    input  wire        id_mem_we,
    input  wire [1:0]  id_mem_size,
    input  wire        id_mem_unsigned,

    // Control WB
    input  wire        id_rd_we,
    input  wire [1:0]  id_wb_sel,

    // Salidas hacia EX
    output wire        ex_valid,
    output wire [31:0] ex_pc,
    output wire [31:0] ex_pc_plus4,
    output wire [31:0] ex_rs1_data,
    output wire [31:0] ex_rs2_data,
    output wire [31:0] ex_imm,
    output wire [31:0] ex_imm_u,
    output wire [4:0]  ex_rs1,
    output wire [4:0]  ex_rs2,
    output wire [4:0]  ex_rd,

    // Control EX
    output wire [3:0]  ex_alu_op,
    output wire [1:0]  ex_op_a_sel,
    output wire [1:0]  ex_op_b_sel,
    output wire        ex_branch_en,
    output wire [2:0]  ex_branch_funct3,
    output wire        ex_jal,
    output wire        ex_jalr,

    // Control MEM
    output wire        ex_mem_re,
    output wire        ex_mem_we,
    output wire [1:0]  ex_mem_size,
    output wire        ex_mem_unsigned,

    // Control WB
    output wire        ex_rd_we,
    output wire [1:0]  ex_wb_sel
);

    rv32i_id_ex_reg u_rv32i_id_ex_reg (
        .clk(clk),
        .rst(rst),
        .stall(stall),
        .bubble(bubble),

        .id_valid(id_valid),
        .id_pc(id_pc),
        .id_pc_plus4(id_pc_plus4),
        .id_rs1_data(id_rs1_data),
        .id_rs2_data(id_rs2_data),
        .id_imm(id_imm),
        .id_imm_u(id_imm_u),
        .id_rs1(id_rs1),
        .id_rs2(id_rs2),
        .id_rd(id_rd),

        .id_alu_op(id_alu_op),
        .id_op_a_sel(id_op_a_sel),
        .id_op_b_sel(id_op_b_sel),
        .id_branch_en(id_branch_en),
        .id_branch_funct3(id_branch_funct3),
        .id_jal(id_jal),
        .id_jalr(id_jalr),

        .id_mem_re(id_mem_re),
        .id_mem_we(id_mem_we),
        .id_mem_size(id_mem_size),
        .id_mem_unsigned(id_mem_unsigned),

        .id_rd_we(id_rd_we),
        .id_wb_sel(id_wb_sel),

        .ex_valid(ex_valid),
        .ex_pc(ex_pc),
        .ex_pc_plus4(ex_pc_plus4),
        .ex_rs1_data(ex_rs1_data),
        .ex_rs2_data(ex_rs2_data),
        .ex_imm(ex_imm),
        .ex_imm_u(ex_imm_u),
        .ex_rs1(ex_rs1),
        .ex_rs2(ex_rs2),
        .ex_rd(ex_rd),

        .ex_alu_op(ex_alu_op),
        .ex_op_a_sel(ex_op_a_sel),
        .ex_op_b_sel(ex_op_b_sel),
        .ex_branch_en(ex_branch_en),
        .ex_branch_funct3(ex_branch_funct3),
        .ex_jal(ex_jal),
        .ex_jalr(ex_jalr),

        .ex_mem_re(ex_mem_re),
        .ex_mem_we(ex_mem_we),
        .ex_mem_size(ex_mem_size),
        .ex_mem_unsigned(ex_mem_unsigned),

        .ex_rd_we(ex_rd_we),
        .ex_wb_sel(ex_wb_sel)
    );

endmodule