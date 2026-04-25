//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sun Apr 19 22:31:20 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target debug.bd
//Design      : debug
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RV32I_EX_imp_13OU41B
   (alu_op,
    base_data,
    clk,
    ex_branch_en,
    ex_branch_funct3,
    ex_flush_req,
    ex_imm_u,
    ex_jal,
    ex_jalr,
    ex_mem_re,
    ex_mem_size,
    ex_mem_unsigned,
    ex_mem_we,
    ex_pc,
    ex_pc_plus4,
    ex_rd,
    ex_rd_we,
    ex_rs1,
    ex_rs2,
    ex_store_data,
    ex_valid,
    ex_wb_sel,
    imm,
    mem_alu_result,
    mem_imm_u,
    mem_mem_re,
    mem_mem_size,
    mem_mem_unsigned,
    mem_mem_we,
    mem_pc_plus4,
    mem_rd,
    mem_rd_we,
    mem_store_data,
    mem_valid,
    mem_wb_data,
    mem_wb_sel,
    op_a_sel,
    op_b_sel,
    pc_redirect_target,
    pc_redirect_valid,
    rst,
    wb_rd,
    wb_rd_we);
  input [3:0]alu_op;
  input [31:0]base_data;
  input clk;
  input ex_branch_en;
  input [2:0]ex_branch_funct3;
  output ex_flush_req;
  input [31:0]ex_imm_u;
  input ex_jal;
  input ex_jalr;
  input ex_mem_re;
  input [1:0]ex_mem_size;
  input ex_mem_unsigned;
  input ex_mem_we;
  input [31:0]ex_pc;
  input [31:0]ex_pc_plus4;
  input [4:0]ex_rd;
  input ex_rd_we;
  input [4:0]ex_rs1;
  input [4:0]ex_rs2;
  input [31:0]ex_store_data;
  input ex_valid;
  input [1:0]ex_wb_sel;
  input [31:0]imm;
  output [31:0]mem_alu_result;
  output [31:0]mem_imm_u;
  output mem_mem_re;
  output [1:0]mem_mem_size;
  output mem_mem_unsigned;
  output mem_mem_we;
  output [31:0]mem_pc_plus4;
  output [4:0]mem_rd;
  output mem_rd_we;
  output [31:0]mem_store_data;
  output mem_valid;
  input [31:0]mem_wb_data;
  output [1:0]mem_wb_sel;
  input [1:0]op_a_sel;
  input [1:0]op_b_sel;
  output [31:0]pc_redirect_target;
  output pc_redirect_valid;
  input rst;
  input [4:0]wb_rd;
  input wb_rd_we;

  wire [31:0]Net;
  wire [31:0]Net1;
  wire [1:0]Net2;
  wire [3:0]RV32I_ID_ex_alu_op;
  wire RV32I_ID_ex_branch_en;
  wire [2:0]RV32I_ID_ex_branch_funct3;
  wire [31:0]RV32I_ID_ex_imm;
  wire [31:0]RV32I_ID_ex_imm_u;
  wire RV32I_ID_ex_jal;
  wire RV32I_ID_ex_jalr;
  wire RV32I_ID_ex_mem_re;
  wire [1:0]RV32I_ID_ex_mem_size;
  wire RV32I_ID_ex_mem_unsigned;
  wire RV32I_ID_ex_mem_we;
  wire [31:0]RV32I_ID_ex_pc;
  wire [31:0]RV32I_ID_ex_pc_plus4;
  wire [4:0]RV32I_ID_ex_rd;
  wire RV32I_ID_ex_rd_we;
  wire [4:0]RV32I_ID_ex_rs1;
  wire [4:0]RV32I_ID_ex_rs2;
  wire [31:0]RV32I_ID_ex_rs2_data;
  wire RV32I_ID_ex_valid;
  wire [1:0]RV32I_ID_ex_wb_sel;
  wire RV32I_RESET_Res;
  wire [31:0]base_data_1;
  wire [1:0]op_a_sel_1;
  wire [31:0]rv32i_alu_wrapper_0_y;
  wire rv32i_branch_unit_wr_0_ex_flush_req;
  wire [31:0]rv32i_branch_unit_wr_0_pc_redirect_target;
  wire rv32i_branch_unit_wr_0_pc_redirect_valid;
  wire [31:0]rv32i_ex_mem_reg_wra_0_mem_imm_u;
  wire rv32i_ex_mem_reg_wra_0_mem_mem_re;
  wire [1:0]rv32i_ex_mem_reg_wra_0_mem_mem_size;
  wire rv32i_ex_mem_reg_wra_0_mem_mem_unsigned;
  wire rv32i_ex_mem_reg_wra_0_mem_mem_we;
  wire [31:0]rv32i_ex_mem_reg_wra_0_mem_pc_plus4;
  wire [4:0]rv32i_ex_mem_reg_wra_0_mem_rd;
  wire rv32i_ex_mem_reg_wra_0_mem_rd_we;
  wire [31:0]rv32i_ex_mem_reg_wra_0_mem_store_data;
  wire rv32i_ex_mem_reg_wra_0_mem_valid;
  wire [1:0]rv32i_ex_mem_reg_wra_0_mem_wb_sel;
  wire [31:0]rv32i_forward_mux_wr_0_out_data;
  wire [31:0]rv32i_forward_mux_wr_0_out_data1;
  wire [31:0]rv32i_forward_mux_wr_1_out_data;
  wire [31:0]rv32i_forward_mux_wr_1_out_data1;
  wire [1:0]rv32i_forwarding_uni_0_forward_a;
  wire [1:0]rv32i_forwarding_uni_0_forward_b;
  wire [0:0]util_vector_logic_4_Res;
  wire [4:0]wb_rd_1;
  wire wb_rd_we_1;
  wire zynq_ultra_ps_e_1_pl_clk0;

  assign Net1 = mem_wb_data[31:0];
  assign Net2 = op_b_sel[1:0];
  assign RV32I_ID_ex_alu_op = alu_op[3:0];
  assign RV32I_ID_ex_branch_en = ex_branch_en;
  assign RV32I_ID_ex_branch_funct3 = ex_branch_funct3[2:0];
  assign RV32I_ID_ex_imm = imm[31:0];
  assign RV32I_ID_ex_imm_u = ex_imm_u[31:0];
  assign RV32I_ID_ex_jal = ex_jal;
  assign RV32I_ID_ex_jalr = ex_jalr;
  assign RV32I_ID_ex_mem_re = ex_mem_re;
  assign RV32I_ID_ex_mem_size = ex_mem_size[1:0];
  assign RV32I_ID_ex_mem_unsigned = ex_mem_unsigned;
  assign RV32I_ID_ex_mem_we = ex_mem_we;
  assign RV32I_ID_ex_pc = ex_pc[31:0];
  assign RV32I_ID_ex_pc_plus4 = ex_pc_plus4[31:0];
  assign RV32I_ID_ex_rd = ex_rd[4:0];
  assign RV32I_ID_ex_rd_we = ex_rd_we;
  assign RV32I_ID_ex_rs1 = ex_rs1[4:0];
  assign RV32I_ID_ex_rs2 = ex_rs2[4:0];
  assign RV32I_ID_ex_rs2_data = ex_store_data[31:0];
  assign RV32I_ID_ex_valid = ex_valid;
  assign RV32I_ID_ex_wb_sel = ex_wb_sel[1:0];
  assign RV32I_RESET_Res = rst;
  assign base_data_1 = base_data[31:0];
  assign ex_flush_req = rv32i_branch_unit_wr_0_ex_flush_req;
  assign mem_alu_result[31:0] = Net;
  assign mem_imm_u[31:0] = rv32i_ex_mem_reg_wra_0_mem_imm_u;
  assign mem_mem_re = rv32i_ex_mem_reg_wra_0_mem_mem_re;
  assign mem_mem_size[1:0] = rv32i_ex_mem_reg_wra_0_mem_mem_size;
  assign mem_mem_unsigned = rv32i_ex_mem_reg_wra_0_mem_mem_unsigned;
  assign mem_mem_we = rv32i_ex_mem_reg_wra_0_mem_mem_we;
  assign mem_pc_plus4[31:0] = rv32i_ex_mem_reg_wra_0_mem_pc_plus4;
  assign mem_rd[4:0] = rv32i_ex_mem_reg_wra_0_mem_rd;
  assign mem_rd_we = rv32i_ex_mem_reg_wra_0_mem_rd_we;
  assign mem_store_data[31:0] = rv32i_ex_mem_reg_wra_0_mem_store_data;
  assign mem_valid = rv32i_ex_mem_reg_wra_0_mem_valid;
  assign mem_wb_sel[1:0] = rv32i_ex_mem_reg_wra_0_mem_wb_sel;
  assign op_a_sel_1 = op_a_sel[1:0];
  assign pc_redirect_target[31:0] = rv32i_branch_unit_wr_0_pc_redirect_target;
  assign pc_redirect_valid = rv32i_branch_unit_wr_0_pc_redirect_valid;
  assign wb_rd_1 = wb_rd[4:0];
  assign wb_rd_we_1 = wb_rd_we;
  assign zynq_ultra_ps_e_1_pl_clk0 = clk;
  debug_rv32i_alu_wrapper_0_0 rv32i_alu_wrapper_0
       (.a(rv32i_forward_mux_wr_0_out_data),
        .alu_op(RV32I_ID_ex_alu_op),
        .b(rv32i_forward_mux_wr_1_out_data),
        .y(rv32i_alu_wrapper_0_y));
  debug_rv32i_branch_unit_wr_0_0 rv32i_branch_unit_wr_0
       (.ex_branch_en(RV32I_ID_ex_branch_en),
        .ex_branch_funct3(RV32I_ID_ex_branch_funct3),
        .ex_flush_req(rv32i_branch_unit_wr_0_ex_flush_req),
        .ex_imm(RV32I_ID_ex_imm),
        .ex_jal(RV32I_ID_ex_jal),
        .ex_jalr(RV32I_ID_ex_jalr),
        .ex_pc(RV32I_ID_ex_pc),
        .ex_rs1_data(rv32i_forward_mux_wr_0_out_data),
        .ex_rs2_data(rv32i_forward_mux_wr_1_out_data),
        .ex_valid(RV32I_ID_ex_valid),
        .pc_redirect_target(rv32i_branch_unit_wr_0_pc_redirect_target),
        .pc_redirect_valid(rv32i_branch_unit_wr_0_pc_redirect_valid));
  debug_rv32i_ex_mem_reg_wra_0_0 rv32i_ex_mem_reg_wra_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .ex_alu_result(rv32i_alu_wrapper_0_y),
        .ex_exception_cause({1'b0,1'b0,1'b0,1'b0}),
        .ex_exception_tval({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ex_exception_valid(1'b0),
        .ex_imm_u(RV32I_ID_ex_imm_u),
        .ex_mem_re(RV32I_ID_ex_mem_re),
        .ex_mem_size(RV32I_ID_ex_mem_size),
        .ex_mem_unsigned(RV32I_ID_ex_mem_unsigned),
        .ex_mem_we(RV32I_ID_ex_mem_we),
        .ex_pc(RV32I_ID_ex_pc),
        .ex_pc_plus4(RV32I_ID_ex_pc_plus4),
        .ex_rd(RV32I_ID_ex_rd),
        .ex_rd_we(RV32I_ID_ex_rd_we),
        .ex_store_data(RV32I_ID_ex_rs2_data),
        .ex_valid(RV32I_ID_ex_valid),
        .ex_wb_sel(RV32I_ID_ex_wb_sel),
        .flush(1'b0),
        .mem_alu_result(Net),
        .mem_imm_u(rv32i_ex_mem_reg_wra_0_mem_imm_u),
        .mem_mem_re(rv32i_ex_mem_reg_wra_0_mem_mem_re),
        .mem_mem_size(rv32i_ex_mem_reg_wra_0_mem_mem_size),
        .mem_mem_unsigned(rv32i_ex_mem_reg_wra_0_mem_mem_unsigned),
        .mem_mem_we(rv32i_ex_mem_reg_wra_0_mem_mem_we),
        .mem_pc_plus4(rv32i_ex_mem_reg_wra_0_mem_pc_plus4),
        .mem_rd(rv32i_ex_mem_reg_wra_0_mem_rd),
        .mem_rd_we(rv32i_ex_mem_reg_wra_0_mem_rd_we),
        .mem_store_data(rv32i_ex_mem_reg_wra_0_mem_store_data),
        .mem_valid(rv32i_ex_mem_reg_wra_0_mem_valid),
        .mem_wb_sel(rv32i_ex_mem_reg_wra_0_mem_wb_sel),
        .rst(RV32I_RESET_Res),
        .stall(1'b0));
  debug_rv32i_forward_mux_wr_0_0 rv32i_forward_mux_wr_0
       (.base_data(base_data_1),
        .ex_mem_data(Net),
        .forward_sel(rv32i_forwarding_uni_0_forward_a),
        .mem_wb_data(Net1),
        .out_data(rv32i_forward_mux_wr_0_out_data1));
  debug_rv32i_forward_mux_wr_1_0 rv32i_forward_mux_wr_1
       (.base_data(RV32I_ID_ex_rs2_data),
        .ex_mem_data(Net),
        .forward_sel(rv32i_forwarding_uni_0_forward_b),
        .mem_wb_data(Net1),
        .out_data(rv32i_forward_mux_wr_1_out_data1));
  debug_rv32i_forwarding_uni_0_0 rv32i_forwarding_uni_0
       (.ex_op_b_sel(Net2),
        .ex_rs1(RV32I_ID_ex_rs1),
        .ex_rs2(RV32I_ID_ex_rs2),
        .forward_a(rv32i_forwarding_uni_0_forward_a),
        .forward_b(rv32i_forwarding_uni_0_forward_b),
        .mem_rd(rv32i_ex_mem_reg_wra_0_mem_rd),
        .mem_rd_we(util_vector_logic_4_Res),
        .wb_rd(wb_rd_1),
        .wb_rd_we(wb_rd_we_1));
  debug_rv32i_operand_a_mux_0_0 rv32i_operand_a_mux_0
       (.op_a_sel(op_a_sel_1),
        .operand_a(rv32i_forward_mux_wr_0_out_data),
        .pc(RV32I_ID_ex_pc),
        .rs1_data(rv32i_forward_mux_wr_0_out_data1));
  debug_rv32i_operand_b_mux_0_0 rv32i_operand_b_mux_0
       (.imm(RV32I_ID_ex_imm),
        .op_b_sel(Net2),
        .operand_b(rv32i_forward_mux_wr_1_out_data),
        .rs2_data(rv32i_forward_mux_wr_1_out_data1));
  debug_util_vector_logic_4_0 util_vector_logic_4
       (.Op1(rv32i_ex_mem_reg_wra_0_mem_valid),
        .Op2(rv32i_ex_mem_reg_wra_0_mem_rd_we),
        .Res(util_vector_logic_4_Res));
endmodule

module RV32I_ID_imp_GUS60R
   (bubble,
    clk,
    ex_alu_op,
    ex_branch_en,
    ex_branch_funct3,
    ex_imm,
    ex_imm_u,
    ex_jal,
    ex_jalr,
    ex_mem_re,
    ex_mem_size,
    ex_mem_unsigned,
    ex_mem_we,
    ex_op_a_sel1,
    ex_op_b_sel,
    ex_pc,
    ex_pc_plus4,
    ex_rd,
    ex_rd_we,
    ex_rs1,
    ex_rs1_data,
    ex_rs2,
    ex_rs2_data,
    ex_valid,
    ex_wb_sel,
    id_pc,
    id_pc_plus4,
    id_valid,
    instr,
    rd_addr,
    rd_wdata,
    rd_we,
    rst);
  input bubble;
  input clk;
  output [3:0]ex_alu_op;
  output ex_branch_en;
  output [2:0]ex_branch_funct3;
  output [31:0]ex_imm;
  output [31:0]ex_imm_u;
  output ex_jal;
  output ex_jalr;
  output ex_mem_re;
  output [1:0]ex_mem_size;
  output ex_mem_unsigned;
  output ex_mem_we;
  output [1:0]ex_op_a_sel1;
  output [1:0]ex_op_b_sel;
  output [31:0]ex_pc;
  output [31:0]ex_pc_plus4;
  output [4:0]ex_rd;
  output ex_rd_we;
  output [4:0]ex_rs1;
  output [31:0]ex_rs1_data;
  output [4:0]ex_rs2;
  output [31:0]ex_rs2_data;
  output ex_valid;
  output [1:0]ex_wb_sel;
  input [31:0]id_pc;
  input [31:0]id_pc_plus4;
  input id_valid;
  input [31:0]instr;
  input [4:0]rd_addr;
  input [31:0]rd_wdata;
  input rd_we;
  input rst;

  wire [0:0]Net;
  wire [31:0]RV32I_IF_instr_id_out;
  wire [31:0]RV32I_IF_pc_id_out;
  wire [31:0]RV32I_IF_pc_plus4_id_out;
  wire RV32I_IF_valid_id_out;
  wire RV32I_RESET_Res;
  wire bubble_1;
  wire [4:0]rd_addr_1;
  wire [31:0]rd_wdata_1;
  wire rd_we_1;
  wire [3:0]rv32i_control_full_w_0_alu_op;
  wire rv32i_control_full_w_0_branch_en;
  wire [2:0]rv32i_control_full_w_0_branch_f3;
  wire [2:0]rv32i_control_full_w_0_imm_sel;
  wire rv32i_control_full_w_0_jal;
  wire rv32i_control_full_w_0_jalr;
  wire [1:0]rv32i_control_full_w_0_lsu_size;
  wire rv32i_control_full_w_0_lsu_unsigned;
  wire rv32i_control_full_w_0_mem_re;
  wire rv32i_control_full_w_0_mem_we;
  wire [1:0]rv32i_control_full_w_0_opA_sel;
  wire [1:0]rv32i_control_full_w_0_opB_sel;
  wire rv32i_control_full_w_0_rd_we;
  wire [1:0]rv32i_control_full_w_0_wb_sel;
  wire rv32i_decoder_wrapper_0_bit30;
  wire [2:0]rv32i_decoder_wrapper_0_fmt;
  wire [2:0]rv32i_decoder_wrapper_0_funct3;
  wire [6:0]rv32i_decoder_wrapper_0_funct7;
  wire [31:0]rv32i_decoder_wrapper_0_imm_b;
  wire [31:0]rv32i_decoder_wrapper_0_imm_i;
  wire [31:0]rv32i_decoder_wrapper_0_imm_j;
  wire [31:0]rv32i_decoder_wrapper_0_imm_s;
  wire [31:0]rv32i_decoder_wrapper_0_imm_u;
  wire [6:0]rv32i_decoder_wrapper_0_opcode;
  wire [4:0]rv32i_decoder_wrapper_0_rd;
  wire [4:0]rv32i_decoder_wrapper_0_rs1;
  wire [4:0]rv32i_decoder_wrapper_0_rs2;
  wire [3:0]rv32i_id_ex_reg_wrap_0_ex_alu_op;
  wire rv32i_id_ex_reg_wrap_0_ex_branch_en;
  wire [2:0]rv32i_id_ex_reg_wrap_0_ex_branch_funct3;
  wire [31:0]rv32i_id_ex_reg_wrap_0_ex_imm;
  wire [31:0]rv32i_id_ex_reg_wrap_0_ex_imm_u;
  wire rv32i_id_ex_reg_wrap_0_ex_jal;
  wire rv32i_id_ex_reg_wrap_0_ex_jalr;
  wire rv32i_id_ex_reg_wrap_0_ex_mem_re;
  wire [1:0]rv32i_id_ex_reg_wrap_0_ex_mem_size;
  wire rv32i_id_ex_reg_wrap_0_ex_mem_unsigned;
  wire rv32i_id_ex_reg_wrap_0_ex_mem_we;
  wire [1:0]rv32i_id_ex_reg_wrap_0_ex_op_a_sel;
  wire [1:0]rv32i_id_ex_reg_wrap_0_ex_op_b_sel;
  wire [31:0]rv32i_id_ex_reg_wrap_0_ex_pc;
  wire [31:0]rv32i_id_ex_reg_wrap_0_ex_pc_plus4;
  wire [4:0]rv32i_id_ex_reg_wrap_0_ex_rd;
  wire rv32i_id_ex_reg_wrap_0_ex_rd_we;
  wire [4:0]rv32i_id_ex_reg_wrap_0_ex_rs1;
  wire [31:0]rv32i_id_ex_reg_wrap_0_ex_rs1_data;
  wire [4:0]rv32i_id_ex_reg_wrap_0_ex_rs2;
  wire [31:0]rv32i_id_ex_reg_wrap_0_ex_rs2_data;
  wire rv32i_id_ex_reg_wrap_0_ex_valid;
  wire [1:0]rv32i_id_ex_reg_wrap_0_ex_wb_sel;
  wire [31:0]rv32i_imm_mux_wrapper_0_imm_out;
  wire [31:0]rv32i_regfile_wrapper_0_rs1_rdata;
  wire [31:0]rv32i_regfile_wrapper_0_rs2_rdata;
  wire zynq_ultra_ps_e_1_pl_clk0;

  assign RV32I_IF_instr_id_out = instr[31:0];
  assign RV32I_IF_pc_id_out = id_pc[31:0];
  assign RV32I_IF_pc_plus4_id_out = id_pc_plus4[31:0];
  assign RV32I_IF_valid_id_out = id_valid;
  assign RV32I_RESET_Res = rst;
  assign bubble_1 = bubble;
  assign ex_alu_op[3:0] = rv32i_id_ex_reg_wrap_0_ex_alu_op;
  assign ex_branch_en = rv32i_id_ex_reg_wrap_0_ex_branch_en;
  assign ex_branch_funct3[2:0] = rv32i_id_ex_reg_wrap_0_ex_branch_funct3;
  assign ex_imm[31:0] = rv32i_id_ex_reg_wrap_0_ex_imm;
  assign ex_imm_u[31:0] = rv32i_id_ex_reg_wrap_0_ex_imm_u;
  assign ex_jal = rv32i_id_ex_reg_wrap_0_ex_jal;
  assign ex_jalr = rv32i_id_ex_reg_wrap_0_ex_jalr;
  assign ex_mem_re = rv32i_id_ex_reg_wrap_0_ex_mem_re;
  assign ex_mem_size[1:0] = rv32i_id_ex_reg_wrap_0_ex_mem_size;
  assign ex_mem_unsigned = rv32i_id_ex_reg_wrap_0_ex_mem_unsigned;
  assign ex_mem_we = rv32i_id_ex_reg_wrap_0_ex_mem_we;
  assign ex_op_a_sel1[1:0] = rv32i_id_ex_reg_wrap_0_ex_op_a_sel;
  assign ex_op_b_sel[1:0] = rv32i_id_ex_reg_wrap_0_ex_op_b_sel;
  assign ex_pc[31:0] = rv32i_id_ex_reg_wrap_0_ex_pc;
  assign ex_pc_plus4[31:0] = rv32i_id_ex_reg_wrap_0_ex_pc_plus4;
  assign ex_rd[4:0] = rv32i_id_ex_reg_wrap_0_ex_rd;
  assign ex_rd_we = rv32i_id_ex_reg_wrap_0_ex_rd_we;
  assign ex_rs1[4:0] = rv32i_id_ex_reg_wrap_0_ex_rs1;
  assign ex_rs1_data[31:0] = rv32i_id_ex_reg_wrap_0_ex_rs1_data;
  assign ex_rs2[4:0] = rv32i_id_ex_reg_wrap_0_ex_rs2;
  assign ex_rs2_data[31:0] = rv32i_id_ex_reg_wrap_0_ex_rs2_data;
  assign ex_valid = rv32i_id_ex_reg_wrap_0_ex_valid;
  assign ex_wb_sel[1:0] = rv32i_id_ex_reg_wrap_0_ex_wb_sel;
  assign rd_addr_1 = rd_addr[4:0];
  assign rd_wdata_1 = rd_wdata[31:0];
  assign rd_we_1 = rd_we;
  assign zynq_ultra_ps_e_1_pl_clk0 = clk;
  debug_rv32i_control_full_w_0_0 rv32i_control_full_w_0
       (.alu_op(rv32i_control_full_w_0_alu_op),
        .bit30(rv32i_decoder_wrapper_0_bit30),
        .branch_en(rv32i_control_full_w_0_branch_en),
        .branch_f3(rv32i_control_full_w_0_branch_f3),
        .fmt(rv32i_decoder_wrapper_0_fmt),
        .funct3(rv32i_decoder_wrapper_0_funct3),
        .funct7(rv32i_decoder_wrapper_0_funct7),
        .imm_sel(rv32i_control_full_w_0_imm_sel),
        .jal(rv32i_control_full_w_0_jal),
        .jalr(rv32i_control_full_w_0_jalr),
        .lsu_size(rv32i_control_full_w_0_lsu_size),
        .lsu_unsigned(rv32i_control_full_w_0_lsu_unsigned),
        .mem_re(rv32i_control_full_w_0_mem_re),
        .mem_we(rv32i_control_full_w_0_mem_we),
        .opA_sel(rv32i_control_full_w_0_opA_sel),
        .opB_sel(rv32i_control_full_w_0_opB_sel),
        .opcode(rv32i_decoder_wrapper_0_opcode),
        .rd_we(rv32i_control_full_w_0_rd_we),
        .wb_sel(rv32i_control_full_w_0_wb_sel));
  debug_rv32i_decoder_wrapper_0_0 rv32i_decoder_wrapper_0
       (.bit30(rv32i_decoder_wrapper_0_bit30),
        .fmt(rv32i_decoder_wrapper_0_fmt),
        .funct3(rv32i_decoder_wrapper_0_funct3),
        .funct7(rv32i_decoder_wrapper_0_funct7),
        .imm_b(rv32i_decoder_wrapper_0_imm_b),
        .imm_i(rv32i_decoder_wrapper_0_imm_i),
        .imm_j(rv32i_decoder_wrapper_0_imm_j),
        .imm_s(rv32i_decoder_wrapper_0_imm_s),
        .imm_u(rv32i_decoder_wrapper_0_imm_u),
        .instr(RV32I_IF_instr_id_out),
        .opcode(rv32i_decoder_wrapper_0_opcode),
        .rd(rv32i_decoder_wrapper_0_rd),
        .rs1(rv32i_decoder_wrapper_0_rs1),
        .rs2(rv32i_decoder_wrapper_0_rs2));
  debug_rv32i_hazard_detecti_0_0 rv32i_hazard_detecti_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .id_ex_mem_re(rv32i_id_ex_reg_wrap_0_ex_mem_re),
        .id_ex_rd({rv32i_id_ex_reg_wrap_0_ex_rd_we,rv32i_id_ex_reg_wrap_0_ex_rd_we,rv32i_id_ex_reg_wrap_0_ex_rd_we,rv32i_id_ex_reg_wrap_0_ex_rd_we,rv32i_id_ex_reg_wrap_0_ex_rd_we}),
        .if_id_rs1(rv32i_decoder_wrapper_0_rs1),
        .if_id_rs1_used(Net),
        .if_id_rs2(rv32i_decoder_wrapper_0_rs2),
        .if_id_rs2_used(Net),
        .rst(RV32I_RESET_Res));
  debug_rv32i_id_ex_reg_wrap_0_0 rv32i_id_ex_reg_wrap_0
       (.bubble(bubble_1),
        .clk(zynq_ultra_ps_e_1_pl_clk0),
        .ex_alu_op(rv32i_id_ex_reg_wrap_0_ex_alu_op),
        .ex_branch_en(rv32i_id_ex_reg_wrap_0_ex_branch_en),
        .ex_branch_funct3(rv32i_id_ex_reg_wrap_0_ex_branch_funct3),
        .ex_imm(rv32i_id_ex_reg_wrap_0_ex_imm),
        .ex_imm_u(rv32i_id_ex_reg_wrap_0_ex_imm_u),
        .ex_jal(rv32i_id_ex_reg_wrap_0_ex_jal),
        .ex_jalr(rv32i_id_ex_reg_wrap_0_ex_jalr),
        .ex_mem_re(rv32i_id_ex_reg_wrap_0_ex_mem_re),
        .ex_mem_size(rv32i_id_ex_reg_wrap_0_ex_mem_size),
        .ex_mem_unsigned(rv32i_id_ex_reg_wrap_0_ex_mem_unsigned),
        .ex_mem_we(rv32i_id_ex_reg_wrap_0_ex_mem_we),
        .ex_op_a_sel(rv32i_id_ex_reg_wrap_0_ex_op_a_sel),
        .ex_op_b_sel(rv32i_id_ex_reg_wrap_0_ex_op_b_sel),
        .ex_pc(rv32i_id_ex_reg_wrap_0_ex_pc),
        .ex_pc_plus4(rv32i_id_ex_reg_wrap_0_ex_pc_plus4),
        .ex_rd(rv32i_id_ex_reg_wrap_0_ex_rd),
        .ex_rd_we(rv32i_id_ex_reg_wrap_0_ex_rd_we),
        .ex_rs1(rv32i_id_ex_reg_wrap_0_ex_rs1),
        .ex_rs1_data(rv32i_id_ex_reg_wrap_0_ex_rs1_data),
        .ex_rs2(rv32i_id_ex_reg_wrap_0_ex_rs2),
        .ex_rs2_data(rv32i_id_ex_reg_wrap_0_ex_rs2_data),
        .ex_valid(rv32i_id_ex_reg_wrap_0_ex_valid),
        .ex_wb_sel(rv32i_id_ex_reg_wrap_0_ex_wb_sel),
        .id_alu_op(rv32i_control_full_w_0_alu_op),
        .id_branch_en(rv32i_control_full_w_0_branch_en),
        .id_branch_funct3(rv32i_control_full_w_0_branch_f3),
        .id_imm(rv32i_imm_mux_wrapper_0_imm_out),
        .id_imm_u(rv32i_decoder_wrapper_0_imm_u),
        .id_jal(rv32i_control_full_w_0_jal),
        .id_jalr(rv32i_control_full_w_0_jalr),
        .id_mem_re(rv32i_control_full_w_0_mem_re),
        .id_mem_size(rv32i_control_full_w_0_lsu_size),
        .id_mem_unsigned(rv32i_control_full_w_0_lsu_unsigned),
        .id_mem_we(rv32i_control_full_w_0_mem_we),
        .id_op_a_sel(rv32i_control_full_w_0_opA_sel),
        .id_op_b_sel(rv32i_control_full_w_0_opB_sel),
        .id_pc(RV32I_IF_pc_id_out),
        .id_pc_plus4(RV32I_IF_pc_plus4_id_out),
        .id_rd(rv32i_decoder_wrapper_0_rd),
        .id_rd_we(rv32i_control_full_w_0_rd_we),
        .id_rs1(rv32i_decoder_wrapper_0_rs1),
        .id_rs1_data(rv32i_regfile_wrapper_0_rs1_rdata),
        .id_rs2(rv32i_decoder_wrapper_0_rs2),
        .id_rs2_data(rv32i_regfile_wrapper_0_rs2_rdata),
        .id_valid(RV32I_IF_valid_id_out),
        .id_wb_sel(rv32i_control_full_w_0_wb_sel),
        .rst(RV32I_RESET_Res),
        .stall(1'b0));
  debug_rv32i_imm_mux_wrapper_0_0 rv32i_imm_mux_wrapper_0
       (.imm_b(rv32i_decoder_wrapper_0_imm_b),
        .imm_i(rv32i_decoder_wrapper_0_imm_i),
        .imm_j(rv32i_decoder_wrapper_0_imm_j),
        .imm_out(rv32i_imm_mux_wrapper_0_imm_out),
        .imm_s(rv32i_decoder_wrapper_0_imm_s),
        .imm_sel(rv32i_control_full_w_0_imm_sel),
        .imm_u(rv32i_decoder_wrapper_0_imm_u));
  debug_rv32i_regfile_wrapper_0_0 rv32i_regfile_wrapper_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .rd_addr(rd_addr_1),
        .rd_wdata(rd_wdata_1),
        .rd_we(rd_we_1),
        .rs1_addr(rv32i_decoder_wrapper_0_rs1),
        .rs1_rdata(rv32i_regfile_wrapper_0_rs1_rdata),
        .rs2_addr(rv32i_decoder_wrapper_0_rs2),
        .rs2_rdata(rv32i_regfile_wrapper_0_rs2_rdata));
  debug_xlconstant_1_3 xlconstant_2
       (.dout(Net));
endmodule

module RV32I_IF_imp_VHE168
   (clk,
    flush,
    instr_id_out,
    pc_id_out,
    pc_plus4_id_out,
    pc_redirect_target,
    pc_redirect_valid,
    rst,
    valid_id_out);
  input clk;
  input flush;
  output [31:0]instr_id_out;
  output [31:0]pc_id_out;
  output [31:0]pc_plus4_id_out;
  input [31:0]pc_redirect_target;
  input pc_redirect_valid;
  input rst;
  output valid_id_out;

  wire RV32I_RESET_Res;
  wire [31:0]blk_mem_gen_0_douta;
  wire flush_1;
  wire [31:0]pc_redirect_target_1;
  wire pc_redirect_valid_1;
  wire [10:0]pc_to_rom_addr_wrapp_0_a;
  wire [31:0]pc_unit_wrapper_0_pc;
  wire [31:0]pc_unit_wrapper_0_pc_plus4;
  wire [31:0]rv32i_if_id_reg_wrap_0_instr_id_out;
  wire [31:0]rv32i_if_id_reg_wrap_0_pc_id_out;
  wire [31:0]rv32i_if_id_reg_wrap_0_pc_plus4_id_out;
  wire rv32i_if_id_reg_wrap_0_valid_id_out;
  wire [0:0]xlconstant_1_dout;
  wire zynq_ultra_ps_e_1_pl_clk0;

  assign RV32I_RESET_Res = rst;
  assign flush_1 = flush;
  assign instr_id_out[31:0] = rv32i_if_id_reg_wrap_0_instr_id_out;
  assign pc_id_out[31:0] = rv32i_if_id_reg_wrap_0_pc_id_out;
  assign pc_plus4_id_out[31:0] = rv32i_if_id_reg_wrap_0_pc_plus4_id_out;
  assign pc_redirect_target_1 = pc_redirect_target[31:0];
  assign pc_redirect_valid_1 = pc_redirect_valid;
  assign valid_id_out = rv32i_if_id_reg_wrap_0_valid_id_out;
  assign zynq_ultra_ps_e_1_pl_clk0 = clk;
  debug_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra(pc_to_rom_addr_wrapp_0_a),
        .clka(zynq_ultra_ps_e_1_pl_clk0),
        .douta(blk_mem_gen_0_douta),
        .ena(xlconstant_1_dout));
  debug_pc_to_rom_addr_wrapp_0_1 pc_to_rom_addr_wrapp_0
       (.a(pc_to_rom_addr_wrapp_0_a),
        .pc(pc_unit_wrapper_0_pc));
  debug_pc_unit_wrapper_0_1 pc_unit_wrapper_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .pc(pc_unit_wrapper_0_pc),
        .pc_en(xlconstant_1_dout),
        .pc_plus4(pc_unit_wrapper_0_pc_plus4),
        .pc_redirect_target(pc_redirect_target_1),
        .pc_redirect_valid(pc_redirect_valid_1),
        .rst(RV32I_RESET_Res));
  debug_rv32i_if_id_reg_wrap_0_1 rv32i_if_id_reg_wrap_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .flush(flush_1),
        .hold(1'b0),
        .instr_bram_in(blk_mem_gen_0_douta),
        .instr_id_out(rv32i_if_id_reg_wrap_0_instr_id_out),
        .pc_fetch_in(pc_unit_wrapper_0_pc),
        .pc_id_out(rv32i_if_id_reg_wrap_0_pc_id_out),
        .pc_plus4_fetch_in(pc_unit_wrapper_0_pc_plus4),
        .pc_plus4_id_out(rv32i_if_id_reg_wrap_0_pc_plus4_id_out),
        .rst(RV32I_RESET_Res),
        .valid_fetch_in(xlconstant_1_dout),
        .valid_id_out(rv32i_if_id_reg_wrap_0_valid_id_out));
  debug_xlconstant_1_1 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

module RV32I_MEM_imp_1JDZ06
   (clk,
    flush,
    mem_alu_result,
    mem_imm_u,
    mem_mem_re,
    mem_mem_size,
    mem_mem_unsigned,
    mem_mem_we,
    mem_pc_plus4,
    mem_rd,
    mem_rd_we,
    mem_store_data,
    mem_valid,
    mem_wb_sel,
    rst,
    wb_alu_result,
    wb_data,
    wb_imm_u,
    wb_pc_plus4,
    wb_rd,
    wb_rd_we,
    wb_sel,
    wb_valid);
  input clk;
  input flush;
  input [31:0]mem_alu_result;
  input [31:0]mem_imm_u;
  input mem_mem_re;
  input [1:0]mem_mem_size;
  input mem_mem_unsigned;
  input mem_mem_we;
  input [31:0]mem_pc_plus4;
  input [4:0]mem_rd;
  input mem_rd_we;
  input [31:0]mem_store_data;
  input mem_valid;
  input [1:0]mem_wb_sel;
  input rst;
  output [31:0]wb_alu_result;
  output [31:0]wb_data;
  output [31:0]wb_imm_u;
  output [31:0]wb_pc_plus4;
  output [4:0]wb_rd;
  output wb_rd_we;
  output [1:0]wb_sel;
  output wb_valid;

  wire Net2;
  wire Net3;
  wire [31:0]RV32I_EX_mem_alu_result;
  wire [31:0]RV32I_EX_mem_imm_u;
  wire RV32I_EX_mem_mem_re;
  wire [1:0]RV32I_EX_mem_mem_size;
  wire RV32I_EX_mem_mem_unsigned;
  wire RV32I_EX_mem_mem_we;
  wire [31:0]RV32I_EX_mem_pc_plus4;
  wire [4:0]RV32I_EX_mem_rd;
  wire RV32I_EX_mem_rd_we;
  wire [31:0]RV32I_EX_mem_store_data;
  wire [1:0]RV32I_EX_mem_wb_sel;
  wire mem_valid_1;
  wire [31:0]rv32i_load_extender_0_load_data;
  wire [31:0]rv32i_mem_stage_wrap_0_dmem_addr;
  wire [3:0]rv32i_mem_stage_wrap_0_dmem_be;
  wire [31:0]rv32i_mem_stage_wrap_0_dmem_wdata;
  wire rv32i_mem_stage_wrap_0_dmem_we;
  wire [31:0]rv32i_mem_stage_wrap_0_wb_alu_result;
  wire [31:0]rv32i_mem_stage_wrap_0_wb_imm_u;
  wire [31:0]rv32i_mem_stage_wrap_0_wb_pc_plus4;
  wire [4:0]rv32i_mem_stage_wrap_0_wb_rd;
  wire rv32i_mem_stage_wrap_0_wb_rd_we;
  wire [1:0]rv32i_mem_stage_wrap_0_wb_sel;
  wire rv32i_mem_stage_wrap_0_wb_valid;
  wire [31:0]rv32i_mem_wb_reg_wra_0_wb_alu_result;
  wire [31:0]rv32i_mem_wb_reg_wra_0_wb_data;
  wire [31:0]rv32i_mem_wb_reg_wra_0_wb_imm_u;
  wire [31:0]rv32i_mem_wb_reg_wra_0_wb_pc_plus4;
  wire [4:0]rv32i_mem_wb_reg_wra_0_wb_rd;
  wire rv32i_mem_wb_reg_wra_0_wb_rd_we;
  wire [1:0]rv32i_mem_wb_reg_wra_0_wb_sel;
  wire rv32i_mem_wb_reg_wra_0_wb_valid;
  wire [31:0]rv32i_ram_datav_wrap_0_rdata;
  wire [0:0]xlconstant_1_dout;
  wire [1:0]xlslice_0_Dout;

  assign Net2 = clk;
  assign Net3 = rst;
  assign RV32I_EX_mem_alu_result = mem_alu_result[31:0];
  assign RV32I_EX_mem_imm_u = mem_imm_u[31:0];
  assign RV32I_EX_mem_mem_re = mem_mem_re;
  assign RV32I_EX_mem_mem_size = mem_mem_size[1:0];
  assign RV32I_EX_mem_mem_unsigned = mem_mem_unsigned;
  assign RV32I_EX_mem_mem_we = mem_mem_we;
  assign RV32I_EX_mem_pc_plus4 = mem_pc_plus4[31:0];
  assign RV32I_EX_mem_rd = mem_rd[4:0];
  assign RV32I_EX_mem_rd_we = mem_rd_we;
  assign RV32I_EX_mem_store_data = mem_store_data[31:0];
  assign RV32I_EX_mem_wb_sel = mem_wb_sel[1:0];
  assign mem_valid_1 = mem_valid;
  assign wb_alu_result[31:0] = rv32i_mem_wb_reg_wra_0_wb_alu_result;
  assign wb_data[31:0] = rv32i_mem_wb_reg_wra_0_wb_data;
  assign wb_imm_u[31:0] = rv32i_mem_wb_reg_wra_0_wb_imm_u;
  assign wb_pc_plus4[31:0] = rv32i_mem_wb_reg_wra_0_wb_pc_plus4;
  assign wb_rd[4:0] = rv32i_mem_wb_reg_wra_0_wb_rd;
  assign wb_rd_we = rv32i_mem_wb_reg_wra_0_wb_rd_we;
  assign wb_sel[1:0] = rv32i_mem_wb_reg_wra_0_wb_sel;
  assign wb_valid = rv32i_mem_wb_reg_wra_0_wb_valid;
  debug_rv32i_load_extender_0_0 rv32i_load_extender_0
       (.addr_offset(xlslice_0_Dout),
        .load_data(rv32i_load_extender_0_load_data),
        .mem_data(rv32i_ram_datav_wrap_0_rdata),
        .size(RV32I_EX_mem_mem_size),
        .unsigned_load(RV32I_EX_mem_mem_unsigned));
  debug_rv32i_mem_stage_wrap_0_0 rv32i_mem_stage_wrap_0
       (.clk(Net2),
        .dmem_addr(rv32i_mem_stage_wrap_0_dmem_addr),
        .dmem_be(rv32i_mem_stage_wrap_0_dmem_be),
        .dmem_rdata(rv32i_ram_datav_wrap_0_rdata),
        .dmem_wdata(rv32i_mem_stage_wrap_0_dmem_wdata),
        .dmem_we(rv32i_mem_stage_wrap_0_dmem_we),
        .kill(xlconstant_1_dout),
        .mem_alu_result(RV32I_EX_mem_alu_result),
        .mem_imm_u(RV32I_EX_mem_imm_u),
        .mem_mem_re(RV32I_EX_mem_mem_re),
        .mem_mem_size(RV32I_EX_mem_mem_size),
        .mem_mem_unsigned(RV32I_EX_mem_mem_unsigned),
        .mem_mem_we(RV32I_EX_mem_mem_we),
        .mem_pc_plus4(RV32I_EX_mem_pc_plus4),
        .mem_rd(RV32I_EX_mem_rd),
        .mem_rd_we(RV32I_EX_mem_rd_we),
        .mem_store_data(RV32I_EX_mem_store_data),
        .mem_valid(mem_valid_1),
        .mem_wb_sel(RV32I_EX_mem_wb_sel),
        .rst(Net3),
        .stall(xlconstant_1_dout),
        .wb_alu_result(rv32i_mem_stage_wrap_0_wb_alu_result),
        .wb_imm_u(rv32i_mem_stage_wrap_0_wb_imm_u),
        .wb_pc_plus4(rv32i_mem_stage_wrap_0_wb_pc_plus4),
        .wb_rd(rv32i_mem_stage_wrap_0_wb_rd),
        .wb_rd_we(rv32i_mem_stage_wrap_0_wb_rd_we),
        .wb_sel(rv32i_mem_stage_wrap_0_wb_sel),
        .wb_valid(rv32i_mem_stage_wrap_0_wb_valid));
  debug_rv32i_mem_wb_reg_wra_0_0 rv32i_mem_wb_reg_wra_0
       (.clk(Net2),
        .flush(xlconstant_1_dout),
        .mem_alu_result(rv32i_mem_stage_wrap_0_wb_alu_result),
        .mem_data(rv32i_load_extender_0_load_data),
        .mem_imm_u(rv32i_mem_stage_wrap_0_wb_imm_u),
        .mem_pc_plus4(rv32i_mem_stage_wrap_0_wb_pc_plus4),
        .mem_rd(rv32i_mem_stage_wrap_0_wb_rd),
        .mem_rd_we(rv32i_mem_stage_wrap_0_wb_rd_we),
        .mem_valid(rv32i_mem_stage_wrap_0_wb_valid),
        .mem_wb_sel(rv32i_mem_stage_wrap_0_wb_sel),
        .rst(Net3),
        .stall(xlconstant_1_dout),
        .wb_alu_result(rv32i_mem_wb_reg_wra_0_wb_alu_result),
        .wb_data(rv32i_mem_wb_reg_wra_0_wb_data),
        .wb_imm_u(rv32i_mem_wb_reg_wra_0_wb_imm_u),
        .wb_pc_plus4(rv32i_mem_wb_reg_wra_0_wb_pc_plus4),
        .wb_rd(rv32i_mem_wb_reg_wra_0_wb_rd),
        .wb_rd_we(rv32i_mem_wb_reg_wra_0_wb_rd_we),
        .wb_sel(rv32i_mem_wb_reg_wra_0_wb_sel),
        .wb_valid(rv32i_mem_wb_reg_wra_0_wb_valid));
  debug_rv32i_ram_datav_wrap_0_0 rv32i_ram_datav_wrap_0
       (.addr(rv32i_mem_stage_wrap_0_dmem_addr),
        .be(rv32i_mem_stage_wrap_0_dmem_be),
        .clk(Net2),
        .rdata(rv32i_ram_datav_wrap_0_rdata),
        .wdata(rv32i_mem_stage_wrap_0_dmem_wdata),
        .we(rv32i_mem_stage_wrap_0_dmem_we));
  debug_xlconstant_1_4 xlconstant_1
       (.dout(xlconstant_1_dout));
  debug_xlslice_0_0 xlslice_0
       (.Din(rv32i_mem_stage_wrap_0_dmem_addr),
        .Dout(xlslice_0_Dout));
endmodule

module RV32I_RESET_imp_1TY2PMO
   (Op2,
    Res,
    clk,
    ext_reset_in);
  input [0:0]Op2;
  output [0:0]Res;
  input clk;
  input ext_reset_in;

  wire [0:0]Op2_1;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]xlconstant_0_dout;
  wire zynq_ultra_ps_e_1_pl_clk0;
  wire zynq_ultra_ps_e_1_pl_resetn0;

  assign Op2_1 = Op2[0];
  assign Res[0] = util_vector_logic_0_Res;
  assign zynq_ultra_ps_e_1_pl_clk0 = clk;
  assign zynq_ultra_ps_e_1_pl_resetn0 = ext_reset_in;
  debug_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(xlconstant_0_dout),
        .ext_reset_in(zynq_ultra_ps_e_1_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(zynq_ultra_ps_e_1_pl_clk0));
  debug_util_vector_logic_0_1 util_vector_logic_0
       (.Op1(proc_sys_reset_0_peripheral_reset),
        .Op2(Op2_1),
        .Res(util_vector_logic_0_Res));
  debug_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module RV32I_WB_imp_1PBSD11
   (alu_y,
    imm_u,
    load_data,
    pc_plus4,
    rd_wdata,
    wb_sel);
  input [31:0]alu_y;
  input [31:0]imm_u;
  input [31:0]load_data;
  input [31:0]pc_plus4;
  output [31:0]rd_wdata;
  input [1:0]wb_sel;

  wire [31:0]alu_y_1;
  wire [31:0]imm_u_1;
  wire [31:0]load_data_1;
  wire [31:0]pc_plus4_1;
  wire [31:0]rv32i_wb_mux_wrapper_0_rd_wdata;
  wire [1:0]wb_sel_1;

  assign alu_y_1 = alu_y[31:0];
  assign imm_u_1 = imm_u[31:0];
  assign load_data_1 = load_data[31:0];
  assign pc_plus4_1 = pc_plus4[31:0];
  assign rd_wdata[31:0] = rv32i_wb_mux_wrapper_0_rd_wdata;
  assign wb_sel_1 = wb_sel[1:0];
  debug_rv32i_wb_mux_wrapper_0_0 rv32i_wb_mux_wrapper_0
       (.alu_y(alu_y_1),
        .imm_u(imm_u_1),
        .load_data(load_data_1),
        .pc_plus4(pc_plus4_1),
        .rd_wdata(rv32i_wb_mux_wrapper_0_rd_wdata),
        .wb_sel(wb_sel_1));
endmodule

(* CORE_GENERATION_INFO = "debug,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=debug,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=40,numReposBlks=34,numNonXlnxBlks=0,numHierBlks=6,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=22,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}" *) (* HW_HANDOFF = "debug.hwdef" *) 
module debug
   ();

  wire [1:0]Net2;
  wire [3:0]RV32I_ID_ex_alu_op;
  wire RV32I_ID_ex_branch_en;
  wire [2:0]RV32I_ID_ex_branch_funct3;
  wire [31:0]RV32I_ID_ex_imm;
  wire [31:0]RV32I_ID_ex_imm_u;
  wire RV32I_ID_ex_jal;
  wire RV32I_ID_ex_jalr;
  wire RV32I_ID_ex_mem_re;
  wire [1:0]RV32I_ID_ex_mem_size;
  wire RV32I_ID_ex_mem_unsigned;
  wire RV32I_ID_ex_mem_we;
  wire [1:0]RV32I_ID_ex_op_a_sel1;
  wire [31:0]RV32I_ID_ex_pc;
  wire [31:0]RV32I_ID_ex_pc_plus4;
  wire [4:0]RV32I_ID_ex_rd;
  wire RV32I_ID_ex_rd_we;
  wire [4:0]RV32I_ID_ex_rs1;
  wire [31:0]RV32I_ID_ex_rs1_data;
  wire [4:0]RV32I_ID_ex_rs2;
  wire [31:0]RV32I_ID_ex_rs2_data;
  wire RV32I_ID_ex_valid;
  wire [1:0]RV32I_ID_ex_wb_sel;
  wire [31:0]RV32I_IF_pc_id_out;
  wire [31:0]RV32I_IF_pc_plus4_id_out;
  wire [31:0]RV32I_MEM_wb_alu_result;
  wire [31:0]RV32I_MEM_wb_data;
  wire [31:0]RV32I_MEM_wb_imm_u;
  wire [31:0]RV32I_MEM_wb_pc_plus4;
  wire [4:0]RV32I_MEM_wb_rd;
  wire RV32I_MEM_wb_rd_we;
  wire [1:0]RV32I_MEM_wb_sel;
  wire RV32I_MEM_wb_valid;
  wire [0:0]RV32I_RESET_Res;
  wire [31:0]RV32I_WB_rd_wdata;
  wire id_valid_1;
  wire [31:0]instr_1;
  wire [31:0]mem_alu_result_1;
  wire [31:0]mem_imm_u_1;
  wire mem_mem_re_1;
  wire [1:0]mem_mem_size_1;
  wire mem_mem_unsigned_1;
  wire mem_mem_we_1;
  wire [31:0]mem_pc_plus4_1;
  wire [4:0]mem_rd_1;
  wire mem_rd_we_1;
  wire [31:0]mem_store_data_1;
  wire mem_valid_1;
  wire [1:0]mem_wb_sel_1;
  wire rv32i_branch_unit_wr_0_ex_flush_req;
  wire [31:0]rv32i_branch_unit_wr_0_pc_redirect_target;
  wire rv32i_branch_unit_wr_0_pc_redirect_valid;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]vio_0_probe_out0;
  wire zynq_ultra_ps_e_1_pl_clk0;
  wire zynq_ultra_ps_e_1_pl_resetn0;

  RV32I_EX_imp_13OU41B RV32I_EX
       (.alu_op(RV32I_ID_ex_alu_op),
        .base_data(RV32I_ID_ex_rs1_data),
        .clk(zynq_ultra_ps_e_1_pl_clk0),
        .ex_branch_en(RV32I_ID_ex_branch_en),
        .ex_branch_funct3(RV32I_ID_ex_branch_funct3),
        .ex_flush_req(rv32i_branch_unit_wr_0_ex_flush_req),
        .ex_imm_u(RV32I_ID_ex_imm_u),
        .ex_jal(RV32I_ID_ex_jal),
        .ex_jalr(RV32I_ID_ex_jalr),
        .ex_mem_re(RV32I_ID_ex_mem_re),
        .ex_mem_size(RV32I_ID_ex_mem_size),
        .ex_mem_unsigned(RV32I_ID_ex_mem_unsigned),
        .ex_mem_we(RV32I_ID_ex_mem_we),
        .ex_pc(RV32I_ID_ex_pc),
        .ex_pc_plus4(RV32I_ID_ex_pc_plus4),
        .ex_rd(RV32I_ID_ex_rd),
        .ex_rd_we(RV32I_ID_ex_rd_we),
        .ex_rs1(RV32I_ID_ex_rs1),
        .ex_rs2(RV32I_ID_ex_rs2),
        .ex_store_data(RV32I_ID_ex_rs2_data),
        .ex_valid(RV32I_ID_ex_valid),
        .ex_wb_sel(RV32I_ID_ex_wb_sel),
        .imm(RV32I_ID_ex_imm),
        .mem_alu_result(mem_alu_result_1),
        .mem_imm_u(mem_imm_u_1),
        .mem_mem_re(mem_mem_re_1),
        .mem_mem_size(mem_mem_size_1),
        .mem_mem_unsigned(mem_mem_unsigned_1),
        .mem_mem_we(mem_mem_we_1),
        .mem_pc_plus4(mem_pc_plus4_1),
        .mem_rd(mem_rd_1),
        .mem_rd_we(mem_rd_we_1),
        .mem_store_data(mem_store_data_1),
        .mem_valid(mem_valid_1),
        .mem_wb_data(RV32I_WB_rd_wdata),
        .mem_wb_sel(mem_wb_sel_1),
        .op_a_sel(RV32I_ID_ex_op_a_sel1),
        .op_b_sel(Net2),
        .pc_redirect_target(rv32i_branch_unit_wr_0_pc_redirect_target),
        .pc_redirect_valid(rv32i_branch_unit_wr_0_pc_redirect_valid),
        .rst(RV32I_RESET_Res),
        .wb_rd(RV32I_MEM_wb_rd),
        .wb_rd_we(RV32I_MEM_wb_rd_we));
  RV32I_ID_imp_GUS60R RV32I_ID
       (.bubble(rv32i_branch_unit_wr_0_ex_flush_req),
        .clk(zynq_ultra_ps_e_1_pl_clk0),
        .ex_alu_op(RV32I_ID_ex_alu_op),
        .ex_branch_en(RV32I_ID_ex_branch_en),
        .ex_branch_funct3(RV32I_ID_ex_branch_funct3),
        .ex_imm(RV32I_ID_ex_imm),
        .ex_imm_u(RV32I_ID_ex_imm_u),
        .ex_jal(RV32I_ID_ex_jal),
        .ex_jalr(RV32I_ID_ex_jalr),
        .ex_mem_re(RV32I_ID_ex_mem_re),
        .ex_mem_size(RV32I_ID_ex_mem_size),
        .ex_mem_unsigned(RV32I_ID_ex_mem_unsigned),
        .ex_mem_we(RV32I_ID_ex_mem_we),
        .ex_op_a_sel1(RV32I_ID_ex_op_a_sel1),
        .ex_op_b_sel(Net2),
        .ex_pc(RV32I_ID_ex_pc),
        .ex_pc_plus4(RV32I_ID_ex_pc_plus4),
        .ex_rd(RV32I_ID_ex_rd),
        .ex_rd_we(RV32I_ID_ex_rd_we),
        .ex_rs1(RV32I_ID_ex_rs1),
        .ex_rs1_data(RV32I_ID_ex_rs1_data),
        .ex_rs2(RV32I_ID_ex_rs2),
        .ex_rs2_data(RV32I_ID_ex_rs2_data),
        .ex_valid(RV32I_ID_ex_valid),
        .ex_wb_sel(RV32I_ID_ex_wb_sel),
        .id_pc(RV32I_IF_pc_id_out),
        .id_pc_plus4(RV32I_IF_pc_plus4_id_out),
        .id_valid(id_valid_1),
        .instr(instr_1),
        .rd_addr(RV32I_MEM_wb_rd),
        .rd_wdata(RV32I_WB_rd_wdata),
        .rd_we(util_vector_logic_2_Res),
        .rst(RV32I_RESET_Res));
  RV32I_IF_imp_VHE168 RV32I_IF
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .flush(rv32i_branch_unit_wr_0_ex_flush_req),
        .instr_id_out(instr_1),
        .pc_id_out(RV32I_IF_pc_id_out),
        .pc_plus4_id_out(RV32I_IF_pc_plus4_id_out),
        .pc_redirect_target(rv32i_branch_unit_wr_0_pc_redirect_target),
        .pc_redirect_valid(rv32i_branch_unit_wr_0_pc_redirect_valid),
        .rst(RV32I_RESET_Res),
        .valid_id_out(id_valid_1));
  RV32I_MEM_imp_1JDZ06 RV32I_MEM
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .flush(1'b0),
        .mem_alu_result(mem_alu_result_1),
        .mem_imm_u(mem_imm_u_1),
        .mem_mem_re(mem_mem_re_1),
        .mem_mem_size(mem_mem_size_1),
        .mem_mem_unsigned(mem_mem_unsigned_1),
        .mem_mem_we(mem_mem_we_1),
        .mem_pc_plus4(mem_pc_plus4_1),
        .mem_rd(mem_rd_1),
        .mem_rd_we(mem_rd_we_1),
        .mem_store_data(mem_store_data_1),
        .mem_valid(mem_valid_1),
        .mem_wb_sel(mem_wb_sel_1),
        .rst(RV32I_RESET_Res),
        .wb_alu_result(RV32I_MEM_wb_alu_result),
        .wb_data(RV32I_MEM_wb_data),
        .wb_imm_u(RV32I_MEM_wb_imm_u),
        .wb_pc_plus4(RV32I_MEM_wb_pc_plus4),
        .wb_rd(RV32I_MEM_wb_rd),
        .wb_rd_we(RV32I_MEM_wb_rd_we),
        .wb_sel(RV32I_MEM_wb_sel),
        .wb_valid(RV32I_MEM_wb_valid));
  RV32I_RESET_imp_1TY2PMO RV32I_RESET
       (.Op2(vio_0_probe_out0),
        .Res(RV32I_RESET_Res),
        .clk(zynq_ultra_ps_e_1_pl_clk0),
        .ext_reset_in(zynq_ultra_ps_e_1_pl_resetn0));
  RV32I_WB_imp_1PBSD11 RV32I_WB
       (.alu_y(RV32I_MEM_wb_alu_result),
        .imm_u(RV32I_MEM_wb_imm_u),
        .load_data(RV32I_MEM_wb_data),
        .pc_plus4(RV32I_MEM_wb_pc_plus4),
        .rd_wdata(RV32I_WB_rd_wdata),
        .wb_sel(RV32I_MEM_wb_sel));
  debug_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(RV32I_MEM_wb_rd_we),
        .Op2(RV32I_MEM_wb_valid),
        .Res(util_vector_logic_2_Res));
  debug_vio_0_0 vio_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .probe_out0(vio_0_probe_out0));
  debug_zynq_ultra_ps_e_1_0 zynq_ultra_ps_e_1
       (.emio_can0_phy_rx(1'b0),
        .emio_gpio_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .emio_i2c0_scl_i(1'b0),
        .emio_i2c0_sda_i(1'b0),
        .maxigp0_arready(1'b0),
        .maxigp0_awready(1'b0),
        .maxigp0_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp0_bresp({1'b0,1'b0}),
        .maxigp0_bvalid(1'b0),
        .maxigp0_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp0_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp0_rlast(1'b0),
        .maxigp0_rresp({1'b0,1'b0}),
        .maxigp0_rvalid(1'b0),
        .maxigp0_wready(1'b0),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_1_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_1_pl_clk0),
        .pl_resetn0(zynq_ultra_ps_e_1_pl_resetn0));
endmodule
