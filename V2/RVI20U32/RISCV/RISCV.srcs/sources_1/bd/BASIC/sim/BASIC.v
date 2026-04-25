//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sat Apr 25 11:15:44 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target BASIC.bd
//Design      : BASIC
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BASIC,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BASIC,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=32,numReposBlks=32,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=21,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}" *) (* HW_HANDOFF = "BASIC.hwdef" *) 
module BASIC
   ();

  wire Net;
  wire [31:0]alu_0_y;
  wire [31:0]blk_mem_gen_0_douta;
  wire [3:0]branch_0_ex_exception_cause;
  wire [31:0]branch_0_ex_exception_tval;
  wire branch_0_ex_exception_valid;
  wire branch_0_ex_flush_req;
  wire [31:0]branch_0_pc_redirect_target;
  wire branch_0_pc_redirect_valid;
  wire [3:0]control_0_alu_op;
  wire control_0_branch_en;
  wire [2:0]control_0_branch_funct3;
  wire [2:0]control_0_imm_sel;
  wire control_0_jal;
  wire control_0_jalr;
  wire control_0_mem_re;
  wire control_0_mem_sign_ext;
  wire [1:0]control_0_mem_size;
  wire control_0_mem_we;
  wire [1:0]control_0_op_a_sel;
  wire [1:0]control_0_op_b_sel;
  wire control_0_rd_we;
  wire [1:0]control_0_wb_sel;
  wire decoder_0_bit30;
  wire [2:0]decoder_0_fmt;
  wire [2:0]decoder_0_funct3;
  wire [6:0]decoder_0_funct7;
  wire [31:0]decoder_0_imm_b;
  wire [31:0]decoder_0_imm_i;
  wire [31:0]decoder_0_imm_j;
  wire [31:0]decoder_0_imm_s;
  wire [31:0]decoder_0_imm_u;
  wire [6:0]decoder_0_opcode;
  wire [4:0]decoder_0_rd;
  wire [4:0]decoder_0_rs1;
  wire [4:0]decoder_0_rs2;
  wire [31:0]ex_mem_reg_1_mem_alu_result;
  wire [31:0]ex_mem_reg_1_mem_imm_u;
  wire ex_mem_reg_1_mem_mem_re;
  wire [1:0]ex_mem_reg_1_mem_mem_size;
  wire ex_mem_reg_1_mem_mem_unsigned;
  wire ex_mem_reg_1_mem_mem_we;
  wire [31:0]ex_mem_reg_1_mem_pc_plus4;
  wire [4:0]ex_mem_reg_1_mem_rd;
  wire ex_mem_reg_1_mem_rd_we;
  wire [31:0]ex_mem_reg_1_mem_store_data;
  wire ex_mem_reg_1_mem_valid;
  wire [1:0]ex_mem_reg_1_mem_wb_sel;
  wire [31:0]forward_mux_0_out_data;
  wire [31:0]forward_mux_1_out_data;
  wire [1:0]forwarding_0_forward_a;
  wire [1:0]forwarding_0_forward_b;
  wire [3:0]id_ex_reg_0_ex_alu_op;
  wire id_ex_reg_0_ex_branch_en;
  wire [2:0]id_ex_reg_0_ex_branch_funct3;
  wire [31:0]id_ex_reg_0_ex_imm;
  wire [31:0]id_ex_reg_0_ex_imm_u;
  wire id_ex_reg_0_ex_jal;
  wire id_ex_reg_0_ex_jalr;
  wire id_ex_reg_0_ex_mem_re;
  wire [1:0]id_ex_reg_0_ex_mem_size;
  wire id_ex_reg_0_ex_mem_unsigned;
  wire id_ex_reg_0_ex_mem_we;
  wire [1:0]id_ex_reg_0_ex_op_a_sel;
  wire [1:0]id_ex_reg_0_ex_op_b_sel;
  wire [31:0]id_ex_reg_0_ex_pc;
  wire [31:0]id_ex_reg_0_ex_pc_plus4;
  wire [4:0]id_ex_reg_0_ex_rd;
  wire id_ex_reg_0_ex_rd_we;
  wire [4:0]id_ex_reg_0_ex_rs1;
  wire [31:0]id_ex_reg_0_ex_rs1_data;
  wire [4:0]id_ex_reg_0_ex_rs2;
  wire [31:0]id_ex_reg_0_ex_rs2_data;
  wire [1:0]id_ex_reg_0_ex_wb_sel;
  wire [31:0]if_id_reg_0_id_instr_out;
  wire [31:0]if_id_reg_0_id_pc4_out;
  wire [31:0]if_id_reg_0_id_pc_out;
  wire if_id_reg_0_id_valid_out;
  wire [31:0]imm_mux_0_imm_out;
  wire [31:0]load_extender_0_load_data;
  wire [31:0]mem_stage_0_dmem_addr;
  wire [3:0]mem_stage_0_dmem_be;
  wire [31:0]mem_stage_0_dmem_wdata;
  wire mem_stage_0_dmem_we;
  wire [31:0]mem_stage_0_mem_forward_data;
  wire [31:0]mem_stage_0_mem_out_alu_result;
  wire [31:0]mem_stage_0_mem_out_imm_u;
  wire [1:0]mem_stage_0_mem_out_mem_size;
  wire mem_stage_0_mem_out_mem_unsigned;
  wire [31:0]mem_stage_0_mem_out_pc_plus4;
  wire [4:0]mem_stage_0_mem_out_rd;
  wire mem_stage_0_mem_out_rd_we;
  wire mem_stage_0_mem_out_valid;
  wire [1:0]mem_stage_0_mem_out_wb_sel;
  wire [31:0]mem_wb_reg_0_wb_alu_result;
  wire [31:0]mem_wb_reg_0_wb_data;
  wire [31:0]mem_wb_reg_0_wb_imm_u;
  wire [31:0]mem_wb_reg_0_wb_pc_plus4;
  wire [4:0]mem_wb_reg_0_wb_rd;
  wire mem_wb_reg_0_wb_rd_we;
  wire [1:0]mem_wb_reg_0_wb_sel;
  wire mem_wb_reg_0_wb_valid;
  wire [31:0]operand_a_mux_0_operand_a;
  wire [31:0]operand_b_mux_0_operand_b;
  wire [10:0]pc_to_imem_addr_0_addr;
  wire [31:0]pc_unit_0_pc;
  wire [31:0]pc_unit_0_pc_plus4;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [31:0]ram_data_1_rdata;
  wire [31:0]regfile_0_rs1_rdata;
  wire [31:0]regfile_0_rs2_rdata;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [31:0]wb_mux_0_rd_wdata;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;
  wire [0:0]xlconstant_3_dout;
  wire [1:0]xlslice_0_Dout;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  BASIC_alu_0_0 alu_0
       (.a(operand_a_mux_0_operand_a),
        .alu_op(id_ex_reg_0_ex_alu_op),
        .b(operand_b_mux_0_operand_b),
        .y(alu_0_y));
  BASIC_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(pc_to_imem_addr_0_addr),
        .clka(zynq_ultra_ps_e_0_pl_clk0),
        .douta(blk_mem_gen_0_douta),
        .ena(xlconstant_2_dout));
  BASIC_branch_0_0 branch_0
       (.ex_branch_en(id_ex_reg_0_ex_branch_en),
        .ex_branch_funct3(id_ex_reg_0_ex_branch_funct3),
        .ex_exception_cause(branch_0_ex_exception_cause),
        .ex_exception_tval(branch_0_ex_exception_tval),
        .ex_exception_valid(branch_0_ex_exception_valid),
        .ex_flush_req(branch_0_ex_flush_req),
        .ex_imm(id_ex_reg_0_ex_imm),
        .ex_jal(id_ex_reg_0_ex_jal),
        .ex_jalr(id_ex_reg_0_ex_jalr),
        .ex_pc(id_ex_reg_0_ex_pc),
        .ex_rs1_data(id_ex_reg_0_ex_rs1_data),
        .ex_rs2_data(id_ex_reg_0_ex_rs2_data),
        .ex_valid(Net),
        .pc_redirect_target(branch_0_pc_redirect_target),
        .pc_redirect_valid(branch_0_pc_redirect_valid));
  BASIC_control_0_0 control_0
       (.alu_op(control_0_alu_op),
        .bit30(decoder_0_bit30),
        .branch_en(control_0_branch_en),
        .branch_funct3(control_0_branch_funct3),
        .fmt(decoder_0_fmt),
        .funct3(decoder_0_funct3),
        .funct7(decoder_0_funct7),
        .imm_sel(control_0_imm_sel),
        .jal(control_0_jal),
        .jalr(control_0_jalr),
        .mem_re(control_0_mem_re),
        .mem_sign_ext(control_0_mem_sign_ext),
        .mem_size(control_0_mem_size),
        .mem_we(control_0_mem_we),
        .op_a_sel(control_0_op_a_sel),
        .op_b_sel(control_0_op_b_sel),
        .opcode(decoder_0_opcode),
        .rd_we(control_0_rd_we),
        .wb_sel(control_0_wb_sel));
  BASIC_decoder_0_0 decoder_0
       (.bit30(decoder_0_bit30),
        .fmt(decoder_0_fmt),
        .funct3(decoder_0_funct3),
        .funct7(decoder_0_funct7),
        .imm_b(decoder_0_imm_b),
        .imm_i(decoder_0_imm_i),
        .imm_j(decoder_0_imm_j),
        .imm_s(decoder_0_imm_s),
        .imm_u(decoder_0_imm_u),
        .instr(if_id_reg_0_id_instr_out),
        .opcode(decoder_0_opcode),
        .rd(decoder_0_rd),
        .rs1(decoder_0_rs1),
        .rs2(decoder_0_rs2));
  BASIC_ex_mem_reg_1_0 ex_mem_reg_1
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .ex_alu_result(alu_0_y),
        .ex_exception_cause(branch_0_ex_exception_cause),
        .ex_exception_tval(branch_0_ex_exception_tval),
        .ex_exception_valid(branch_0_ex_exception_valid),
        .ex_imm_u(id_ex_reg_0_ex_imm_u),
        .ex_mem_re(id_ex_reg_0_ex_mem_re),
        .ex_mem_size(id_ex_reg_0_ex_mem_size),
        .ex_mem_unsigned(id_ex_reg_0_ex_mem_unsigned),
        .ex_mem_we(id_ex_reg_0_ex_mem_we),
        .ex_pc(id_ex_reg_0_ex_pc),
        .ex_pc_plus4(id_ex_reg_0_ex_pc_plus4),
        .ex_rd(id_ex_reg_0_ex_rd),
        .ex_rd_we(id_ex_reg_0_ex_rd_we),
        .ex_store_data(forward_mux_1_out_data),
        .ex_valid(Net),
        .ex_wb_sel(id_ex_reg_0_ex_wb_sel),
        .flush(1'b0),
        .mem_alu_result(ex_mem_reg_1_mem_alu_result),
        .mem_imm_u(ex_mem_reg_1_mem_imm_u),
        .mem_mem_re(ex_mem_reg_1_mem_mem_re),
        .mem_mem_size(ex_mem_reg_1_mem_mem_size),
        .mem_mem_unsigned(ex_mem_reg_1_mem_mem_unsigned),
        .mem_mem_we(ex_mem_reg_1_mem_mem_we),
        .mem_pc_plus4(ex_mem_reg_1_mem_pc_plus4),
        .mem_rd(ex_mem_reg_1_mem_rd),
        .mem_rd_we(ex_mem_reg_1_mem_rd_we),
        .mem_store_data(ex_mem_reg_1_mem_store_data),
        .mem_valid(ex_mem_reg_1_mem_valid),
        .mem_wb_sel(ex_mem_reg_1_mem_wb_sel),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(1'b0));
  BASIC_forward_mux_0_0 forward_mux_0
       (.base_data(id_ex_reg_0_ex_rs1_data),
        .ex_mem_data(ex_mem_reg_1_mem_alu_result),
        .forward_sel(forwarding_0_forward_a),
        .mem_stage_data(mem_stage_0_mem_forward_data),
        .mem_wb_data(wb_mux_0_rd_wdata),
        .out_data(forward_mux_0_out_data));
  BASIC_forward_mux_0_1 forward_mux_1
       (.base_data(id_ex_reg_0_ex_rs2_data),
        .ex_mem_data(ex_mem_reg_1_mem_alu_result),
        .forward_sel(forwarding_0_forward_b),
        .mem_stage_data(mem_stage_0_mem_forward_data),
        .mem_wb_data(wb_mux_0_rd_wdata),
        .out_data(forward_mux_1_out_data));
  BASIC_forwarding_0_0 forwarding_0
       (.ex_op_b_sel(id_ex_reg_0_ex_op_b_sel),
        .ex_rs1(id_ex_reg_0_ex_rs1),
        .ex_rs2(id_ex_reg_0_ex_rs2),
        .forward_a(forwarding_0_forward_a),
        .forward_b(forwarding_0_forward_b),
        .mem_rd(ex_mem_reg_1_mem_rd),
        .mem_rd_we(util_vector_logic_1_Res),
        .mem_stage_rd(mem_stage_0_mem_out_rd),
        .mem_stage_rd_we(util_vector_logic_2_Res),
        .wb_rd(mem_wb_reg_0_wb_rd),
        .wb_rd_we(util_vector_logic_0_Res));
  BASIC_id_ex_reg_0_0 id_ex_reg_0
       (.bubble(branch_0_ex_flush_req),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .ex_alu_op(id_ex_reg_0_ex_alu_op),
        .ex_branch_en(id_ex_reg_0_ex_branch_en),
        .ex_branch_funct3(id_ex_reg_0_ex_branch_funct3),
        .ex_imm(id_ex_reg_0_ex_imm),
        .ex_imm_u(id_ex_reg_0_ex_imm_u),
        .ex_jal(id_ex_reg_0_ex_jal),
        .ex_jalr(id_ex_reg_0_ex_jalr),
        .ex_mem_re(id_ex_reg_0_ex_mem_re),
        .ex_mem_size(id_ex_reg_0_ex_mem_size),
        .ex_mem_unsigned(id_ex_reg_0_ex_mem_unsigned),
        .ex_mem_we(id_ex_reg_0_ex_mem_we),
        .ex_op_a_sel(id_ex_reg_0_ex_op_a_sel),
        .ex_op_b_sel(id_ex_reg_0_ex_op_b_sel),
        .ex_pc(id_ex_reg_0_ex_pc),
        .ex_pc_plus4(id_ex_reg_0_ex_pc_plus4),
        .ex_rd(id_ex_reg_0_ex_rd),
        .ex_rd_we(id_ex_reg_0_ex_rd_we),
        .ex_rs1(id_ex_reg_0_ex_rs1),
        .ex_rs1_data(id_ex_reg_0_ex_rs1_data),
        .ex_rs2(id_ex_reg_0_ex_rs2),
        .ex_rs2_data(id_ex_reg_0_ex_rs2_data),
        .ex_valid(Net),
        .ex_wb_sel(id_ex_reg_0_ex_wb_sel),
        .id_alu_op(control_0_alu_op),
        .id_branch_en(control_0_branch_en),
        .id_branch_funct3(control_0_branch_funct3),
        .id_imm(imm_mux_0_imm_out),
        .id_imm_u(decoder_0_imm_u),
        .id_jal(control_0_jal),
        .id_jalr(control_0_jalr),
        .id_mem_re(control_0_mem_re),
        .id_mem_size(control_0_mem_size),
        .id_mem_unsigned(control_0_mem_sign_ext),
        .id_mem_we(control_0_mem_we),
        .id_op_a_sel(control_0_op_a_sel),
        .id_op_b_sel(control_0_op_b_sel),
        .id_pc(if_id_reg_0_id_pc_out),
        .id_pc_plus4(if_id_reg_0_id_pc4_out),
        .id_rd(decoder_0_rd),
        .id_rd_we(control_0_rd_we),
        .id_rs1(decoder_0_rs1),
        .id_rs1_data(regfile_0_rs1_rdata),
        .id_rs2(decoder_0_rs2),
        .id_rs2_data(regfile_0_rs2_rdata),
        .id_valid(if_id_reg_0_id_valid_out),
        .id_wb_sel(control_0_wb_sel),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(1'b0));
  BASIC_if_id_reg_0_0 if_id_reg_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .flush(branch_0_ex_flush_req),
        .hold(1'b0),
        .id_instr_out(if_id_reg_0_id_instr_out),
        .id_pc4_out(if_id_reg_0_id_pc4_out),
        .id_pc_out(if_id_reg_0_id_pc_out),
        .id_valid_out(if_id_reg_0_id_valid_out),
        .if_instr_in(blk_mem_gen_0_douta),
        .if_pc4_in(pc_unit_0_pc_plus4),
        .if_pc_in(pc_unit_0_pc),
        .if_valid_in(xlconstant_3_dout),
        .rst(proc_sys_reset_0_peripheral_reset));
  BASIC_imm_mux_0_0 imm_mux_0
       (.imm_b(decoder_0_imm_b),
        .imm_i(decoder_0_imm_i),
        .imm_j(decoder_0_imm_j),
        .imm_out(imm_mux_0_imm_out),
        .imm_s(decoder_0_imm_s),
        .imm_sel(control_0_imm_sel),
        .imm_u(decoder_0_imm_u));
  BASIC_load_extender_0_0 load_extender_0
       (.addr_offset(xlslice_0_Dout),
        .load_data(load_extender_0_load_data),
        .mem_data(ram_data_1_rdata),
        .size(mem_stage_0_mem_out_mem_size),
        .unsigned_load(mem_stage_0_mem_out_mem_unsigned));
  BASIC_mem_stage_0_0 mem_stage_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .dmem_addr(mem_stage_0_dmem_addr),
        .dmem_be(mem_stage_0_dmem_be),
        .dmem_rdata(ram_data_1_rdata),
        .dmem_wdata(mem_stage_0_dmem_wdata),
        .dmem_we(mem_stage_0_dmem_we),
        .kill(1'b0),
        .mem_forward_data(mem_stage_0_mem_forward_data),
        .mem_in_alu_result(ex_mem_reg_1_mem_alu_result),
        .mem_in_imm_u(ex_mem_reg_1_mem_imm_u),
        .mem_in_mem_re(ex_mem_reg_1_mem_mem_re),
        .mem_in_mem_size(ex_mem_reg_1_mem_mem_size),
        .mem_in_mem_unsigned(ex_mem_reg_1_mem_mem_unsigned),
        .mem_in_mem_we(ex_mem_reg_1_mem_mem_we),
        .mem_in_pc_plus4(ex_mem_reg_1_mem_pc_plus4),
        .mem_in_rd(ex_mem_reg_1_mem_rd),
        .mem_in_rd_we(ex_mem_reg_1_mem_rd_we),
        .mem_in_store_data(ex_mem_reg_1_mem_store_data),
        .mem_in_valid(ex_mem_reg_1_mem_valid),
        .mem_in_wb_sel(ex_mem_reg_1_mem_wb_sel),
        .mem_out_alu_result(mem_stage_0_mem_out_alu_result),
        .mem_out_imm_u(mem_stage_0_mem_out_imm_u),
        .mem_out_mem_size(mem_stage_0_mem_out_mem_size),
        .mem_out_mem_unsigned(mem_stage_0_mem_out_mem_unsigned),
        .mem_out_pc_plus4(mem_stage_0_mem_out_pc_plus4),
        .mem_out_rd(mem_stage_0_mem_out_rd),
        .mem_out_rd_we(mem_stage_0_mem_out_rd_we),
        .mem_out_valid(mem_stage_0_mem_out_valid),
        .mem_out_wb_sel(mem_stage_0_mem_out_wb_sel),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(1'b0));
  BASIC_mem_wb_reg_0_0 mem_wb_reg_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .flush(1'b0),
        .mem_alu_result(mem_stage_0_mem_out_alu_result),
        .mem_data(load_extender_0_load_data),
        .mem_imm_u(mem_stage_0_mem_out_imm_u),
        .mem_pc_plus4(mem_stage_0_mem_out_pc_plus4),
        .mem_rd(mem_stage_0_mem_out_rd),
        .mem_rd_we(mem_stage_0_mem_out_rd_we),
        .mem_valid(mem_stage_0_mem_out_valid),
        .mem_wb_sel(mem_stage_0_mem_out_wb_sel),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(1'b0),
        .wb_alu_result(mem_wb_reg_0_wb_alu_result),
        .wb_data(mem_wb_reg_0_wb_data),
        .wb_imm_u(mem_wb_reg_0_wb_imm_u),
        .wb_pc_plus4(mem_wb_reg_0_wb_pc_plus4),
        .wb_rd(mem_wb_reg_0_wb_rd),
        .wb_rd_we(mem_wb_reg_0_wb_rd_we),
        .wb_sel(mem_wb_reg_0_wb_sel),
        .wb_valid(mem_wb_reg_0_wb_valid));
  BASIC_operand_a_mux_0_0 operand_a_mux_0
       (.op_a_sel(id_ex_reg_0_ex_op_a_sel),
        .operand_a(operand_a_mux_0_operand_a),
        .pc(id_ex_reg_0_ex_pc),
        .rs1_data(forward_mux_0_out_data));
  BASIC_operand_b_mux_0_0 operand_b_mux_0
       (.imm(id_ex_reg_0_ex_imm),
        .op_b_sel(id_ex_reg_0_ex_op_b_sel),
        .operand_b(operand_b_mux_0_operand_b),
        .rs2_data(forward_mux_1_out_data));
  BASIC_pc_to_imem_addr_0_0 pc_to_imem_addr_0
       (.addr(pc_to_imem_addr_0_addr),
        .pc(pc_unit_0_pc));
  BASIC_pc_unit_0_0 pc_unit_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .pc(pc_unit_0_pc),
        .pc_en(xlconstant_1_dout),
        .pc_plus4(pc_unit_0_pc_plus4),
        .pc_redirect_target(branch_0_pc_redirect_target),
        .pc_redirect_valid(branch_0_pc_redirect_valid),
        .rst(proc_sys_reset_0_peripheral_reset));
  BASIC_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(xlconstant_0_dout),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  BASIC_ram_data_1_0 ram_data_1
       (.addr(mem_stage_0_dmem_addr),
        .be(mem_stage_0_dmem_be),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(ram_data_1_rdata),
        .wdata(mem_stage_0_dmem_wdata),
        .we(mem_stage_0_dmem_we));
  BASIC_regfile_0_0 regfile_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .rd_addr(mem_wb_reg_0_wb_rd),
        .rd_wdata(wb_mux_0_rd_wdata),
        .rd_we(util_vector_logic_0_Res),
        .rs1_addr(decoder_0_rs1),
        .rs1_rdata(regfile_0_rs1_rdata),
        .rs2_addr(decoder_0_rs2),
        .rs2_rdata(regfile_0_rs2_rdata));
  BASIC_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(mem_wb_reg_0_wb_valid),
        .Op2(mem_wb_reg_0_wb_rd_we),
        .Res(util_vector_logic_0_Res));
  BASIC_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(ex_mem_reg_1_mem_valid),
        .Op2(ex_mem_reg_1_mem_rd_we),
        .Res(util_vector_logic_1_Res));
  BASIC_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(mem_stage_0_mem_out_valid),
        .Op2(mem_stage_0_mem_out_rd_we),
        .Res(util_vector_logic_2_Res));
  BASIC_wb_mux_0_0 wb_mux_0
       (.alu_y(mem_wb_reg_0_wb_alu_result),
        .imm_u(mem_wb_reg_0_wb_imm_u),
        .load_data(mem_wb_reg_0_wb_data),
        .pc_plus4(mem_wb_reg_0_wb_pc_plus4),
        .rd_wdata(wb_mux_0_rd_wdata),
        .wb_sel(mem_wb_reg_0_wb_sel));
  BASIC_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  BASIC_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  BASIC_xlconstant_1_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  BASIC_xlconstant_2_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  BASIC_xlslice_0_0 xlslice_0
       (.Din(mem_stage_0_mem_out_alu_result),
        .Dout(xlslice_0_Dout));
  BASIC_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
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
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule
