`timescale 1 ps / 1 ps

module RV32_IF_EX
   (clk,
    ex_alu_op,
    ex_imm,
    ex_instr,
    ex_pc,
    ex_pc_plus4,
    ex_rd,
    ex_rd_we,
    ex_rs1,
    ex_rs1_data,
    ex_rs2,
    ex_rs2_data,
    ex_valid,
    id_instr_debug,
    id_pc_debug,
    id_pc_plus4_debug,
    if_id_enable,
    if_id_flush,
    if_instr_debug,
    if_pc_debug,
    if_pc_plus4_debug,
    rd_addr,
    rd_wdata,
    rd_we,
    rst);

  input clk;
  output [3:0] ex_alu_op;
  output [31:0] ex_imm;
  output [31:0] ex_instr;
  output [31:0] ex_pc;
  output [31:0] ex_pc_plus4;
  output [4:0] ex_rd;
  output ex_rd_we;
  output [4:0] ex_rs1;
  output [31:0] ex_rs1_data;
  output [4:0] ex_rs2;
  output [31:0] ex_rs2_data;
  output ex_valid;

  output [31:0] id_instr_debug;
  output [31:0] id_pc_debug;
  output [31:0] id_pc_plus4_debug;

  input if_id_enable;
  input if_id_flush;

  output [31:0] if_instr_debug;
  output [31:0] if_pc_debug;
  output [31:0] if_pc_plus4_debug;

  input [4:0] rd_addr;
  input [31:0] rd_wdata;
  input rd_we;
  input rst;

  wire clk_i;
  wire rst_i;

  wire pc_en_const;
  wire zero_const;
  wire one_const;

  wire [3:0] control_alu_op;
  wire control_branch_en;
  wire [2:0] control_branch_funct3;
  wire [2:0] control_imm_sel;
  wire control_jal;
  wire control_jalr;
  wire control_mem_re;
  wire [1:0] control_mem_size;
  wire control_mem_unsigned;
  wire control_mem_we;
  wire [1:0] control_op_a_sel;
  wire [1:0] control_op_b_sel;
  wire control_rd_we;
  wire [2:0] control_wb_sel;

  wire decoder_bit30;
  wire [2:0] decoder_fmt;
  wire [2:0] decoder_funct3;
  wire [6:0] decoder_funct7;
  wire decoder_illegal_opcode;
  wire [31:0] decoder_imm_b;
  wire [31:0] decoder_imm_i;
  wire [31:0] decoder_imm_j;
  wire [31:0] decoder_imm_s;
  wire [31:0] decoder_imm_u;
  wire [6:0] decoder_opcode;
  wire [4:0] decoder_rd;
  wire [4:0] decoder_rs1;
  wire [4:0] decoder_rs2;

  wire [31:0] if_instr;
  wire [31:0] if_pc;
  wire [31:0] if_pc_plus4;
  wire [10:0] imem_addr;

  wire [31:0] id_instr;
  wire [31:0] id_pc;
  wire [31:0] id_pc_plus4;

  wire [31:0] imm_out;

  wire [31:0] rs1_rdata;
  wire [31:0] rs2_rdata;

  assign clk_i = clk;
  assign rst_i = rst;

  assign ex_alu_op       = ex_alu_op_w;
  assign ex_imm          = ex_imm_w;
  assign ex_instr        = ex_instr_w;
  assign ex_pc           = ex_pc_w;
  assign ex_pc_plus4     = ex_pc_plus4_w;
  assign ex_rd           = ex_rd_w;
  assign ex_rd_we        = ex_rd_we_w;
  assign ex_rs1          = ex_rs1_w;
  assign ex_rs1_data     = ex_rs1_data_w;
  assign ex_rs2          = ex_rs2_w;
  assign ex_rs2_data     = ex_rs2_data_w;
  assign ex_valid        = ex_valid_w;

  assign id_instr_debug     = id_instr;
  assign id_pc_debug        = id_pc;
  assign id_pc_plus4_debug  = id_pc_plus4;

  assign if_instr_debug     = if_instr;
  assign if_pc_debug        = if_pc;
  assign if_pc_plus4_debug  = if_pc_plus4;

  wire [3:0]  ex_alu_op_w;
  wire [31:0] ex_imm_w;
  wire [31:0] ex_instr_w;
  wire [31:0] ex_pc_w;
  wire [31:0] ex_pc_plus4_w;
  wire [4:0]  ex_rd_w;
  wire        ex_rd_we_w;
  wire [4:0]  ex_rs1_w;
  wire [31:0] ex_rs1_data_w;
  wire [4:0]  ex_rs2_w;
  wire [31:0] ex_rs2_data_w;
  wire        ex_valid_w;

  control control_0
       (.alu_op(control_alu_op),
        .bit30(decoder_bit30),
        .branch_en(control_branch_en),
        .branch_funct3(control_branch_funct3),
        .fmt(decoder_fmt),
        .funct3(decoder_funct3),
        .funct7(decoder_funct7),
        .imm_sel(control_imm_sel),
        .jal(control_jal),
        .jalr(control_jalr),
        .mem_re(control_mem_re),
        .mem_size(control_mem_size),
        .mem_unsigned(control_mem_unsigned),
        .mem_we(control_mem_we),
        .op_a_sel(control_op_a_sel),
        .op_b_sel(control_op_b_sel),
        .opcode(decoder_opcode),
        .rd_we(control_rd_we),
        .wb_sel(control_wb_sel));

  decoder decoder_0
       (.bit30(decoder_bit30),
        .fmt(decoder_fmt),
        .funct3(decoder_funct3),
        .funct7(decoder_funct7),
        .illegal_opcode(decoder_illegal_opcode),
        .imm_b(decoder_imm_b),
        .imm_i(decoder_imm_i),
        .imm_j(decoder_imm_j),
        .imm_s(decoder_imm_s),
        .imm_u(decoder_imm_u),
        .instr(id_instr),
        .opcode(decoder_opcode),
        .rd(decoder_rd),
        .rs1(decoder_rs1),
        .rs2(decoder_rs2));

  id_ex_reg id_ex_reg_0
       (.bubble(zero_const),
        .clk(clk_i),
        .ex_alu_op(ex_alu_op_w),
        .ex_imm(ex_imm_w),
        .ex_instr(ex_instr_w),
        .ex_pc(ex_pc_w),
        .ex_pc_plus4(ex_pc_plus4_w),
        .ex_rd(ex_rd_w),
        .ex_rd_we(ex_rd_we_w),
        .ex_rs1(ex_rs1_w),
        .ex_rs1_data(ex_rs1_data_w),
        .ex_rs2(ex_rs2_w),
        .ex_rs2_data(ex_rs2_data_w),
        .ex_valid(ex_valid_w),
        .id_alu_op(control_alu_op),
        .id_branch_en(control_branch_en),
        .id_branch_funct3(control_branch_funct3),
        .id_illegal_instr(decoder_illegal_opcode),
        .id_imm(imm_out),
        .id_imm_u(decoder_imm_u),
        .id_instr(id_instr),
        .id_jal(control_jal),
        .id_jalr(control_jalr),
        .id_mem_re(control_mem_re),
        .id_mem_size(control_mem_size),
        .id_mem_unsigned(control_mem_unsigned),
        .id_mem_we(control_mem_we),
        .id_op_a_sel(control_op_a_sel),
        .id_op_b_sel(control_op_b_sel),
        .id_pc(id_pc),
        .id_pc_plus4(id_pc_plus4),
        .id_pred_next_pc(32'b0),
        .id_rd(decoder_rd),
        .id_rd_we(control_rd_we),
        .id_rs1(decoder_rs1),
        .id_rs1_data(rs1_rdata),
        .id_rs2(decoder_rs2),
        .id_rs2_data(rs2_rdata),
        .id_valid(one_const),
        .id_wb_sel(control_wb_sel),
        .rst(rst_i),
        .stall(zero_const));

  if_id_reg if_id_reg_0
       (.clk(clk_i),
        .enable(if_id_enable),
        .flush(if_id_flush),
        .id_instr(id_instr),
        .id_pc(id_pc),
        .id_pc_plus4(id_pc_plus4),
        .if_instr(if_instr),
        .if_pc(if_pc),
        .if_pc_plus4(if_pc_plus4),
        .rst(rst_i));

  imm_mux imm_mux_0
       (.imm_b(decoder_imm_b),
        .imm_i(decoder_imm_i),
        .imm_j(decoder_imm_j),
        .imm_out(imm_out),
        .imm_s(decoder_imm_s),
        .imm_sel(control_imm_sel),
        .imm_u(decoder_imm_u));

  pc_to_imem_addr pc_to_imem_addr_0
       (.addr(imem_addr),
        .pc(if_pc));

  pc_unit pc_unit_0
       (.clk(clk_i),
        .pc(if_pc),
        .pc_en(pc_en_const),
        .pc_plus4(if_pc_plus4),
        .rst(rst_i));

  regfile regfile_0
       (.clk(clk_i),
        .rd_addr(rd_addr),
        .rd_wdata(rd_wdata),
        .rd_we(rd_we),
        .rs1_addr(decoder_rs1),
        .rs1_rdata(rs1_rdata),
        .rs2_addr(decoder_rs2),
        .rs2_rdata(rs2_rdata));

  rom_memory rom_memory_0
       (.addr(imem_addr),
        .clk(clk_i),
        .en(pc_en_const),
        .instr(if_instr));

  assign pc_en_const = 1'b1;

  assign zero_const = 1'b0;
  assign one_const  = 1'b1;

endmodule
