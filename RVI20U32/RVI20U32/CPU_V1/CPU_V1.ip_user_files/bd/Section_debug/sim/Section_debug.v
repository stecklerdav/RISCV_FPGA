//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Thu Mar 12 01:03:18 2026
//Host        : xilinx running 64-bit Ubuntu 25.10
//Command     : generate_target Section_debug.bd
//Design      : Section_debug
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RV32I_ID_imp_1LKARB6
   (alu_op,
    branch_en,
    branch_f3,
    clk,
    imm_b,
    imm_i,
    imm_j,
    imm_out,
    instr,
    jal,
    jalr,
    lsu_size,
    lsu_unsigned,
    mem_re,
    mem_we,
    opA_sel,
    opB_sel,
    rd,
    rd_we,
    rs1,
    rs1_rdata,
    rs2,
    rs2_rdata,
    wb_sel);
  output [3:0]alu_op;
  output branch_en;
  output [2:0]branch_f3;
  input clk;
  output [31:0]imm_b;
  output [31:0]imm_i;
  output [31:0]imm_j;
  output [31:0]imm_out;
  input [31:0]instr;
  output jal;
  output jalr;
  output [1:0]lsu_size;
  output lsu_unsigned;
  output mem_re;
  output mem_we;
  output [1:0]opA_sel;
  output [1:0]opB_sel;
  output [4:0]rd;
  output rd_we;
  output [4:0]rs1;
  output [31:0]rs1_rdata;
  output [4:0]rs2;
  output [31:0]rs2_rdata;
  output [1:0]wb_sel;

  wire [3:0]rv32i_control_full_0_alu_op;
  wire rv32i_control_full_0_branch_en;
  wire [2:0]rv32i_control_full_0_branch_f3;
  wire [2:0]rv32i_control_full_0_imm_sel;
  wire rv32i_control_full_0_jal;
  wire rv32i_control_full_0_jalr;
  wire [1:0]rv32i_control_full_0_lsu_size;
  wire rv32i_control_full_0_lsu_unsigned;
  wire rv32i_control_full_0_mem_re;
  wire rv32i_control_full_0_mem_we;
  wire [1:0]rv32i_control_full_0_opA_sel;
  wire [1:0]rv32i_control_full_0_opB_sel;
  wire rv32i_control_full_0_rd_we;
  wire [1:0]rv32i_control_full_0_wb_sel;
  wire rv32i_decoder_0_bit30;
  wire [2:0]rv32i_decoder_0_fmt;
  wire [2:0]rv32i_decoder_0_funct3;
  wire [6:0]rv32i_decoder_0_funct7;
  wire [31:0]rv32i_decoder_0_imm_b;
  wire [31:0]rv32i_decoder_0_imm_i;
  wire [31:0]rv32i_decoder_0_imm_j;
  wire [31:0]rv32i_decoder_0_imm_s;
  wire [31:0]rv32i_decoder_0_imm_u;
  wire [6:0]rv32i_decoder_0_opcode;
  wire [4:0]rv32i_decoder_0_rd;
  wire [4:0]rv32i_decoder_0_rs1;
  wire [4:0]rv32i_decoder_0_rs2;
  wire [31:0]rv32i_if_id_reg_0_instr_id_out;
  wire [31:0]rv32i_imm_mux_0_imm_out;
  wire [31:0]rv32i_regfile_0_rs1_rdata;
  wire [31:0]rv32i_regfile_0_rs2_rdata;
  wire zynq_ultra_ps_e_1_pl_clk0;

  assign alu_op[3:0] = rv32i_control_full_0_alu_op;
  assign branch_en = rv32i_control_full_0_branch_en;
  assign branch_f3[2:0] = rv32i_control_full_0_branch_f3;
  assign imm_b[31:0] = rv32i_decoder_0_imm_b;
  assign imm_i[31:0] = rv32i_decoder_0_imm_i;
  assign imm_j[31:0] = rv32i_decoder_0_imm_j;
  assign imm_out[31:0] = rv32i_imm_mux_0_imm_out;
  assign jal = rv32i_control_full_0_jal;
  assign jalr = rv32i_control_full_0_jalr;
  assign lsu_size[1:0] = rv32i_control_full_0_lsu_size;
  assign lsu_unsigned = rv32i_control_full_0_lsu_unsigned;
  assign mem_re = rv32i_control_full_0_mem_re;
  assign mem_we = rv32i_control_full_0_mem_we;
  assign opA_sel[1:0] = rv32i_control_full_0_opA_sel;
  assign opB_sel[1:0] = rv32i_control_full_0_opB_sel;
  assign rd[4:0] = rv32i_decoder_0_rd;
  assign rd_we = rv32i_control_full_0_rd_we;
  assign rs1[4:0] = rv32i_decoder_0_rs1;
  assign rs1_rdata[31:0] = rv32i_regfile_0_rs1_rdata;
  assign rs2[4:0] = rv32i_decoder_0_rs2;
  assign rs2_rdata[31:0] = rv32i_regfile_0_rs2_rdata;
  assign rv32i_if_id_reg_0_instr_id_out = instr[31:0];
  assign wb_sel[1:0] = rv32i_control_full_0_wb_sel;
  assign zynq_ultra_ps_e_1_pl_clk0 = clk;
  Section_debug_rv32i_control_full_0_0 rv32i_control_full_0
       (.alu_op(rv32i_control_full_0_alu_op),
        .bit30(rv32i_decoder_0_bit30),
        .branch_en(rv32i_control_full_0_branch_en),
        .branch_f3(rv32i_control_full_0_branch_f3),
        .fmt(rv32i_decoder_0_fmt),
        .funct3(rv32i_decoder_0_funct3),
        .funct7(rv32i_decoder_0_funct7),
        .imm_sel(rv32i_control_full_0_imm_sel),
        .jal(rv32i_control_full_0_jal),
        .jalr(rv32i_control_full_0_jalr),
        .lsu_size(rv32i_control_full_0_lsu_size),
        .lsu_unsigned(rv32i_control_full_0_lsu_unsigned),
        .mem_re(rv32i_control_full_0_mem_re),
        .mem_we(rv32i_control_full_0_mem_we),
        .opA_sel(rv32i_control_full_0_opA_sel),
        .opB_sel(rv32i_control_full_0_opB_sel),
        .opcode(rv32i_decoder_0_opcode),
        .rd_we(rv32i_control_full_0_rd_we),
        .wb_sel(rv32i_control_full_0_wb_sel));
  Section_debug_rv32i_decoder_0_0 rv32i_decoder_0
       (.bit30(rv32i_decoder_0_bit30),
        .fmt(rv32i_decoder_0_fmt),
        .funct3(rv32i_decoder_0_funct3),
        .funct7(rv32i_decoder_0_funct7),
        .imm_b(rv32i_decoder_0_imm_b),
        .imm_i(rv32i_decoder_0_imm_i),
        .imm_j(rv32i_decoder_0_imm_j),
        .imm_s(rv32i_decoder_0_imm_s),
        .imm_u(rv32i_decoder_0_imm_u),
        .instr(rv32i_if_id_reg_0_instr_id_out),
        .opcode(rv32i_decoder_0_opcode),
        .rd(rv32i_decoder_0_rd),
        .rs1(rv32i_decoder_0_rs1),
        .rs2(rv32i_decoder_0_rs2));
  Section_debug_rv32i_imm_mux_0_0 rv32i_imm_mux_0
       (.imm_b(rv32i_decoder_0_imm_b),
        .imm_i(rv32i_decoder_0_imm_i),
        .imm_j(rv32i_decoder_0_imm_j),
        .imm_out(rv32i_imm_mux_0_imm_out),
        .imm_s(rv32i_decoder_0_imm_s),
        .imm_sel(rv32i_control_full_0_imm_sel),
        .imm_u(rv32i_decoder_0_imm_u));
  Section_debug_rv32i_regfile_0_0 rv32i_regfile_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .rd_addr(rv32i_decoder_0_rd),
        .rd_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_we(1'b0),
        .rs1_addr(rv32i_decoder_0_rs1),
        .rs1_rdata(rv32i_regfile_0_rs1_rdata),
        .rs2_addr(rv32i_decoder_0_rs2),
        .rs2_rdata(rv32i_regfile_0_rs2_rdata));
endmodule

module RV32I_IF_imp_CSF23Z
   (addra,
    clk,
    flush,
    instr_id_out,
    instr_rom_in,
    pc,
    pc_id_out,
    pc_plus4_id_out,
    pc_redirect_target,
    rst);
  output [10:0]addra;
  input clk;
  input flush;
  output [31:0]instr_id_out;
  output [31:0]instr_rom_in;
  output [31:0]pc;
  output [31:0]pc_id_out;
  output [31:0]pc_plus4_id_out;
  input [31:0]pc_redirect_target;
  input rst;

  wire [31:0]blk_mem_gen_0_douta;
  wire [10:0]pc_to_rom_addr_0_a;
  wire [31:0]pc_unit_0_pc;
  wire [31:0]rv32i_if_id_reg_0_instr_id_out;
  wire [31:0]rv32i_if_id_reg_0_pc_id_out;
  wire [31:0]rv32i_if_id_reg_0_pc_plus4_id_out;
  wire [31:0]rv32i_pc_redirect_0_pc_redirect_target;
  wire rv32i_pc_redirect_0_pc_redirect_valid;
  wire util_vector_logic_0_Res;
  wire [0:0]xlconstant_3_dout;
  wire [0:0]xlconstant_4_dout;
  wire zynq_ultra_ps_e_1_pl_clk0;

  assign addra[10:0] = pc_to_rom_addr_0_a;
  assign instr_id_out[31:0] = rv32i_if_id_reg_0_instr_id_out;
  assign instr_rom_in[31:0] = blk_mem_gen_0_douta;
  assign pc[31:0] = pc_unit_0_pc;
  assign pc_id_out[31:0] = rv32i_if_id_reg_0_pc_id_out;
  assign pc_plus4_id_out[31:0] = rv32i_if_id_reg_0_pc_plus4_id_out;
  assign rv32i_pc_redirect_0_pc_redirect_target = pc_redirect_target[31:0];
  assign rv32i_pc_redirect_0_pc_redirect_valid = flush;
  assign util_vector_logic_0_Res = rst;
  assign zynq_ultra_ps_e_1_pl_clk0 = clk;
  Section_debug_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra(pc_to_rom_addr_0_a),
        .clka(zynq_ultra_ps_e_1_pl_clk0),
        .douta(blk_mem_gen_0_douta),
        .ena(xlconstant_4_dout));
  Section_debug_pc_to_rom_addr_0_1 pc_to_rom_addr_0
       (.a(pc_to_rom_addr_0_a),
        .pc(pc_unit_0_pc));
  Section_debug_pc_unit_0_0 pc_unit_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .pc(pc_unit_0_pc),
        .pc_en(xlconstant_3_dout),
        .pc_redirect_target(rv32i_pc_redirect_0_pc_redirect_target),
        .pc_redirect_valid(rv32i_pc_redirect_0_pc_redirect_valid),
        .rst(util_vector_logic_0_Res));
  Section_debug_rv32i_if_id_reg_0_0 rv32i_if_id_reg_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .flush(rv32i_pc_redirect_0_pc_redirect_valid),
        .hold(1'b0),
        .instr_id_out(rv32i_if_id_reg_0_instr_id_out),
        .instr_rom_in(blk_mem_gen_0_douta),
        .pc_fetch_in(pc_unit_0_pc),
        .pc_id_out(rv32i_if_id_reg_0_pc_id_out),
        .pc_plus4_id_out(rv32i_if_id_reg_0_pc_plus4_id_out),
        .rst(util_vector_logic_0_Res));
  Section_debug_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  Section_debug_xlconstant_3_2 xlconstant_4
       (.dout(xlconstant_4_dout));
endmodule

(* CORE_GENERATION_INFO = "Section_debug,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Section_debug,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=21,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}" *) (* HW_HANDOFF = "Section_debug.hwdef" *) 
module Section_debug
   ();

  wire [3:0]RV32I_ID_alu_op;
  wire RV32I_ID_branch_en;
  wire [2:0]RV32I_ID_branch_f3;
  wire [31:0]RV32I_ID_imm_out;
  wire RV32I_ID_jal;
  wire RV32I_ID_jalr;
  wire [1:0]RV32I_ID_lsu_size;
  wire RV32I_ID_lsu_unsigned;
  wire RV32I_ID_mem_re;
  wire RV32I_ID_mem_we;
  wire [1:0]RV32I_ID_opA_sel;
  wire [1:0]RV32I_ID_opB_sel;
  wire [4:0]RV32I_ID_rd;
  wire RV32I_ID_rd_we;
  wire [4:0]RV32I_ID_rs1;
  wire [31:0]RV32I_ID_rs1_rdata;
  wire [4:0]RV32I_ID_rs2;
  wire [31:0]RV32I_ID_rs2_rdata;
  wire [1:0]RV32I_ID_wb_sel;
  wire [31:0]RV32I_IF_pc_plus4_id_out;
  wire [31:0]blk_mem_gen_0_douta;
  wire [10:0]pc_to_rom_addr_0_a;
  wire [31:0]pc_unit_0_pc;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [31:0]rv32i_decoder_0_imm_b;
  wire [31:0]rv32i_decoder_0_imm_i;
  wire [31:0]rv32i_decoder_0_imm_j;
  wire [31:0]rv32i_if_id_reg_0_instr_id_out;
  wire [31:0]rv32i_if_id_reg_0_pc_id_out;
  wire [31:0]rv32i_pc_redirect_0_pc_redirect_target;
  wire rv32i_pc_redirect_0_pc_redirect_valid;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]vio_0_probe_out0;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_4_dout;
  wire zynq_ultra_ps_e_1_pl_clk0;
  wire zynq_ultra_ps_e_1_pl_resetn0;

  RV32I_ID_imp_1LKARB6 RV32I_ID
       (.alu_op(RV32I_ID_alu_op),
        .branch_en(RV32I_ID_branch_en),
        .branch_f3(RV32I_ID_branch_f3),
        .clk(zynq_ultra_ps_e_1_pl_clk0),
        .imm_b(rv32i_decoder_0_imm_b),
        .imm_i(rv32i_decoder_0_imm_i),
        .imm_j(rv32i_decoder_0_imm_j),
        .imm_out(RV32I_ID_imm_out),
        .instr(rv32i_if_id_reg_0_instr_id_out),
        .jal(RV32I_ID_jal),
        .jalr(RV32I_ID_jalr),
        .lsu_size(RV32I_ID_lsu_size),
        .lsu_unsigned(RV32I_ID_lsu_unsigned),
        .mem_re(RV32I_ID_mem_re),
        .mem_we(RV32I_ID_mem_we),
        .opA_sel(RV32I_ID_opA_sel),
        .opB_sel(RV32I_ID_opB_sel),
        .rd(RV32I_ID_rd),
        .rd_we(RV32I_ID_rd_we),
        .rs1(RV32I_ID_rs1),
        .rs1_rdata(RV32I_ID_rs1_rdata),
        .rs2(RV32I_ID_rs2),
        .rs2_rdata(RV32I_ID_rs2_rdata),
        .wb_sel(RV32I_ID_wb_sel));
  RV32I_IF_imp_CSF23Z RV32I_IF
       (.addra(pc_to_rom_addr_0_a),
        .clk(zynq_ultra_ps_e_1_pl_clk0),
        .flush(rv32i_pc_redirect_0_pc_redirect_valid),
        .instr_id_out(rv32i_if_id_reg_0_instr_id_out),
        .instr_rom_in(blk_mem_gen_0_douta),
        .pc(pc_unit_0_pc),
        .pc_id_out(rv32i_if_id_reg_0_pc_id_out),
        .pc_plus4_id_out(RV32I_IF_pc_plus4_id_out),
        .pc_redirect_target(rv32i_pc_redirect_0_pc_redirect_target),
        .rst(util_vector_logic_0_Res));
  Section_debug_ila_0_0 ila_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .probe0(util_vector_logic_0_Res),
        .probe1(pc_unit_0_pc),
        .probe2(pc_to_rom_addr_0_a),
        .probe3(blk_mem_gen_0_douta),
        .probe4(rv32i_if_id_reg_0_pc_id_out));
  Section_debug_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(xlconstant_0_dout),
        .ext_reset_in(zynq_ultra_ps_e_1_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(zynq_ultra_ps_e_1_pl_clk0));
  Section_debug_rv32i_id_ex_reg_0_0 rv32i_id_ex_reg_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .flush(xlconstant_4_dout),
        .id_alu_op(RV32I_ID_alu_op),
        .id_branch_en(RV32I_ID_branch_en),
        .id_branch_funct3(RV32I_ID_branch_f3),
        .id_imm(RV32I_ID_imm_out),
        .id_jal(RV32I_ID_jal),
        .id_jalr(RV32I_ID_jalr),
        .id_mem_re(RV32I_ID_mem_re),
        .id_mem_size(RV32I_ID_lsu_size),
        .id_mem_unsigned(RV32I_ID_lsu_unsigned),
        .id_mem_we(RV32I_ID_mem_we),
        .id_op_a_sel(RV32I_ID_opA_sel),
        .id_op_b_sel(RV32I_ID_opB_sel),
        .id_pc(rv32i_if_id_reg_0_pc_id_out),
        .id_pc_plus4(RV32I_IF_pc_plus4_id_out),
        .id_rd(RV32I_ID_rd),
        .id_rd_we(RV32I_ID_rd_we),
        .id_rs1(RV32I_ID_rs1),
        .id_rs1_data(RV32I_ID_rs1_rdata),
        .id_rs2(RV32I_ID_rs2),
        .id_rs2_data(RV32I_ID_rs2_rdata),
        .id_wb_sel(RV32I_ID_wb_sel),
        .rst(util_vector_logic_0_Res),
        .stall(xlconstant_4_dout));
  Section_debug_rv32i_pc_redirect_0_0 rv32i_pc_redirect_0
       (.branch_en(1'b0),
        .branch_f3({1'b0,1'b0,1'b0}),
        .imm_b(rv32i_decoder_0_imm_b),
        .imm_i(rv32i_decoder_0_imm_i),
        .imm_j(rv32i_decoder_0_imm_j),
        .jal(1'b0),
        .jalr(1'b0),
        .pc(rv32i_if_id_reg_0_pc_id_out),
        .pc_redirect_target(rv32i_pc_redirect_0_pc_redirect_target),
        .pc_redirect_valid(rv32i_pc_redirect_0_pc_redirect_valid),
        .rs1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rs2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rst(1'b0));
  Section_debug_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(proc_sys_reset_0_peripheral_reset),
        .Op2(vio_0_probe_out0),
        .Res(util_vector_logic_0_Res));
  Section_debug_vio_0_0 vio_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .probe_out0(vio_0_probe_out0));
  Section_debug_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  Section_debug_xlconstant_4_0 xlconstant_4
       (.dout(xlconstant_4_dout));
  Section_debug_zynq_ultra_ps_e_1_0 zynq_ultra_ps_e_1
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
