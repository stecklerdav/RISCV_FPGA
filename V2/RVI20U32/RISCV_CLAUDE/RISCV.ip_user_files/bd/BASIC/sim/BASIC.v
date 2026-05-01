//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Wed Apr 29 00:07:14 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target BASIC.bd
//Design      : BASIC
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BASIC,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BASIC,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=43,numReposBlks=36,numNonXlnxBlks=0,numHierBlks=7,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=24,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "BASIC.hwdef" *) 
module BASIC
   ();

  wire Net;
  wire RV32I_EX_ex_flush_req;
  wire [4:0]RV32I_ID_rs1;
  wire RV32I_ID_rs1_used;
  wire [4:0]RV32I_ID_rs2;
  wire RV32I_ID_rs2_used;
  wire [31:0]RV32I_MEM_dmem_addr;
  wire [3:0]RV32I_MEM_dmem_be;
  wire [31:0]RV32I_MEM_dmem_wdata;
  wire RV32I_MEM_dmem_we;
  wire RV32I_MEM_wb_valid;
  wire [31:0]RV32I_RAM_MEMORY_rdata;
  wire [31:0]branch_0_pc_redirect_target;
  wire branch_0_pc_redirect_valid;
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
  wire load_use_detection_0_id_ex_flush;
  wire load_use_detection_0_if_id_hold;
  wire load_use_detection_0_load_use_hazard;
  wire load_use_detection_0_pc_en;
  wire [31:0]mem_stage_0_mem_forward_data;
  wire [4:0]mem_stage_0_mem_out_rd;
  wire mem_stage_0_mem_out_rd_we;
  wire mem_stage_0_mem_out_valid;
  wire [31:0]mem_wb_reg_0_wb_alu_result;
  wire [31:0]mem_wb_reg_0_wb_data;
  wire [31:0]mem_wb_reg_0_wb_imm_u;
  wire [31:0]mem_wb_reg_0_wb_pc_plus4;
  wire [4:0]mem_wb_reg_0_wb_rd;
  wire [1:0]mem_wb_reg_0_wb_sel;
  wire priority_branch_OR_l_0_id_ex_flush_final;
  wire priority_branch_OR_l_0_if_id_flush_final;
  wire priority_branch_OR_l_0_if_id_hold_final;
  wire priority_branch_OR_l_0_pc_en_final;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [0:0]proc_sys_reset_0_peripheral_reset1;
  wire [4:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]vio_0_probe_out0;
  wire [31:0]wb_mux_0_rd_wdata;
  wire [0:0]xlconstant_0_dout;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  RV32I_EX_imp_10RN1RF RV32I_EX
       (.alu_op(id_ex_reg_0_ex_alu_op),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .ex_branch_en(id_ex_reg_0_ex_branch_en),
        .ex_branch_funct3(id_ex_reg_0_ex_branch_funct3),
        .ex_flush_req(RV32I_EX_ex_flush_req),
        .ex_imm(id_ex_reg_0_ex_imm),
        .ex_imm_u(id_ex_reg_0_ex_imm_u),
        .ex_jal(id_ex_reg_0_ex_jal),
        .ex_jalr(id_ex_reg_0_ex_jalr),
        .ex_mem_data(ex_mem_reg_1_mem_alu_result),
        .ex_mem_re(id_ex_reg_0_ex_mem_re),
        .ex_mem_size(id_ex_reg_0_ex_mem_size),
        .ex_mem_unsigned(id_ex_reg_0_ex_mem_unsigned),
        .ex_mem_we(id_ex_reg_0_ex_mem_we),
        .ex_op_b_sel(id_ex_reg_0_ex_op_b_sel),
        .ex_pc_plus4(id_ex_reg_0_ex_pc_plus4),
        .ex_rd(id_ex_reg_0_ex_rd),
        .ex_rd_we(id_ex_reg_0_ex_rd_we),
        .ex_rs1(id_ex_reg_0_ex_rs1),
        .ex_rs1_data(id_ex_reg_0_ex_rs1_data),
        .ex_rs2(id_ex_reg_0_ex_rs2),
        .ex_rs2_data(id_ex_reg_0_ex_rs2_data),
        .ex_valid(Net),
        .ex_wb_sel(id_ex_reg_0_ex_wb_sel),
        .mem_imm_u(ex_mem_reg_1_mem_imm_u),
        .mem_mem_re(ex_mem_reg_1_mem_mem_re),
        .mem_mem_size(ex_mem_reg_1_mem_mem_size),
        .mem_mem_unsigned(ex_mem_reg_1_mem_mem_unsigned),
        .mem_mem_we(ex_mem_reg_1_mem_mem_we),
        .mem_pc_plus4(ex_mem_reg_1_mem_pc_plus4),
        .mem_rd(ex_mem_reg_1_mem_rd),
        .mem_rd_we(ex_mem_reg_1_mem_rd_we),
        .mem_stage_data(mem_stage_0_mem_forward_data),
        .mem_stage_rd(mem_stage_0_mem_out_rd),
        .mem_stage_rd_we(util_vector_logic_2_Res),
        .mem_stage_valid(mem_stage_0_mem_out_valid),
        .mem_store_data(ex_mem_reg_1_mem_store_data),
        .mem_valid(ex_mem_reg_1_mem_valid),
        .mem_wb_data(wb_mux_0_rd_wdata),
        .mem_wb_sel(ex_mem_reg_1_mem_wb_sel),
        .op_a_sel(id_ex_reg_0_ex_op_a_sel),
        .pc(id_ex_reg_0_ex_pc),
        .pc_redirect_target(branch_0_pc_redirect_target),
        .pc_redirect_valid(branch_0_pc_redirect_valid),
        .rst(proc_sys_reset_0_peripheral_reset),
        .wb_rd(mem_wb_reg_0_wb_rd),
        .wb_rd_we(util_vector_logic_0_Res),
        .wb_valid(RV32I_MEM_wb_valid));
  RV32I_ID_imp_FBK4LB RV32I_ID
       (.bubble(priority_branch_OR_l_0_id_ex_flush_final),
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
        .id_pc(if_id_reg_0_id_pc_out),
        .id_pc_plus4(if_id_reg_0_id_pc4_out),
        .id_valid(if_id_reg_0_id_valid_out),
        .instr(if_id_reg_0_id_instr_out),
        .rd_addr(mem_wb_reg_0_wb_rd),
        .rd_wdata(wb_mux_0_rd_wdata),
        .rd_we(util_vector_logic_0_Res),
        .rs1(RV32I_ID_rs1),
        .rs1_used(RV32I_ID_rs1_used),
        .rs2(RV32I_ID_rs2),
        .rs2_used(RV32I_ID_rs2_used),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(load_use_detection_0_load_use_hazard));
  RV32I_IF_imp_Y4LBN8 RV32I_IF
       (.Op1(mem_stage_0_mem_out_valid),
        .Op2(mem_stage_0_mem_out_rd_we),
        .Res(util_vector_logic_2_Res),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .flush(priority_branch_OR_l_0_if_id_flush_final),
        .hold(priority_branch_OR_l_0_if_id_hold_final),
        .id_instr_out(if_id_reg_0_id_instr_out),
        .id_pc4_out(if_id_reg_0_id_pc4_out),
        .id_pc_out(if_id_reg_0_id_pc_out),
        .id_valid_out(if_id_reg_0_id_valid_out),
        .pc_en(priority_branch_OR_l_0_pc_en_final),
        .pc_redirect_target(branch_0_pc_redirect_target),
        .pc_redirect_valid(branch_0_pc_redirect_valid),
        .rst(proc_sys_reset_0_peripheral_reset));
  RV32I_MEM_imp_3VZ702 RV32I_MEM
       (.Res(util_vector_logic_0_Res),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .dmem_addr(RV32I_MEM_dmem_addr),
        .dmem_be(RV32I_MEM_dmem_be),
        .dmem_wdata(RV32I_MEM_dmem_wdata),
        .dmem_we(RV32I_MEM_dmem_we),
        .mem_data(RV32I_RAM_MEMORY_rdata),
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
        .mem_rd(mem_stage_0_mem_out_rd),
        .mem_rd_we(mem_stage_0_mem_out_rd_we),
        .mem_valid(mem_stage_0_mem_out_valid),
        .rst(proc_sys_reset_0_peripheral_reset),
        .wb_alu_result(mem_wb_reg_0_wb_alu_result),
        .wb_data(mem_wb_reg_0_wb_data),
        .wb_imm_u(mem_wb_reg_0_wb_imm_u),
        .wb_pc_plus4(mem_wb_reg_0_wb_pc_plus4),
        .wb_rd(mem_wb_reg_0_wb_rd),
        .wb_sel(mem_wb_reg_0_wb_sel),
        .wb_valid(RV32I_MEM_wb_valid));
  RV32I_RAM_MEMORY_imp_1A3BT4W RV32I_RAM_MEMORY
       (.addr(RV32I_MEM_dmem_addr),
        .be(RV32I_MEM_dmem_be),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(RV32I_RAM_MEMORY_rdata),
        .wdata(RV32I_MEM_dmem_wdata),
        .we(RV32I_MEM_dmem_we));
  RV32I_WB_imp_1NJ77AP RV32I_WB
       (.alu_y(mem_wb_reg_0_wb_alu_result),
        .imm_u(mem_wb_reg_0_wb_imm_u),
        .load_data(mem_wb_reg_0_wb_data),
        .pc_plus4(mem_wb_reg_0_wb_pc_plus4),
        .rd_wdata(wb_mux_0_rd_wdata),
        .wb_sel(mem_wb_reg_0_wb_sel));
  BASIC_ila_0_0 ila_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .probe0(proc_sys_reset_0_peripheral_reset),
        .probe1(util_vector_logic_0_Res),
        .probe2(mem_wb_reg_0_wb_rd),
        .probe3(wb_mux_0_rd_wdata),
        .probe4(load_use_detection_0_load_use_hazard));
  BASIC_load_use_detection_0_0 load_use_detection_0
       (.id_ex_flush(load_use_detection_0_id_ex_flush),
        .id_ex_mem_re(id_ex_reg_0_ex_mem_re),
        .id_ex_rd(id_ex_reg_0_ex_rd),
        .id_ex_valid(Net),
        .if_id_hold(load_use_detection_0_if_id_hold),
        .if_id_rs1(RV32I_ID_rs1),
        .if_id_rs1_used(RV32I_ID_rs1_used),
        .if_id_rs2(RV32I_ID_rs2),
        .if_id_rs2_used(RV32I_ID_rs2_used),
        .if_id_valid(if_id_reg_0_id_valid_out),
        .load_use_hazard(load_use_detection_0_load_use_hazard),
        .pc_en(load_use_detection_0_pc_en));
  BASIC_priority_branch_OR_l_0_0 priority_branch_OR_l_0
       (.ex_flush_req(RV32I_EX_ex_flush_req),
        .id_ex_flush_final(priority_branch_OR_l_0_id_ex_flush_final),
        .if_id_flush_final(priority_branch_OR_l_0_if_id_flush_final),
        .if_id_hold_final(priority_branch_OR_l_0_if_id_hold_final),
        .load_use_id_ex_flush(load_use_detection_0_id_ex_flush),
        .load_use_if_id_hold(load_use_detection_0_if_id_hold),
        .load_use_pc_en(load_use_detection_0_pc_en),
        .pc_en_final(priority_branch_OR_l_0_pc_en_final));
  BASIC_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(xlconstant_0_dout),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset1),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  BASIC_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(proc_sys_reset_0_peripheral_reset1),
        .Op2(vio_0_probe_out0),
        .Res(proc_sys_reset_0_peripheral_reset));
  BASIC_vio_0_0 vio_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .probe_out0(vio_0_probe_out0));
  BASIC_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
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

module RV32I_EX_imp_10RN1RF
   (alu_op,
    clk,
    ex_branch_en,
    ex_branch_funct3,
    ex_flush_req,
    ex_imm,
    ex_imm_u,
    ex_jal,
    ex_jalr,
    ex_mem_data,
    ex_mem_re,
    ex_mem_size,
    ex_mem_unsigned,
    ex_mem_we,
    ex_op_b_sel,
    ex_pc_plus4,
    ex_rd,
    ex_rd_we,
    ex_rs1,
    ex_rs1_data,
    ex_rs2,
    ex_rs2_data,
    ex_valid,
    ex_wb_sel,
    mem_imm_u,
    mem_mem_re,
    mem_mem_size,
    mem_mem_unsigned,
    mem_mem_we,
    mem_pc_plus4,
    mem_rd,
    mem_rd_we,
    mem_stage_data,
    mem_stage_rd,
    mem_stage_rd_we,
    mem_stage_valid,
    mem_store_data,
    mem_valid,
    mem_wb_data,
    mem_wb_sel,
    op_a_sel,
    pc,
    pc_redirect_target,
    pc_redirect_valid,
    rst,
    wb_rd,
    wb_rd_we,
    wb_valid);
  input [3:0]alu_op;
  input clk;
  input ex_branch_en;
  input [2:0]ex_branch_funct3;
  output ex_flush_req;
  input [31:0]ex_imm;
  input [31:0]ex_imm_u;
  input ex_jal;
  input ex_jalr;
  output [31:0]ex_mem_data;
  input ex_mem_re;
  input [1:0]ex_mem_size;
  input ex_mem_unsigned;
  input ex_mem_we;
  input [1:0]ex_op_b_sel;
  input [31:0]ex_pc_plus4;
  input [4:0]ex_rd;
  input ex_rd_we;
  input [4:0]ex_rs1;
  input [31:0]ex_rs1_data;
  input [4:0]ex_rs2;
  input [31:0]ex_rs2_data;
  input ex_valid;
  input [1:0]ex_wb_sel;
  output [31:0]mem_imm_u;
  output mem_mem_re;
  output [1:0]mem_mem_size;
  output mem_mem_unsigned;
  output mem_mem_we;
  output [31:0]mem_pc_plus4;
  output [4:0]mem_rd;
  output mem_rd_we;
  input [31:0]mem_stage_data;
  input [4:0]mem_stage_rd;
  input mem_stage_rd_we;
  input mem_stage_valid;
  output [31:0]mem_store_data;
  output mem_valid;
  input [31:0]mem_wb_data;
  output [1:0]mem_wb_sel;
  input [1:0]op_a_sel;
  input [31:0]pc;
  output [31:0]pc_redirect_target;
  output pc_redirect_valid;
  input rst;
  input [4:0]wb_rd;
  input [4:0]wb_rd_we;
  input wb_valid;

  wire Net;
  wire [31:0]alu_0_y;
  wire [3:0]branch_0_ex_exception_cause;
  wire [31:0]branch_0_ex_exception_tval;
  wire branch_0_ex_exception_valid;
  wire branch_0_ex_flush_req;
  wire [31:0]branch_0_pc_redirect_target;
  wire branch_0_pc_redirect_valid;
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
  wire [31:0]forward_mux_2_out_data;
  wire [1:0]forwarding_0_forward_a;
  wire [1:0]forwarding_0_forward_b;
  wire [1:0]forwarding_0_forward_store;
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
  wire [31:0]mem_stage_0_mem_forward_data;
  wire [4:0]mem_stage_0_mem_out_rd;
  wire mem_stage_valid_1;
  wire [4:0]mem_wb_reg_0_wb_rd;
  wire [31:0]operand_a_mux_0_operand_a;
  wire [31:0]operand_b_mux_0_operand_b;
  wire proc_sys_reset_0_peripheral_reset;
  wire [4:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire util_vector_logic_2_Res;
  wire [31:0]wb_mux_0_rd_wdata;
  wire wb_valid_1;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Net = ex_valid;
  assign ex_flush_req = branch_0_ex_flush_req;
  assign ex_mem_data[31:0] = ex_mem_reg_1_mem_alu_result;
  assign id_ex_reg_0_ex_alu_op = alu_op[3:0];
  assign id_ex_reg_0_ex_branch_en = ex_branch_en;
  assign id_ex_reg_0_ex_branch_funct3 = ex_branch_funct3[2:0];
  assign id_ex_reg_0_ex_imm = ex_imm[31:0];
  assign id_ex_reg_0_ex_imm_u = ex_imm_u[31:0];
  assign id_ex_reg_0_ex_jal = ex_jal;
  assign id_ex_reg_0_ex_jalr = ex_jalr;
  assign id_ex_reg_0_ex_mem_re = ex_mem_re;
  assign id_ex_reg_0_ex_mem_size = ex_mem_size[1:0];
  assign id_ex_reg_0_ex_mem_unsigned = ex_mem_unsigned;
  assign id_ex_reg_0_ex_mem_we = ex_mem_we;
  assign id_ex_reg_0_ex_op_a_sel = op_a_sel[1:0];
  assign id_ex_reg_0_ex_op_b_sel = ex_op_b_sel[1:0];
  assign id_ex_reg_0_ex_pc = pc[31:0];
  assign id_ex_reg_0_ex_pc_plus4 = ex_pc_plus4[31:0];
  assign id_ex_reg_0_ex_rd = ex_rd[4:0];
  assign id_ex_reg_0_ex_rd_we = ex_rd_we;
  assign id_ex_reg_0_ex_rs1 = ex_rs1[4:0];
  assign id_ex_reg_0_ex_rs1_data = ex_rs1_data[31:0];
  assign id_ex_reg_0_ex_rs2 = ex_rs2[4:0];
  assign id_ex_reg_0_ex_rs2_data = ex_rs2_data[31:0];
  assign id_ex_reg_0_ex_wb_sel = ex_wb_sel[1:0];
  assign mem_imm_u[31:0] = ex_mem_reg_1_mem_imm_u;
  assign mem_mem_re = ex_mem_reg_1_mem_mem_re;
  assign mem_mem_size[1:0] = ex_mem_reg_1_mem_mem_size;
  assign mem_mem_unsigned = ex_mem_reg_1_mem_mem_unsigned;
  assign mem_mem_we = ex_mem_reg_1_mem_mem_we;
  assign mem_pc_plus4[31:0] = ex_mem_reg_1_mem_pc_plus4;
  assign mem_rd[4:0] = ex_mem_reg_1_mem_rd;
  assign mem_rd_we = ex_mem_reg_1_mem_rd_we;
  assign mem_stage_0_mem_forward_data = mem_stage_data[31:0];
  assign mem_stage_0_mem_out_rd = mem_stage_rd[4:0];
  assign mem_stage_valid_1 = mem_stage_valid;
  assign mem_store_data[31:0] = ex_mem_reg_1_mem_store_data;
  assign mem_valid = ex_mem_reg_1_mem_valid;
  assign mem_wb_reg_0_wb_rd = wb_rd[4:0];
  assign mem_wb_sel[1:0] = ex_mem_reg_1_mem_wb_sel;
  assign pc_redirect_target[31:0] = branch_0_pc_redirect_target;
  assign pc_redirect_valid = branch_0_pc_redirect_valid;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign util_vector_logic_0_Res = wb_rd_we[4:0];
  assign util_vector_logic_2_Res = mem_stage_rd_we;
  assign wb_mux_0_rd_wdata = mem_wb_data[31:0];
  assign wb_valid_1 = wb_valid;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  BASIC_alu_0_0 alu_0
       (.a(operand_a_mux_0_operand_a),
        .alu_op(id_ex_reg_0_ex_alu_op),
        .b(operand_b_mux_0_operand_b),
        .y(alu_0_y));
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
        .ex_rs1_data(forward_mux_0_out_data),
        .ex_rs2_data(forward_mux_1_out_data),
        .ex_valid(Net),
        .pc_redirect_target(branch_0_pc_redirect_target),
        .pc_redirect_valid(branch_0_pc_redirect_valid));
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
        .ex_store_data(forward_mux_2_out_data),
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
  BASIC_forward_mux_1_0 forward_mux_2
       (.base_data(id_ex_reg_0_ex_rs2_data),
        .ex_mem_data(ex_mem_reg_1_mem_alu_result),
        .forward_sel(forwarding_0_forward_store),
        .mem_stage_data(mem_stage_0_mem_forward_data),
        .mem_wb_data(wb_mux_0_rd_wdata),
        .out_data(forward_mux_2_out_data));
  BASIC_forwarding_0_0 forwarding_0
       (.ex_op_b_sel(id_ex_reg_0_ex_op_b_sel),
        .ex_rs1(id_ex_reg_0_ex_rs1),
        .ex_rs2(id_ex_reg_0_ex_rs2),
        .forward_a(forwarding_0_forward_a),
        .forward_b(forwarding_0_forward_b),
        .forward_store(forwarding_0_forward_store),
        .mem_is_load(ex_mem_reg_1_mem_mem_re),
        .mem_rd(ex_mem_reg_1_mem_rd),
        .mem_rd_we(util_vector_logic_1_Res),
        .mem_stage_rd(mem_stage_0_mem_out_rd),
        .mem_stage_rd_we(util_vector_logic_2_Res),
        .mem_stage_valid(mem_stage_valid_1),
        .mem_valid(ex_mem_reg_1_mem_valid),
        .wb_rd(mem_wb_reg_0_wb_rd),
        .wb_rd_we(util_vector_logic_0_Res[0]),
        .wb_valid(wb_valid_1));
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
  BASIC_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(ex_mem_reg_1_mem_valid),
        .Op2(ex_mem_reg_1_mem_rd_we),
        .Res(util_vector_logic_1_Res));
endmodule

module RV32I_ID_imp_FBK4LB
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
    ex_op_a_sel,
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
    rs1,
    rs1_used,
    rs2,
    rs2_used,
    rst,
    stall);
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
  output [1:0]ex_op_a_sel;
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
  input [4:0]rd_we;
  output [4:0]rs1;
  output rs1_used;
  output [4:0]rs2;
  output rs2_used;
  input rst;
  input stall;

  wire Net;
  wire bubble_1;
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
  wire decoder_0_rs1_used;
  wire [4:0]decoder_0_rs2;
  wire decoder_0_rs2_used;
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
  wire [4:0]mem_wb_reg_0_wb_rd;
  wire proc_sys_reset_0_peripheral_reset;
  wire [31:0]regfile_0_rs1_rdata;
  wire [31:0]regfile_0_rs2_rdata;
  wire [4:0]util_vector_logic_0_Res;
  wire [31:0]wb_mux_0_rd_wdata;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign bubble_1 = bubble;
  assign ex_alu_op[3:0] = id_ex_reg_0_ex_alu_op;
  assign ex_branch_en = id_ex_reg_0_ex_branch_en;
  assign ex_branch_funct3[2:0] = id_ex_reg_0_ex_branch_funct3;
  assign ex_imm[31:0] = id_ex_reg_0_ex_imm;
  assign ex_imm_u[31:0] = id_ex_reg_0_ex_imm_u;
  assign ex_jal = id_ex_reg_0_ex_jal;
  assign ex_jalr = id_ex_reg_0_ex_jalr;
  assign ex_mem_re = id_ex_reg_0_ex_mem_re;
  assign ex_mem_size[1:0] = id_ex_reg_0_ex_mem_size;
  assign ex_mem_unsigned = id_ex_reg_0_ex_mem_unsigned;
  assign ex_mem_we = id_ex_reg_0_ex_mem_we;
  assign ex_op_a_sel[1:0] = id_ex_reg_0_ex_op_a_sel;
  assign ex_op_b_sel[1:0] = id_ex_reg_0_ex_op_b_sel;
  assign ex_pc[31:0] = id_ex_reg_0_ex_pc;
  assign ex_pc_plus4[31:0] = id_ex_reg_0_ex_pc_plus4;
  assign ex_rd[4:0] = id_ex_reg_0_ex_rd;
  assign ex_rd_we = id_ex_reg_0_ex_rd_we;
  assign ex_rs1[4:0] = id_ex_reg_0_ex_rs1;
  assign ex_rs1_data[31:0] = id_ex_reg_0_ex_rs1_data;
  assign ex_rs2[4:0] = id_ex_reg_0_ex_rs2;
  assign ex_rs2_data[31:0] = id_ex_reg_0_ex_rs2_data;
  assign ex_valid = Net;
  assign ex_wb_sel[1:0] = id_ex_reg_0_ex_wb_sel;
  assign if_id_reg_0_id_instr_out = instr[31:0];
  assign if_id_reg_0_id_pc4_out = id_pc_plus4[31:0];
  assign if_id_reg_0_id_pc_out = id_pc[31:0];
  assign if_id_reg_0_id_valid_out = id_valid;
  assign mem_wb_reg_0_wb_rd = rd_addr[4:0];
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign rs1[4:0] = decoder_0_rs1;
  assign rs1_used = decoder_0_rs1_used;
  assign rs2[4:0] = decoder_0_rs2;
  assign rs2_used = decoder_0_rs2_used;
  assign util_vector_logic_0_Res = rd_we[4:0];
  assign wb_mux_0_rd_wdata = rd_wdata[31:0];
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
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
        .rs1_used(decoder_0_rs1_used),
        .rs2(decoder_0_rs2),
        .rs2_used(decoder_0_rs2_used));
  BASIC_id_ex_reg_0_0 id_ex_reg_0
       (.bubble(bubble_1),
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
  BASIC_imm_mux_0_0 imm_mux_0
       (.imm_b(decoder_0_imm_b),
        .imm_i(decoder_0_imm_i),
        .imm_j(decoder_0_imm_j),
        .imm_out(imm_mux_0_imm_out),
        .imm_s(decoder_0_imm_s),
        .imm_sel(control_0_imm_sel),
        .imm_u(decoder_0_imm_u));
  BASIC_regfile_0_0 regfile_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .rd_addr(mem_wb_reg_0_wb_rd),
        .rd_wdata(wb_mux_0_rd_wdata),
        .rd_we(util_vector_logic_0_Res[0]),
        .rs1_addr(decoder_0_rs1),
        .rs1_rdata(regfile_0_rs1_rdata),
        .rs2_addr(decoder_0_rs2),
        .rs2_rdata(regfile_0_rs2_rdata));
endmodule

module RV32I_IF_imp_Y4LBN8
   (Op1,
    Op2,
    Res,
    clk,
    flush,
    hold,
    id_instr_out,
    id_pc4_out,
    id_pc_out,
    id_valid_out,
    pc_en,
    pc_redirect_target,
    pc_redirect_valid,
    rst);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;
  input clk;
  input flush;
  input hold;
  output [31:0]id_instr_out;
  output [31:0]id_pc4_out;
  output [31:0]id_pc_out;
  output id_valid_out;
  input pc_en;
  input [31:0]pc_redirect_target;
  input pc_redirect_valid;
  input rst;

  wire [31:0]RV32I_ROM_MEMORY_douta;
  wire branch_0_ex_flush_req;
  wire [31:0]branch_0_pc_redirect_target;
  wire branch_0_pc_redirect_valid;
  wire hold_1;
  wire [31:0]if_id_reg_0_id_instr_out;
  wire [31:0]if_id_reg_0_id_pc4_out;
  wire [31:0]if_id_reg_0_id_pc_out;
  wire if_id_reg_0_id_valid_out;
  wire [0:0]mem_stage_0_mem_out_rd_we;
  wire [0:0]mem_stage_0_mem_out_valid;
  wire pc_en_1;
  wire [10:0]pc_to_imem_addr_0_addr;
  wire [31:0]pc_unit_0_pc;
  wire [31:0]pc_unit_0_pc_plus4;
  wire proc_sys_reset_0_peripheral_reset;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]xlconstant_3_dout;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Res[0] = util_vector_logic_2_Res;
  assign branch_0_ex_flush_req = flush;
  assign branch_0_pc_redirect_target = pc_redirect_target[31:0];
  assign branch_0_pc_redirect_valid = pc_redirect_valid;
  assign hold_1 = hold;
  assign id_instr_out[31:0] = if_id_reg_0_id_instr_out;
  assign id_pc4_out[31:0] = if_id_reg_0_id_pc4_out;
  assign id_pc_out[31:0] = if_id_reg_0_id_pc_out;
  assign id_valid_out = if_id_reg_0_id_valid_out;
  assign mem_stage_0_mem_out_rd_we = Op2[0];
  assign mem_stage_0_mem_out_valid = Op1[0];
  assign pc_en_1 = pc_en;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RV32I_ROM_MEMORY_imp_ZEEBV6 RV32I_ROM_MEMORY
       (.addra(pc_to_imem_addr_0_addr),
        .clka(zynq_ultra_ps_e_0_pl_clk0),
        .douta(RV32I_ROM_MEMORY_douta),
        .ena(util_vector_logic_3_Res));
  BASIC_if_id_reg_0_0 if_id_reg_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .flush(branch_0_ex_flush_req),
        .hold(hold_1),
        .id_instr_out(if_id_reg_0_id_instr_out),
        .id_pc4_out(if_id_reg_0_id_pc4_out),
        .id_pc_out(if_id_reg_0_id_pc_out),
        .id_valid_out(if_id_reg_0_id_valid_out),
        .if_instr_in(RV32I_ROM_MEMORY_douta),
        .if_pc4_in(pc_unit_0_pc_plus4),
        .if_pc_in(pc_unit_0_pc),
        .if_valid_in(xlconstant_3_dout),
        .rst(proc_sys_reset_0_peripheral_reset));
  BASIC_pc_to_imem_addr_0_0 pc_to_imem_addr_0
       (.addr(pc_to_imem_addr_0_addr),
        .pc(pc_unit_0_pc));
  BASIC_pc_unit_0_0 pc_unit_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .pc(pc_unit_0_pc),
        .pc_en(pc_en_1),
        .pc_plus4(pc_unit_0_pc_plus4),
        .pc_redirect_target(branch_0_pc_redirect_target),
        .pc_redirect_valid(branch_0_pc_redirect_valid),
        .rst(proc_sys_reset_0_peripheral_reset));
  BASIC_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(mem_stage_0_mem_out_valid),
        .Op2(mem_stage_0_mem_out_rd_we),
        .Res(util_vector_logic_2_Res));
  BASIC_util_vector_logic_2_1 util_vector_logic_3
       (.Op1(hold_1),
        .Res(util_vector_logic_3_Res));
  BASIC_xlconstant_2_0 xlconstant_3
       (.dout(xlconstant_3_dout));
endmodule

module RV32I_MEM_imp_3VZ702
   (Res,
    clk,
    dmem_addr,
    dmem_be,
    dmem_wdata,
    dmem_we,
    mem_data,
    mem_forward_data,
    mem_in_alu_result,
    mem_in_imm_u,
    mem_in_mem_re,
    mem_in_mem_size,
    mem_in_mem_unsigned,
    mem_in_mem_we,
    mem_in_pc_plus4,
    mem_in_rd,
    mem_in_rd_we,
    mem_in_store_data,
    mem_in_valid,
    mem_in_wb_sel,
    mem_rd,
    mem_rd_we,
    mem_valid,
    rst,
    wb_alu_result,
    wb_data,
    wb_imm_u,
    wb_pc_plus4,
    wb_rd,
    wb_sel,
    wb_valid);
  output [4:0]Res;
  input clk;
  output [31:0]dmem_addr;
  output [3:0]dmem_be;
  output [31:0]dmem_wdata;
  output dmem_we;
  input [31:0]mem_data;
  output [31:0]mem_forward_data;
  input [31:0]mem_in_alu_result;
  input [31:0]mem_in_imm_u;
  input mem_in_mem_re;
  input [1:0]mem_in_mem_size;
  input mem_in_mem_unsigned;
  input mem_in_mem_we;
  input [31:0]mem_in_pc_plus4;
  input [4:0]mem_in_rd;
  input mem_in_rd_we;
  input [31:0]mem_in_store_data;
  input mem_in_valid;
  input [1:0]mem_in_wb_sel;
  output [4:0]mem_rd;
  output mem_rd_we;
  output mem_valid;
  input rst;
  output [31:0]wb_alu_result;
  output [31:0]wb_data;
  output [31:0]wb_imm_u;
  output [31:0]wb_pc_plus4;
  output [4:0]wb_rd;
  output [1:0]wb_sel;
  output wb_valid;

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
  wire [31:0]mem_data_1;
  wire [31:0]mem_stage_0_dmem_addr;
  wire [3:0]mem_stage_0_dmem_be;
  wire [31:0]mem_stage_0_dmem_wdata;
  wire mem_stage_0_dmem_we;
  wire [31:0]mem_stage_0_mem_forward_data;
  wire [31:0]mem_stage_0_mem_out_alu_result;
  wire [31:0]mem_stage_0_mem_out_data;
  wire [31:0]mem_stage_0_mem_out_imm_u;
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
  wire proc_sys_reset_0_peripheral_reset;
  wire regfile_we_gen_0_regfile_we;
  wire [0:0]xlconstant_3_dout;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Res[0] = regfile_we_gen_0_regfile_we;
  assign dmem_addr[31:0] = mem_stage_0_dmem_addr;
  assign dmem_be[3:0] = mem_stage_0_dmem_be;
  assign dmem_wdata[31:0] = mem_stage_0_dmem_wdata;
  assign dmem_we = mem_stage_0_dmem_we;
  assign ex_mem_reg_1_mem_alu_result = mem_in_alu_result[31:0];
  assign ex_mem_reg_1_mem_imm_u = mem_in_imm_u[31:0];
  assign ex_mem_reg_1_mem_mem_re = mem_in_mem_re;
  assign ex_mem_reg_1_mem_mem_size = mem_in_mem_size[1:0];
  assign ex_mem_reg_1_mem_mem_unsigned = mem_in_mem_unsigned;
  assign ex_mem_reg_1_mem_mem_we = mem_in_mem_we;
  assign ex_mem_reg_1_mem_pc_plus4 = mem_in_pc_plus4[31:0];
  assign ex_mem_reg_1_mem_rd = mem_in_rd[4:0];
  assign ex_mem_reg_1_mem_rd_we = mem_in_rd_we;
  assign ex_mem_reg_1_mem_store_data = mem_in_store_data[31:0];
  assign ex_mem_reg_1_mem_valid = mem_in_valid;
  assign ex_mem_reg_1_mem_wb_sel = mem_in_wb_sel[1:0];
  assign mem_data_1 = mem_data[31:0];
  assign mem_forward_data[31:0] = mem_stage_0_mem_forward_data;
  assign mem_rd[4:0] = mem_stage_0_mem_out_rd;
  assign mem_rd_we = mem_stage_0_mem_out_rd_we;
  assign mem_valid = mem_stage_0_mem_out_valid;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign wb_alu_result[31:0] = mem_wb_reg_0_wb_alu_result;
  assign wb_data[31:0] = mem_wb_reg_0_wb_data;
  assign wb_imm_u[31:0] = mem_wb_reg_0_wb_imm_u;
  assign wb_pc_plus4[31:0] = mem_wb_reg_0_wb_pc_plus4;
  assign wb_rd[4:0] = mem_wb_reg_0_wb_rd;
  assign wb_sel[1:0] = mem_wb_reg_0_wb_sel;
  assign wb_valid = mem_wb_reg_0_wb_valid;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  BASIC_mem_stage_0_0 mem_stage_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .dmem_addr(mem_stage_0_dmem_addr),
        .dmem_be(mem_stage_0_dmem_be),
        .dmem_rdata(mem_data_1),
        .dmem_wdata(mem_stage_0_dmem_wdata),
        .dmem_we(mem_stage_0_dmem_we),
        .kill(xlconstant_3_dout),
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
        .mem_out_data(mem_stage_0_mem_out_data),
        .mem_out_imm_u(mem_stage_0_mem_out_imm_u),
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
        .mem_data(mem_stage_0_mem_out_data),
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
  BASIC_regfile_we_gen_0_0 regfile_we_gen_0
       (.regfile_we(regfile_we_gen_0_regfile_we),
        .wb_rd(mem_wb_reg_0_wb_rd),
        .wb_rd_we(mem_wb_reg_0_wb_rd_we),
        .wb_valid(mem_wb_reg_0_wb_valid));
  BASIC_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
endmodule

module RV32I_RAM_MEMORY_imp_1A3BT4W
   (addr,
    be,
    clk,
    rdata,
    wdata,
    we);
  input [31:0]addr;
  input [3:0]be;
  input clk;
  output [31:0]rdata;
  input [31:0]wdata;
  input we;

  wire [31:0]RV32I_MEM_dmem_addr;
  wire [3:0]RV32I_MEM_dmem_be;
  wire [31:0]RV32I_MEM_dmem_wdata;
  wire RV32I_MEM_dmem_we;
  wire [31:0]ram_data_1_rdata;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign RV32I_MEM_dmem_addr = addr[31:0];
  assign RV32I_MEM_dmem_be = be[3:0];
  assign RV32I_MEM_dmem_wdata = wdata[31:0];
  assign RV32I_MEM_dmem_we = we;
  assign rdata[31:0] = ram_data_1_rdata;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  BASIC_ram_data_1_0 ram_data_1
       (.addr(RV32I_MEM_dmem_addr),
        .be(RV32I_MEM_dmem_be),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(ram_data_1_rdata),
        .wdata(RV32I_MEM_dmem_wdata),
        .we(RV32I_MEM_dmem_we));
endmodule

module RV32I_ROM_MEMORY_imp_ZEEBV6
   (addra,
    clka,
    douta,
    ena);
  input [10:0]addra;
  input clka;
  output [31:0]douta;
  input ena;

  wire [10:0]RV32I_IF_addr;
  wire RV32I_IF_dout;
  wire [31:0]blk_mem_gen_0_douta;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign RV32I_IF_addr = addra[10:0];
  assign RV32I_IF_dout = ena;
  assign douta[31:0] = blk_mem_gen_0_douta;
  assign zynq_ultra_ps_e_0_pl_clk0 = clka;
  BASIC_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(RV32I_IF_addr),
        .clka(zynq_ultra_ps_e_0_pl_clk0),
        .douta(blk_mem_gen_0_douta),
        .ena(RV32I_IF_dout));
endmodule

module RV32I_WB_imp_1NJ77AP
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

  wire [31:0]mem_wb_reg_0_wb_alu_result;
  wire [31:0]mem_wb_reg_0_wb_data;
  wire [31:0]mem_wb_reg_0_wb_imm_u;
  wire [31:0]mem_wb_reg_0_wb_pc_plus4;
  wire [1:0]mem_wb_reg_0_wb_sel;
  wire [31:0]wb_mux_0_rd_wdata;

  assign mem_wb_reg_0_wb_alu_result = alu_y[31:0];
  assign mem_wb_reg_0_wb_data = load_data[31:0];
  assign mem_wb_reg_0_wb_imm_u = imm_u[31:0];
  assign mem_wb_reg_0_wb_pc_plus4 = pc_plus4[31:0];
  assign mem_wb_reg_0_wb_sel = wb_sel[1:0];
  assign rd_wdata[31:0] = wb_mux_0_rd_wdata;
  BASIC_wb_mux_0_0 wb_mux_0
       (.alu_y(mem_wb_reg_0_wb_alu_result),
        .imm_u(mem_wb_reg_0_wb_imm_u),
        .load_data(mem_wb_reg_0_wb_data),
        .pc_plus4(mem_wb_reg_0_wb_pc_plus4),
        .rd_wdata(wb_mux_0_rd_wdata),
        .wb_sel(mem_wb_reg_0_wb_sel));
endmodule
