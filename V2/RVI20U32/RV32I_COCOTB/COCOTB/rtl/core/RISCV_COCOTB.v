//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Wed Jun 17 00:09:05 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target RISCV_COCOTB.bd
//Design      : RISCV_COCOTB
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Core_RV32I_imp_BFBAKD
   (clk,
    csr_use_id_ex_flush,
    csr_use_if_id_hold,
    csr_use_pc_en,
    dmem_addr,
    dmem_be,
    dmem_error,
    dmem_ready,
    dmem_req_ready,
    dmem_valid,
    dmem_wdata,
    dmem_we,
    ex_csr_rd_addr,
    ex_csr_rd_data,
    ex_csr_rd_we,
    ex_exception_cause,
    ex_exception_tval,
    ex_exception_valid,
    ex_illegal_instr,
    ex_instr,
    ex_pc,
    ex_valid,
    id_valid_out,
    mem_data,
    mem_exception_cause,
    mem_exception_tval,
    mem_exception_valid,
    mem_fault_cause,
    mem_fault_tval,
    mem_fault_valid,
    mem_pc,
    mem_stall_req,
    out_data,
    priv_redirect_target,
    priv_redirect_valid,
    rd_addr,
    rd_wdata,
    rd_wdata1,
    rd_we,
    regfile_we,
    rs1,
    rs1_used,
    rs2,
    rs2_used,
    rst,
    trap_flush,
    wb_csr_rd_addr,
    wb_csr_rd_data,
    wb_csr_rd_we,
    wb_rd);
  input clk;
  input csr_use_id_ex_flush;
  input csr_use_if_id_hold;
  input csr_use_pc_en;
  output [31:0]dmem_addr;
  output [3:0]dmem_be;
  input dmem_error;
  input dmem_ready;
  input dmem_req_ready;
  output dmem_valid;
  output [31:0]dmem_wdata;
  output dmem_we;
  input [4:0]ex_csr_rd_addr;
  input [31:0]ex_csr_rd_data;
  input ex_csr_rd_we;
  output [3:0]ex_exception_cause;
  output [31:0]ex_exception_tval;
  output ex_exception_valid;
  output ex_illegal_instr;
  output [31:0]ex_instr;
  output [31:0]ex_pc;
  output ex_valid;
  output id_valid_out;
  input [31:0]mem_data;
  output [3:0]mem_exception_cause;
  output [31:0]mem_exception_tval;
  output mem_exception_valid;
  output [3:0]mem_fault_cause;
  output [31:0]mem_fault_tval;
  output mem_fault_valid;
  output [31:0]mem_pc;
  output [0:0]mem_stall_req;
  output [31:0]out_data;
  input [31:0]priv_redirect_target;
  input priv_redirect_valid;
  input [4:0]rd_addr;
  input [31:0]rd_wdata;
  output [31:0]rd_wdata1;
  input rd_we;
  output regfile_we;
  output [4:0]rs1;
  output rs1_used;
  output [4:0]rs2;
  output rs2_used;
  input rst;
  input [0:0]trap_flush;
  output [4:0]wb_csr_rd_addr;
  output [31:0]wb_csr_rd_data;
  output wb_csr_rd_we;
  output [4:0]wb_rd;

  wire [0:0]Op3_1;
  wire [0:0]Op4_1;
  wire RV32I_EX_bp_update_taken;
  wire [31:0]RV32I_EX_bp_update_target;
  wire RV32I_EX_bp_update_valid;
  wire [3:0]RV32I_EX_ex_exception_cause;
  wire [31:0]RV32I_EX_ex_exception_tval;
  wire RV32I_EX_ex_exception_valid;
  wire RV32I_EX_ex_flush_req;
  wire [31:0]RV32I_EX_mem_csr_rd_data;
  wire RV32I_EX_mem_csr_rd_we;
  wire [3:0]RV32I_EX_mem_exception_cause;
  wire [31:0]RV32I_EX_mem_exception_tval;
  wire RV32I_EX_mem_exception_valid;
  wire [31:0]RV32I_EX_mem_pc;
  wire [31:0]RV32I_EX_out_data;
  wire [31:0]RV32I_EX_pc_redirect_target;
  wire RV32I_EX_pc_redirect_valid;
  wire RV32I_ID_ex_illegal_instr;
  wire [31:0]RV32I_ID_ex_instr;
  wire [31:0]RV32I_ID_ex_pred_next_pc;
  wire [4:0]RV32I_ID_ex_rd;
  wire [4:0]RV32I_ID_rs1;
  wire RV32I_ID_rs1_used;
  wire [4:0]RV32I_ID_rs2;
  wire RV32I_ID_rs2_used;
  wire [31:0]RV32I_IF_id_instr_out;
  wire [31:0]RV32I_IF_id_pc4_out;
  wire [31:0]RV32I_IF_id_pc_out;
  wire [31:0]RV32I_IF_id_pred_next_pc_out;
  wire RV32I_IF_id_valid_out;
  wire [31:0]RV32I_MEM_dmem_addr;
  wire [3:0]RV32I_MEM_dmem_be;
  wire RV32I_MEM_dmem_valid;
  wire [31:0]RV32I_MEM_dmem_wdata;
  wire RV32I_MEM_dmem_we;
  wire [3:0]RV32I_MEM_mem_fault_cause;
  wire [31:0]RV32I_MEM_mem_fault_tval;
  wire RV32I_MEM_mem_fault_valid;
  wire RV32I_MEM_mem_rd_we;
  wire RV32I_MEM_regfile_we;
  wire [31:0]RV32I_MEM_wb_alu_result;
  wire [4:0]RV32I_MEM_wb_csr_rd_addr;
  wire [31:0]RV32I_MEM_wb_csr_rd_data;
  wire RV32I_MEM_wb_csr_rd_we;
  wire [31:0]RV32I_MEM_wb_data;
  wire [31:0]RV32I_MEM_wb_imm_u;
  wire [31:0]RV32I_MEM_wb_pc_plus4;
  wire [2:0]RV32I_MEM_wb_sel;
  wire [3:0]alu_op_1;
  wire bubble_1;
  wire csr_use_id_ex_flush_1;
  wire csr_use_if_id_hold_1;
  wire csr_use_pc_en_1;
  wire dmem_error_1;
  wire dmem_ready_1;
  wire dmem_req_ready_1;
  wire ex_branch_en_1;
  wire [2:0]ex_branch_funct3_1;
  wire [4:0]ex_csr_rd_addr_1;
  wire [31:0]ex_csr_rd_data_1;
  wire ex_csr_rd_we_1;
  wire [31:0]ex_imm_1;
  wire [31:0]ex_imm_u_1;
  wire ex_jal_1;
  wire ex_jalr_1;
  wire ex_mem_re_1;
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
  wire [2:0]ex_mem_reg_1_mem_wb_sel;
  wire [1:0]ex_mem_size_1;
  wire ex_mem_unsigned_1;
  wire ex_mem_we_1;
  wire [1:0]ex_op_b_sel_1;
  wire [31:0]ex_pc_plus4_1;
  wire ex_rd_we_1;
  wire [4:0]ex_rs1_1;
  wire [31:0]ex_rs1_data_1;
  wire [4:0]ex_rs2_1;
  wire [31:0]ex_rs2_data_1;
  wire ex_valid_1;
  wire [2:0]ex_wb_sel_1;
  wire flush_1;
  wire hold_1;
  wire load_use_detection_0_id_ex_flush;
  wire load_use_detection_0_if_id_hold;
  wire load_use_detection_0_pc_en;
  wire [4:0]mem_csr_rd_addr_1;
  wire [31:0]mem_stage_0_mem_forward_data;
  wire [4:0]mem_stage_0_mem_out_rd;
  wire mem_stage_0_mem_out_valid;
  wire [4:0]mem_wb_reg_0_wb_rd;
  wire [31:0]mmio_0_cpu_rdata;
  wire [1:0]op_a_sel_1;
  wire [31:0]pc_1;
  wire pc_en_1;
  wire [31:0]priv_redirect_target_1;
  wire priv_redirect_valid_1;
  wire proc_sys_reset_0_peripheral_reset;
  wire [4:0]rd_addr1_1;
  wire [31:0]rd_wdata1_1;
  wire rd_we1_1;
  wire update_is_control_1;
  wire [31:0]wb_mux_0_rd_wdata;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Op4_1 = trap_flush[0];
  assign csr_use_id_ex_flush_1 = csr_use_id_ex_flush;
  assign csr_use_if_id_hold_1 = csr_use_if_id_hold;
  assign csr_use_pc_en_1 = csr_use_pc_en;
  assign dmem_addr[31:0] = RV32I_MEM_dmem_addr;
  assign dmem_be[3:0] = RV32I_MEM_dmem_be;
  assign dmem_error_1 = dmem_error;
  assign dmem_ready_1 = dmem_ready;
  assign dmem_req_ready_1 = dmem_req_ready;
  assign dmem_valid = RV32I_MEM_dmem_valid;
  assign dmem_wdata[31:0] = RV32I_MEM_dmem_wdata;
  assign dmem_we = RV32I_MEM_dmem_we;
  assign ex_csr_rd_addr_1 = ex_csr_rd_addr[4:0];
  assign ex_csr_rd_data_1 = ex_csr_rd_data[31:0];
  assign ex_csr_rd_we_1 = ex_csr_rd_we;
  assign ex_exception_cause[3:0] = RV32I_EX_ex_exception_cause;
  assign ex_exception_tval[31:0] = RV32I_EX_ex_exception_tval;
  assign ex_exception_valid = RV32I_EX_ex_exception_valid;
  assign ex_illegal_instr = RV32I_ID_ex_illegal_instr;
  assign ex_instr[31:0] = RV32I_ID_ex_instr;
  assign ex_pc[31:0] = pc_1;
  assign ex_valid = ex_valid_1;
  assign id_valid_out = RV32I_IF_id_valid_out;
  assign mem_exception_cause[3:0] = RV32I_EX_mem_exception_cause;
  assign mem_exception_tval[31:0] = RV32I_EX_mem_exception_tval;
  assign mem_exception_valid = RV32I_EX_mem_exception_valid;
  assign mem_fault_cause[3:0] = RV32I_MEM_mem_fault_cause;
  assign mem_fault_tval[31:0] = RV32I_MEM_mem_fault_tval;
  assign mem_fault_valid = RV32I_MEM_mem_fault_valid;
  assign mem_pc[31:0] = RV32I_EX_mem_pc;
  assign mem_stall_req[0] = Op3_1;
  assign mmio_0_cpu_rdata = mem_data[31:0];
  assign out_data[31:0] = RV32I_EX_out_data;
  assign priv_redirect_target_1 = priv_redirect_target[31:0];
  assign priv_redirect_valid_1 = priv_redirect_valid;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign rd_addr1_1 = rd_addr[4:0];
  assign rd_wdata1[31:0] = wb_mux_0_rd_wdata;
  assign rd_wdata1_1 = rd_wdata[31:0];
  assign rd_we1_1 = rd_we;
  assign regfile_we = RV32I_MEM_regfile_we;
  assign rs1[4:0] = RV32I_ID_rs1;
  assign rs1_used = RV32I_ID_rs1_used;
  assign rs2[4:0] = RV32I_ID_rs2;
  assign rs2_used = RV32I_ID_rs2_used;
  assign wb_csr_rd_addr[4:0] = RV32I_MEM_wb_csr_rd_addr;
  assign wb_csr_rd_data[31:0] = RV32I_MEM_wb_csr_rd_data;
  assign wb_csr_rd_we = RV32I_MEM_wb_csr_rd_we;
  assign wb_rd[4:0] = mem_wb_reg_0_wb_rd;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RV32I_EX_imp_J96COH RV32I_EX
       (.alu_op(alu_op_1),
        .bp_update_is_control(update_is_control_1),
        .bp_update_taken(RV32I_EX_bp_update_taken),
        .bp_update_target(RV32I_EX_bp_update_target),
        .bp_update_valid(RV32I_EX_bp_update_valid),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .ex_branch_en(ex_branch_en_1),
        .ex_branch_funct3(ex_branch_funct3_1),
        .ex_csr_rd_addr(ex_csr_rd_addr_1),
        .ex_csr_rd_data(ex_csr_rd_data_1),
        .ex_csr_rd_we(ex_csr_rd_we_1),
        .ex_exception_cause(RV32I_EX_ex_exception_cause),
        .ex_exception_tval(RV32I_EX_ex_exception_tval),
        .ex_exception_valid(RV32I_EX_ex_exception_valid),
        .ex_flush_req(RV32I_EX_ex_flush_req),
        .ex_imm(ex_imm_1),
        .ex_imm_u(ex_imm_u_1),
        .ex_jal(ex_jal_1),
        .ex_jalr(ex_jalr_1),
        .ex_mem_data(ex_mem_reg_1_mem_alu_result),
        .ex_mem_re(ex_mem_re_1),
        .ex_mem_size(ex_mem_size_1),
        .ex_mem_unsigned(ex_mem_unsigned_1),
        .ex_mem_we(ex_mem_we_1),
        .ex_op_b_sel(ex_op_b_sel_1),
        .ex_pc_plus4(ex_pc_plus4_1),
        .ex_pred_next_pc(RV32I_ID_ex_pred_next_pc),
        .ex_rd(RV32I_ID_ex_rd),
        .ex_rd_we(ex_rd_we_1),
        .ex_rs1(ex_rs1_1),
        .ex_rs1_data(ex_rs1_data_1),
        .ex_rs2(ex_rs2_1),
        .ex_rs2_data(ex_rs2_data_1),
        .ex_valid(ex_valid_1),
        .ex_wb_sel(ex_wb_sel_1),
        .mem_csr_rd_addr(mem_csr_rd_addr_1),
        .mem_csr_rd_data(RV32I_EX_mem_csr_rd_data),
        .mem_csr_rd_we(RV32I_EX_mem_csr_rd_we),
        .mem_exception_cause(RV32I_EX_mem_exception_cause),
        .mem_exception_tval(RV32I_EX_mem_exception_tval),
        .mem_exception_valid(RV32I_EX_mem_exception_valid),
        .mem_imm_u(ex_mem_reg_1_mem_imm_u),
        .mem_mem_re(ex_mem_reg_1_mem_mem_re),
        .mem_mem_size(ex_mem_reg_1_mem_mem_size),
        .mem_mem_unsigned(ex_mem_reg_1_mem_mem_unsigned),
        .mem_mem_we(ex_mem_reg_1_mem_mem_we),
        .mem_pc(RV32I_EX_mem_pc),
        .mem_pc_plus4(ex_mem_reg_1_mem_pc_plus4),
        .mem_rd(ex_mem_reg_1_mem_rd),
        .mem_rd_we(ex_mem_reg_1_mem_rd_we),
        .mem_stage_data(mem_stage_0_mem_forward_data),
        .mem_stage_out_valid(mem_stage_0_mem_out_valid),
        .mem_stage_rd(mem_stage_0_mem_out_rd),
        .mem_stage_rd_out_we(RV32I_MEM_mem_rd_we),
        .mem_store_data(ex_mem_reg_1_mem_store_data),
        .mem_valid(ex_mem_reg_1_mem_valid),
        .mem_wb_data(rd_wdata1_1),
        .mem_wb_sel(ex_mem_reg_1_mem_wb_sel),
        .op_a_sel(op_a_sel_1),
        .out_data(RV32I_EX_out_data),
        .pc(pc_1),
        .pc_redirect_target(RV32I_EX_pc_redirect_target),
        .pc_redirect_valid(RV32I_EX_pc_redirect_valid),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(Op3_1),
        .wb_rd(rd_addr1_1),
        .wb_rd_we(rd_we1_1),
        .wb_valid(rd_we1_1));
  RV32I_ID_imp_I31ZGD RV32I_ID
       (.bubble(bubble_1),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .ex_alu_op(alu_op_1),
        .ex_branch_en(ex_branch_en_1),
        .ex_branch_funct3(ex_branch_funct3_1),
        .ex_illegal_instr(RV32I_ID_ex_illegal_instr),
        .ex_imm(ex_imm_1),
        .ex_imm_u(ex_imm_u_1),
        .ex_instr(RV32I_ID_ex_instr),
        .ex_jal(ex_jal_1),
        .ex_jalr(ex_jalr_1),
        .ex_mem_re(ex_mem_re_1),
        .ex_mem_size(ex_mem_size_1),
        .ex_mem_unsigned(ex_mem_unsigned_1),
        .ex_mem_we(ex_mem_we_1),
        .ex_op_a_sel(op_a_sel_1),
        .ex_op_b_sel(ex_op_b_sel_1),
        .ex_pc(pc_1),
        .ex_pc_plus4(ex_pc_plus4_1),
        .ex_pred_next_pc(RV32I_ID_ex_pred_next_pc),
        .ex_rd(RV32I_ID_ex_rd),
        .ex_rd_we(ex_rd_we_1),
        .ex_rs1(ex_rs1_1),
        .ex_rs1_data(ex_rs1_data_1),
        .ex_rs2(ex_rs2_1),
        .ex_rs2_data(ex_rs2_data_1),
        .ex_valid(ex_valid_1),
        .ex_wb_sel(ex_wb_sel_1),
        .id_pc(RV32I_IF_id_pc_out),
        .id_pc_plus4(RV32I_IF_id_pc4_out),
        .id_pred_next_pc(RV32I_IF_id_pred_next_pc_out),
        .id_valid(RV32I_IF_id_valid_out),
        .instr(RV32I_IF_id_instr_out),
        .rd_addr(rd_addr1_1),
        .rd_wdata(rd_wdata1_1),
        .rd_we(rd_we1_1),
        .rs1(RV32I_ID_rs1),
        .rs1_used(RV32I_ID_rs1_used),
        .rs2(RV32I_ID_rs2),
        .rs2_used(RV32I_ID_rs2_used),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(Op3_1));
  RV32I_IF_imp_9A1V5I RV32I_IF
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .flush(flush_1),
        .hold(hold_1),
        .id_instr_out(RV32I_IF_id_instr_out),
        .id_pc4_out(RV32I_IF_id_pc4_out),
        .id_pc_out(RV32I_IF_id_pc_out),
        .id_pred_next_pc_out(RV32I_IF_id_pred_next_pc_out),
        .id_valid_out(RV32I_IF_id_valid_out),
        .pc_en(pc_en_1),
        .pc_redirect_target(RV32I_EX_pc_redirect_target),
        .pc_redirect_valid(RV32I_EX_pc_redirect_valid),
        .priv_redirect_target(priv_redirect_target_1),
        .priv_redirect_valid(priv_redirect_valid_1),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(Op3_1),
        .trap_flush(Op4_1),
        .update_is_control(update_is_control_1),
        .update_pc(pc_1),
        .update_taken(RV32I_EX_bp_update_taken),
        .update_target(RV32I_EX_bp_update_target),
        .update_valid(RV32I_EX_bp_update_valid));
  RV32I_MEM_imp_1HCZWI8 RV32I_MEM
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .dmem_addr(RV32I_MEM_dmem_addr),
        .dmem_be(RV32I_MEM_dmem_be),
        .dmem_error(dmem_error_1),
        .dmem_ready(dmem_ready_1),
        .dmem_req_ready(dmem_req_ready_1),
        .dmem_valid(RV32I_MEM_dmem_valid),
        .dmem_wdata(RV32I_MEM_dmem_wdata),
        .dmem_we(RV32I_MEM_dmem_we),
        .mem_csr_rd_addr(mem_csr_rd_addr_1),
        .mem_csr_rd_data(RV32I_EX_mem_csr_rd_data),
        .mem_csr_rd_we(RV32I_EX_mem_csr_rd_we),
        .mem_data(mmio_0_cpu_rdata),
        .mem_fault_cause(RV32I_MEM_mem_fault_cause),
        .mem_fault_tval(RV32I_MEM_mem_fault_tval),
        .mem_fault_valid(RV32I_MEM_mem_fault_valid),
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
        .mem_stage_out_valid(mem_stage_0_mem_out_valid),
        .mem_stage_rd_out_we(RV32I_MEM_mem_rd_we),
        .mem_stall_req(Op3_1),
        .regfile_we(RV32I_MEM_regfile_we),
        .rst(proc_sys_reset_0_peripheral_reset),
        .wb_alu_result(RV32I_MEM_wb_alu_result),
        .wb_csr_rd_addr(RV32I_MEM_wb_csr_rd_addr),
        .wb_csr_rd_data(RV32I_MEM_wb_csr_rd_data),
        .wb_csr_rd_we(RV32I_MEM_wb_csr_rd_we),
        .wb_data(RV32I_MEM_wb_data),
        .wb_imm_u(RV32I_MEM_wb_imm_u),
        .wb_pc_plus4(RV32I_MEM_wb_pc_plus4),
        .wb_rd(mem_wb_reg_0_wb_rd),
        .wb_sel(RV32I_MEM_wb_sel));
  RV32I_WB_imp_LBXQBW RV32I_WB
       (.alu_y(RV32I_MEM_wb_alu_result),
        .imm_u(RV32I_MEM_wb_imm_u),
        .load_data(RV32I_MEM_wb_data),
        .pc_plus4(RV32I_MEM_wb_pc_plus4),
        .rd_wdata(wb_mux_0_rd_wdata),
        .wb_sel(RV32I_MEM_wb_sel));
  RISCV_COCOTB_load_use_detection_0_0 load_use_detection_0
       (.id_ex_flush(load_use_detection_0_id_ex_flush),
        .id_ex_mem_re(ex_mem_re_1),
        .id_ex_rd(RV32I_ID_ex_rd),
        .id_ex_rd_we(ex_rd_we_1),
        .id_ex_valid(ex_valid_1),
        .if_id_hold(load_use_detection_0_if_id_hold),
        .if_id_rs1(RV32I_ID_rs1),
        .if_id_rs1_used(RV32I_ID_rs1_used),
        .if_id_rs2(RV32I_ID_rs2),
        .if_id_rs2_used(RV32I_ID_rs2_used),
        .if_id_valid(RV32I_IF_id_valid_out),
        .pc_en(load_use_detection_0_pc_en));
  RISCV_COCOTB_priority_branch_OR_l_0_0 priority_branch_OR_l_0
       (.csr_use_id_ex_flush(csr_use_id_ex_flush_1),
        .csr_use_if_id_hold(csr_use_if_id_hold_1),
        .csr_use_pc_en(csr_use_pc_en_1),
        .ex_flush_req(RV32I_EX_ex_flush_req),
        .id_ex_flush_final(bubble_1),
        .if_id_flush_final(flush_1),
        .if_id_hold_final(hold_1),
        .load_use_id_ex_flush(load_use_detection_0_id_ex_flush),
        .load_use_if_id_hold(load_use_detection_0_if_id_hold),
        .load_use_pc_en(load_use_detection_0_pc_en),
        .mem_stall_req(Op3_1),
        .pc_en_final(pc_en_1),
        .priv_redirect_valid(priv_redirect_valid_1));
endmodule

module GPIO_imp_QQRY0N
   (addr,
    be,
    clk,
    gpio_in,
    gpio_out,
    rdata,
    ready,
    rst,
    valid,
    wdata,
    we);
  input [31:0]addr;
  input [3:0]be;
  input clk;
  input [7:0]gpio_in;
  output [7:0]gpio_out;
  output [31:0]rdata;
  output ready;
  input rst;
  input valid;
  input [31:0]wdata;
  input we;

  wire [7:0]gpio_0_gpio_out;
  wire [31:0]gpio_0_rdata;
  wire gpio_0_ready;
  wire [7:0]gpio_in_0_1;
  wire [31:0]mmio_0_gpio_addr;
  wire [3:0]mmio_0_gpio_be;
  wire mmio_0_gpio_valid;
  wire [31:0]mmio_0_gpio_wdata;
  wire mmio_0_gpio_we;
  wire proc_sys_reset_0_peripheral_reset;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign gpio_in_0_1 = gpio_in[7:0];
  assign gpio_out[7:0] = gpio_0_gpio_out;
  assign mmio_0_gpio_addr = addr[31:0];
  assign mmio_0_gpio_be = be[3:0];
  assign mmio_0_gpio_valid = valid;
  assign mmio_0_gpio_wdata = wdata[31:0];
  assign mmio_0_gpio_we = we;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign rdata[31:0] = gpio_0_rdata;
  assign ready = gpio_0_ready;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RISCV_COCOTB_gpio_0_0 gpio_0
       (.addr(mmio_0_gpio_addr),
        .be(mmio_0_gpio_be),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .gpio_in(gpio_in_0_1),
        .gpio_out(gpio_0_gpio_out),
        .rdata(gpio_0_rdata),
        .ready(gpio_0_ready),
        .rst(proc_sys_reset_0_peripheral_reset),
        .valid(mmio_0_gpio_valid),
        .wdata(mmio_0_gpio_wdata),
        .we(mmio_0_gpio_we));
endmodule

module MMIO_imp_CEWL94
   (clk,
    cpu_addr,
    cpu_be,
    cpu_wdata,
    cpu_we,
    gpio_addr,
    gpio_be,
    gpio_rdata,
    gpio_ready,
    gpio_valid,
    gpio_wdata,
    gpio_we,
    mem_req_ready,
    mem_req_valid,
    mem_rsp_error,
    mem_rsp_rdata,
    mem_rsp_valid,
    ram_addr,
    ram_be,
    ram_rdata,
    ram_ready,
    ram_valid,
    ram_wdata,
    ram_we,
    rst,
    timer_addr,
    timer_be,
    timer_error,
    timer_rdata,
    timer_ready,
    timer_valid,
    timer_wdata,
    timer_we,
    uart_addr,
    uart_be,
    uart_rdata,
    uart_ready,
    uart_valid,
    uart_wdata,
    uart_we);
  input clk;
  input [31:0]cpu_addr;
  input [3:0]cpu_be;
  input [31:0]cpu_wdata;
  input [0:0]cpu_we;
  output [31:0]gpio_addr;
  output [3:0]gpio_be;
  input [31:0]gpio_rdata;
  input gpio_ready;
  output gpio_valid;
  output [31:0]gpio_wdata;
  output gpio_we;
  output mem_req_ready;
  input mem_req_valid;
  output mem_rsp_error;
  output [31:0]mem_rsp_rdata;
  output mem_rsp_valid;
  output [31:0]ram_addr;
  output [3:0]ram_be;
  input [31:0]ram_rdata;
  input ram_ready;
  output ram_valid;
  output [31:0]ram_wdata;
  output ram_we;
  input rst;
  output [31:0]timer_addr;
  output [3:0]timer_be;
  input timer_error;
  input [31:0]timer_rdata;
  input timer_ready;
  output timer_valid;
  output [31:0]timer_wdata;
  output timer_we;
  output [31:0]uart_addr;
  output [3:0]uart_be;
  input [31:0]uart_rdata;
  input uart_ready;
  output uart_valid;
  output [31:0]uart_wdata;
  output uart_we;

  wire [0:0]RV32I_MEM_dmem_we;
  wire clk_1;
  wire [31:0]cpu_addr_1;
  wire [3:0]cpu_be_1;
  wire [31:0]cpu_wdata_1;
  wire [31:0]gpio_rdata_1;
  wire gpio_ready_1;
  wire [31:0]mem_bus_registered_0_gpio_addr;
  wire [3:0]mem_bus_registered_0_gpio_be;
  wire mem_bus_registered_0_gpio_valid;
  wire [31:0]mem_bus_registered_0_gpio_wdata;
  wire mem_bus_registered_0_gpio_we;
  wire mem_bus_registered_0_mem_req_ready;
  wire mem_bus_registered_0_mem_rsp_error;
  wire [31:0]mem_bus_registered_0_mem_rsp_rdata;
  wire mem_bus_registered_0_mem_rsp_valid;
  wire [31:0]mem_bus_registered_0_ram_addr;
  wire [3:0]mem_bus_registered_0_ram_be;
  wire mem_bus_registered_0_ram_valid;
  wire [31:0]mem_bus_registered_0_ram_wdata;
  wire mem_bus_registered_0_ram_we;
  wire [31:0]mem_bus_registered_0_timer_addr;
  wire [3:0]mem_bus_registered_0_timer_be;
  wire mem_bus_registered_0_timer_valid;
  wire [31:0]mem_bus_registered_0_timer_wdata;
  wire mem_bus_registered_0_timer_we;
  wire [31:0]mem_bus_registered_0_uart_addr;
  wire [3:0]mem_bus_registered_0_uart_be;
  wire mem_bus_registered_0_uart_valid;
  wire [31:0]mem_bus_registered_0_uart_wdata;
  wire mem_bus_registered_0_uart_we;
  wire mem_req_valid_1;
  wire [31:0]ram_rdata_1;
  wire ram_ready_1;
  wire rst_1;
  wire timer_error_1;
  wire [31:0]timer_rdata_1;
  wire timer_ready_1;
  wire [31:0]uart_rdata_1;
  wire uart_ready1_1;

  assign RV32I_MEM_dmem_we = cpu_we[0];
  assign clk_1 = clk;
  assign cpu_addr_1 = cpu_addr[31:0];
  assign cpu_be_1 = cpu_be[3:0];
  assign cpu_wdata_1 = cpu_wdata[31:0];
  assign gpio_addr[31:0] = mem_bus_registered_0_gpio_addr;
  assign gpio_be[3:0] = mem_bus_registered_0_gpio_be;
  assign gpio_rdata_1 = gpio_rdata[31:0];
  assign gpio_ready_1 = gpio_ready;
  assign gpio_valid = mem_bus_registered_0_gpio_valid;
  assign gpio_wdata[31:0] = mem_bus_registered_0_gpio_wdata;
  assign gpio_we = mem_bus_registered_0_gpio_we;
  assign mem_req_ready = mem_bus_registered_0_mem_req_ready;
  assign mem_req_valid_1 = mem_req_valid;
  assign mem_rsp_error = mem_bus_registered_0_mem_rsp_error;
  assign mem_rsp_rdata[31:0] = mem_bus_registered_0_mem_rsp_rdata;
  assign mem_rsp_valid = mem_bus_registered_0_mem_rsp_valid;
  assign ram_addr[31:0] = mem_bus_registered_0_ram_addr;
  assign ram_be[3:0] = mem_bus_registered_0_ram_be;
  assign ram_rdata_1 = ram_rdata[31:0];
  assign ram_ready_1 = ram_ready;
  assign ram_valid = mem_bus_registered_0_ram_valid;
  assign ram_wdata[31:0] = mem_bus_registered_0_ram_wdata;
  assign ram_we = mem_bus_registered_0_ram_we;
  assign rst_1 = rst;
  assign timer_addr[31:0] = mem_bus_registered_0_timer_addr;
  assign timer_be[3:0] = mem_bus_registered_0_timer_be;
  assign timer_error_1 = timer_error;
  assign timer_rdata_1 = timer_rdata[31:0];
  assign timer_ready_1 = timer_ready;
  assign timer_valid = mem_bus_registered_0_timer_valid;
  assign timer_wdata[31:0] = mem_bus_registered_0_timer_wdata;
  assign timer_we = mem_bus_registered_0_timer_we;
  assign uart_addr[31:0] = mem_bus_registered_0_uart_addr;
  assign uart_be[3:0] = mem_bus_registered_0_uart_be;
  assign uart_rdata_1 = uart_rdata[31:0];
  assign uart_ready1_1 = uart_ready;
  assign uart_valid = mem_bus_registered_0_uart_valid;
  assign uart_wdata[31:0] = mem_bus_registered_0_uart_wdata;
  assign uart_we = mem_bus_registered_0_uart_we;
  RISCV_COCOTB_mem_bus_registered_0_0 mem_bus_registered_0
       (.clk(clk_1),
        .gpio_addr(mem_bus_registered_0_gpio_addr),
        .gpio_be(mem_bus_registered_0_gpio_be),
        .gpio_rdata(gpio_rdata_1),
        .gpio_ready(gpio_ready_1),
        .gpio_valid(mem_bus_registered_0_gpio_valid),
        .gpio_wdata(mem_bus_registered_0_gpio_wdata),
        .gpio_we(mem_bus_registered_0_gpio_we),
        .mem_req_addr(cpu_addr_1),
        .mem_req_be(cpu_be_1),
        .mem_req_ready(mem_bus_registered_0_mem_req_ready),
        .mem_req_valid(mem_req_valid_1),
        .mem_req_wdata(cpu_wdata_1),
        .mem_req_we(RV32I_MEM_dmem_we),
        .mem_rsp_error(mem_bus_registered_0_mem_rsp_error),
        .mem_rsp_rdata(mem_bus_registered_0_mem_rsp_rdata),
        .mem_rsp_valid(mem_bus_registered_0_mem_rsp_valid),
        .ram_addr(mem_bus_registered_0_ram_addr),
        .ram_be(mem_bus_registered_0_ram_be),
        .ram_rdata(ram_rdata_1),
        .ram_ready(ram_ready_1),
        .ram_valid(mem_bus_registered_0_ram_valid),
        .ram_wdata(mem_bus_registered_0_ram_wdata),
        .ram_we(mem_bus_registered_0_ram_we),
        .rst(rst_1),
        .timer_addr(mem_bus_registered_0_timer_addr),
        .timer_be(mem_bus_registered_0_timer_be),
        .timer_error(timer_error_1),
        .timer_rdata(timer_rdata_1),
        .timer_ready(timer_ready_1),
        .timer_valid(mem_bus_registered_0_timer_valid),
        .timer_wdata(mem_bus_registered_0_timer_wdata),
        .timer_we(mem_bus_registered_0_timer_we),
        .uart_addr(mem_bus_registered_0_uart_addr),
        .uart_be(mem_bus_registered_0_uart_be),
        .uart_rdata(uart_rdata_1),
        .uart_ready(uart_ready1_1),
        .uart_valid(mem_bus_registered_0_uart_valid),
        .uart_wdata(mem_bus_registered_0_uart_wdata),
        .uart_we(mem_bus_registered_0_uart_we));
endmodule

module PRIVILEGED_imp_UN02VO
   (clk,
    csr_rd_addr,
    csr_rd_addr1,
    csr_rd_data1,
    csr_rd_data2,
    csr_rd_we,
    csr_rd_we1,
    current_pc,
    ex_exception_cause,
    ex_exception_tval,
    ex_exception_valid,
    final_rd,
    final_wdata,
    final_we,
    id_ex_flush,
    if_id_hold,
    if_id_rs1,
    if_id_rs1_used,
    if_id_rs2,
    if_id_rs2_used,
    if_id_valid,
    illegal_instr,
    instr,
    instr_valid,
    mem_exception_cause,
    mem_exception_pc,
    mem_exception_tval,
    mem_exception_valid,
    mem_fault_cause,
    mem_fault_tval,
    mem_fault_valid,
    mem_stall_req,
    normal_rd,
    normal_wdata,
    normal_we,
    pc_en,
    priv_redirect_target,
    priv_redirect_valid,
    rs1_data,
    rst,
    timer_irq,
    trap_flush);
  input clk;
  output [4:0]csr_rd_addr;
  input [4:0]csr_rd_addr1;
  output [31:0]csr_rd_data1;
  input [31:0]csr_rd_data2;
  output csr_rd_we;
  input csr_rd_we1;
  input [31:0]current_pc;
  input [3:0]ex_exception_cause;
  input [31:0]ex_exception_tval;
  input ex_exception_valid;
  output [4:0]final_rd;
  output [31:0]final_wdata;
  output final_we;
  output id_ex_flush;
  output if_id_hold;
  input [4:0]if_id_rs1;
  input if_id_rs1_used;
  input [4:0]if_id_rs2;
  input if_id_rs2_used;
  input if_id_valid;
  input illegal_instr;
  input [31:0]instr;
  input instr_valid;
  input [3:0]mem_exception_cause;
  input [31:0]mem_exception_pc;
  input [31:0]mem_exception_tval;
  input mem_exception_valid;
  input [3:0]mem_fault_cause;
  input [31:0]mem_fault_tval;
  input mem_fault_valid;
  input mem_stall_req;
  input [4:0]normal_rd;
  input [31:0]normal_wdata;
  input normal_we;
  output pc_en;
  output [31:0]priv_redirect_target;
  output priv_redirect_valid;
  input [31:0]rs1_data;
  input rst;
  input timer_irq;
  output trap_flush;

  wire [31:0]Core_RV32I_ex_instr;
  wire [31:0]Core_RV32I_ex_pc;
  wire Core_RV32I_ex_valid;
  wire Core_RV32I_mem_stall_req;
  wire [31:0]Core_RV32I_rd_wdata;
  wire [4:0]Core_RV32I_wb_rd;
  wire TIMER_timer_irq;
  wire [4:0]csr_access_unit_0_csr_rd_addr;
  wire [31:0]csr_access_unit_0_csr_rd_data;
  wire csr_access_unit_0_csr_rd_we;
  wire [31:0]csr_access_unit_0_csr_wdata;
  wire csr_access_unit_0_csr_we;
  wire [31:0]csr_file_0_csr_mepc;
  wire [31:0]csr_file_0_csr_mie;
  wire [31:0]csr_file_0_csr_mip;
  wire [31:0]csr_file_0_csr_mstatus;
  wire [31:0]csr_file_0_csr_mtvec;
  wire [31:0]csr_file_0_csr_rdata;
  wire [4:0]csr_rd_addr1_1;
  wire [31:0]csr_rd_data2_1;
  wire csr_rd_we1_1;
  wire [4:0]csr_regfile_wb_mux_0_final_rd;
  wire [31:0]csr_regfile_wb_mux_0_final_wdata;
  wire csr_regfile_wb_mux_0_final_we;
  wire csr_use_detection_0_id_ex_flush;
  wire csr_use_detection_0_if_id_hold;
  wire csr_use_detection_0_pc_en;
  wire [3:0]ex_exception_cause_1;
  wire [31:0]ex_exception_tval_1;
  wire ex_exception_valid_1;
  wire [3:0]exception_mux_0_exception_cause;
  wire [31:0]exception_mux_0_exception_pc;
  wire [31:0]exception_mux_0_exception_tval;
  wire exception_mux_0_exception_valid;
  wire [4:0]if_id_rs1_1;
  wire if_id_rs1_used_1;
  wire [4:0]if_id_rs2_1;
  wire if_id_rs2_used_1;
  wire if_id_valid_1;
  wire illegal_instr_1;
  wire [3:0]mem_exception_cause_1;
  wire [3:0]mem_exception_merge_0_final_mem_exception_cause;
  wire [31:0]mem_exception_merge_0_final_mem_exception_pc;
  wire [31:0]mem_exception_merge_0_final_mem_exception_tval;
  wire mem_exception_merge_0_final_mem_exception_valid;
  wire [31:0]mem_exception_pc_1;
  wire [31:0]mem_exception_tval_1;
  wire mem_exception_valid_1;
  wire [3:0]mem_fault_cause_1;
  wire [31:0]mem_fault_tval_1;
  wire mem_fault_valid_1;
  wire normal_we1_1;
  wire [31:0]privileged_pc_redire_0_priv_redirect_target;
  wire privileged_pc_redire_0_priv_redirect_valid;
  wire proc_sys_reset_0_peripheral_reset;
  wire [31:0]rs1_data1_1;
  wire [11:0]system_decoder_0_csr_addr;
  wire [4:0]system_decoder_0_csr_rd;
  wire [4:0]system_decoder_0_csr_rs1;
  wire system_decoder_0_is_csrrc;
  wire system_decoder_0_is_csrrci;
  wire system_decoder_0_is_csrrs;
  wire system_decoder_0_is_csrrsi;
  wire system_decoder_0_is_csrrw;
  wire system_decoder_0_is_csrrwi;
  wire system_decoder_0_is_ecall;
  wire system_decoder_0_is_mret;
  wire system_decoder_0_is_system;
  wire trap_controller_0_mret_taken;
  wire [31:0]trap_controller_0_mret_target;
  wire trap_controller_0_trap_enter;
  wire trap_controller_0_trap_flush;
  wire [31:0]trap_controller_0_trap_mcause;
  wire [31:0]trap_controller_0_trap_mepc;
  wire [31:0]trap_controller_0_trap_mtval;
  wire [31:0]trap_controller_0_trap_target;
  wire [0:0]util_vector_and_0_Res;
  wire [0:0]util_vector_not_0_Res;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Core_RV32I_ex_instr = instr[31:0];
  assign Core_RV32I_ex_pc = current_pc[31:0];
  assign Core_RV32I_ex_valid = instr_valid;
  assign Core_RV32I_mem_stall_req = mem_stall_req;
  assign Core_RV32I_rd_wdata = normal_wdata[31:0];
  assign Core_RV32I_wb_rd = normal_rd[4:0];
  assign TIMER_timer_irq = timer_irq;
  assign csr_rd_addr[4:0] = csr_access_unit_0_csr_rd_addr;
  assign csr_rd_addr1_1 = csr_rd_addr1[4:0];
  assign csr_rd_data1[31:0] = csr_access_unit_0_csr_rd_data;
  assign csr_rd_data2_1 = csr_rd_data2[31:0];
  assign csr_rd_we = csr_access_unit_0_csr_rd_we;
  assign csr_rd_we1_1 = csr_rd_we1;
  assign ex_exception_cause_1 = ex_exception_cause[3:0];
  assign ex_exception_tval_1 = ex_exception_tval[31:0];
  assign ex_exception_valid_1 = ex_exception_valid;
  assign final_rd[4:0] = csr_regfile_wb_mux_0_final_rd;
  assign final_wdata[31:0] = csr_regfile_wb_mux_0_final_wdata;
  assign final_we = csr_regfile_wb_mux_0_final_we;
  assign id_ex_flush = csr_use_detection_0_id_ex_flush;
  assign if_id_hold = csr_use_detection_0_if_id_hold;
  assign if_id_rs1_1 = if_id_rs1[4:0];
  assign if_id_rs1_used_1 = if_id_rs1_used;
  assign if_id_rs2_1 = if_id_rs2[4:0];
  assign if_id_rs2_used_1 = if_id_rs2_used;
  assign if_id_valid_1 = if_id_valid;
  assign illegal_instr_1 = illegal_instr;
  assign mem_exception_cause_1 = mem_exception_cause[3:0];
  assign mem_exception_pc_1 = mem_exception_pc[31:0];
  assign mem_exception_tval_1 = mem_exception_tval[31:0];
  assign mem_exception_valid_1 = mem_exception_valid;
  assign mem_fault_cause_1 = mem_fault_cause[3:0];
  assign mem_fault_tval_1 = mem_fault_tval[31:0];
  assign mem_fault_valid_1 = mem_fault_valid;
  assign normal_we1_1 = normal_we;
  assign pc_en = csr_use_detection_0_pc_en;
  assign priv_redirect_target[31:0] = privileged_pc_redire_0_priv_redirect_target;
  assign priv_redirect_valid = privileged_pc_redire_0_priv_redirect_valid;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign rs1_data1_1 = rs1_data[31:0];
  assign trap_flush = trap_controller_0_trap_flush;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RISCV_COCOTB_csr_access_unit_0_0 csr_access_unit_0
       (.csr_rd(system_decoder_0_csr_rd),
        .csr_rd_addr(csr_access_unit_0_csr_rd_addr),
        .csr_rd_data(csr_access_unit_0_csr_rd_data),
        .csr_rd_we(csr_access_unit_0_csr_rd_we),
        .csr_rdata(csr_file_0_csr_rdata),
        .csr_rs1(system_decoder_0_csr_rs1),
        .csr_wdata(csr_access_unit_0_csr_wdata),
        .csr_we(csr_access_unit_0_csr_we),
        .ex_valid(Core_RV32I_ex_valid),
        .is_csrrc(system_decoder_0_is_csrrc),
        .is_csrrci(system_decoder_0_is_csrrci),
        .is_csrrs(system_decoder_0_is_csrrs),
        .is_csrrsi(system_decoder_0_is_csrrsi),
        .is_csrrw(system_decoder_0_is_csrrw),
        .is_csrrwi(system_decoder_0_is_csrrwi),
        .rs1_data(rs1_data1_1));
  RISCV_COCOTB_csr_file_0_0 csr_file_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .csr_addr(system_decoder_0_csr_addr),
        .csr_mepc(csr_file_0_csr_mepc),
        .csr_mie(csr_file_0_csr_mie),
        .csr_mip(csr_file_0_csr_mip),
        .csr_mstatus(csr_file_0_csr_mstatus),
        .csr_mtvec(csr_file_0_csr_mtvec),
        .csr_rdata(csr_file_0_csr_rdata),
        .csr_wdata(csr_access_unit_0_csr_wdata),
        .csr_we(csr_access_unit_0_csr_we),
        .mret(trap_controller_0_mret_taken),
        .rst(proc_sys_reset_0_peripheral_reset),
        .timer_irq(TIMER_timer_irq),
        .trap_enter(trap_controller_0_trap_enter),
        .trap_mcause(trap_controller_0_trap_mcause),
        .trap_mepc(trap_controller_0_trap_mepc),
        .trap_mtval(trap_controller_0_trap_mtval));
  RISCV_COCOTB_csr_regfile_wb_mux_0_0 csr_regfile_wb_mux_0
       (.csr_rd_addr(csr_rd_addr1_1),
        .csr_rd_data(csr_rd_data2_1),
        .csr_rd_we(csr_rd_we1_1),
        .final_rd(csr_regfile_wb_mux_0_final_rd),
        .final_wdata(csr_regfile_wb_mux_0_final_wdata),
        .final_we(csr_regfile_wb_mux_0_final_we),
        .normal_rd(Core_RV32I_wb_rd),
        .normal_wdata(Core_RV32I_rd_wdata),
        .normal_we(normal_we1_1));
  RISCV_COCOTB_csr_use_detection_0_0 csr_use_detection_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .ex_instr(Core_RV32I_ex_instr),
        .ex_valid(Core_RV32I_ex_valid),
        .id_ex_flush(csr_use_detection_0_id_ex_flush),
        .if_id_hold(csr_use_detection_0_if_id_hold),
        .if_id_rs1(if_id_rs1_1),
        .if_id_rs1_used(if_id_rs1_used_1),
        .if_id_rs2(if_id_rs2_1),
        .if_id_rs2_used(if_id_rs2_used_1),
        .if_id_valid(if_id_valid_1),
        .pc_en(csr_use_detection_0_pc_en),
        .rst(proc_sys_reset_0_peripheral_reset));
  RISCV_COCOTB_exception_mux_0_0 exception_mux_0
       (.ex_exception_cause(ex_exception_cause_1),
        .ex_exception_pc(Core_RV32I_ex_pc),
        .ex_exception_tval(ex_exception_tval_1),
        .ex_exception_valid(ex_exception_valid_1),
        .exception_cause(exception_mux_0_exception_cause),
        .exception_pc(exception_mux_0_exception_pc),
        .exception_tval(exception_mux_0_exception_tval),
        .exception_valid(exception_mux_0_exception_valid),
        .mem_exception_cause(mem_exception_merge_0_final_mem_exception_cause),
        .mem_exception_pc(mem_exception_merge_0_final_mem_exception_pc),
        .mem_exception_tval(mem_exception_merge_0_final_mem_exception_tval),
        .mem_exception_valid(mem_exception_merge_0_final_mem_exception_valid));
  RISCV_COCOTB_mem_exception_merge_0_0 mem_exception_merge_0
       (.final_mem_exception_cause(mem_exception_merge_0_final_mem_exception_cause),
        .final_mem_exception_pc(mem_exception_merge_0_final_mem_exception_pc),
        .final_mem_exception_tval(mem_exception_merge_0_final_mem_exception_tval),
        .final_mem_exception_valid(mem_exception_merge_0_final_mem_exception_valid),
        .mem_exception_cause(mem_exception_cause_1),
        .mem_exception_pc(mem_exception_pc_1),
        .mem_exception_tval(mem_exception_tval_1),
        .mem_exception_valid(mem_exception_valid_1),
        .mem_fault_cause(mem_fault_cause_1),
        .mem_fault_tval(mem_fault_tval_1),
        .mem_fault_valid(mem_fault_valid_1));
  RISCV_COCOTB_privileged_pc_redire_0_0 privileged_pc_redire_0
       (.mret_taken(trap_controller_0_mret_taken),
        .mret_target(trap_controller_0_mret_target),
        .priv_redirect_target(privileged_pc_redire_0_priv_redirect_target),
        .priv_redirect_valid(privileged_pc_redire_0_priv_redirect_valid),
        .trap_enter(trap_controller_0_trap_enter),
        .trap_target(trap_controller_0_trap_target));
  RISCV_COCOTB_system_decoder_0_0 system_decoder_0
       (.csr_addr(system_decoder_0_csr_addr),
        .csr_rd(system_decoder_0_csr_rd),
        .csr_rs1(system_decoder_0_csr_rs1),
        .instr(Core_RV32I_ex_instr),
        .is_csrrc(system_decoder_0_is_csrrc),
        .is_csrrci(system_decoder_0_is_csrrci),
        .is_csrrs(system_decoder_0_is_csrrs),
        .is_csrrsi(system_decoder_0_is_csrrsi),
        .is_csrrw(system_decoder_0_is_csrrw),
        .is_csrrwi(system_decoder_0_is_csrrwi),
        .is_ecall(system_decoder_0_is_ecall),
        .is_mret(system_decoder_0_is_mret),
        .is_system(system_decoder_0_is_system));
  RISCV_COCOTB_trap_controller_0_0 trap_controller_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .csr_mepc(csr_file_0_csr_mepc),
        .csr_mie(csr_file_0_csr_mie),
        .csr_mip(csr_file_0_csr_mip),
        .csr_mstatus(csr_file_0_csr_mstatus),
        .csr_mtvec(csr_file_0_csr_mtvec),
        .current_pc(Core_RV32I_ex_pc),
        .ecall(system_decoder_0_is_ecall),
        .exception_cause(exception_mux_0_exception_cause),
        .exception_pc(exception_mux_0_exception_pc),
        .exception_tval(exception_mux_0_exception_tval),
        .exception_valid(exception_mux_0_exception_valid),
        .illegal_instr(util_vector_and_0_Res),
        .instr_valid(Core_RV32I_ex_valid),
        .mem_stall_req(Core_RV32I_mem_stall_req),
        .mret(system_decoder_0_is_mret),
        .mret_taken(trap_controller_0_mret_taken),
        .mret_target(trap_controller_0_mret_target),
        .rst(proc_sys_reset_0_peripheral_reset),
        .timer_irq(TIMER_timer_irq),
        .trap_enter(trap_controller_0_trap_enter),
        .trap_flush(trap_controller_0_trap_flush),
        .trap_mcause(trap_controller_0_trap_mcause),
        .trap_mepc(trap_controller_0_trap_mepc),
        .trap_mtval(trap_controller_0_trap_mtval),
        .trap_target(trap_controller_0_trap_target));
  RISCV_COCOTB_util_vector_and_0_4 util_vector_and_0
       (.Op1(illegal_instr_1),
        .Op2(util_vector_not_0_Res),
        .Res(util_vector_and_0_Res));
  RISCV_COCOTB_util_vector_not_0_2 util_vector_not_0
       (.Op1(system_decoder_0_is_system),
        .Res(util_vector_not_0_Res));
endmodule

(* CORE_GENERATION_INFO = "RISCV_COCOTB,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=RISCV_COCOTB,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=66,numReposBlks=54,numNonXlnxBlks=0,numHierBlks=12,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=54,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}" *) (* HW_HANDOFF = "RISCV_COCOTB.hwdef" *) 
module RISCV_COCOTB
   (Reset,
    SW1,
    clk,
    gpio_out_0);
  input [0:0]Reset;
  input [0:0]SW1;
  input clk;
  output [1:0]gpio_out_0;

  wire [3:0]Core_RV32I_ex_exception_cause;
  wire [31:0]Core_RV32I_ex_exception_tval;
  wire Core_RV32I_ex_exception_valid;
  wire Core_RV32I_ex_illegal_instr;
  wire [31:0]Core_RV32I_ex_instr;
  wire [31:0]Core_RV32I_ex_pc;
  wire Core_RV32I_ex_valid;
  wire Core_RV32I_id_valid_out;
  wire [3:0]Core_RV32I_mem_exception_cause;
  wire [31:0]Core_RV32I_mem_exception_tval;
  wire Core_RV32I_mem_exception_valid;
  wire [3:0]Core_RV32I_mem_fault_cause;
  wire [31:0]Core_RV32I_mem_fault_tval;
  wire Core_RV32I_mem_fault_valid;
  wire [31:0]Core_RV32I_mem_pc;
  wire [0:0]Core_RV32I_mem_stall_req;
  wire [31:0]Core_RV32I_out_data;
  wire [31:0]Core_RV32I_rd_wdata;
  wire Core_RV32I_regfile_we;
  wire [4:0]Core_RV32I_rs1;
  wire Core_RV32I_rs2_used;
  wire [31:0]Core_RV32I_wb_csr_rd_data;
  wire Core_RV32I_wb_csr_rd_we;
  wire [4:0]Core_RV32I_wb_rd;
  wire MMIO_mem_rsp_error;
  wire MMIO_ram_valid;
  wire [31:0]PRIVILEGED_csr_rd_data1;
  wire PRIVILEGED_csr_rd_we;
  wire PRIVILEGED_id_ex_flush;
  wire PRIVILEGED_if_id_hold;
  wire PRIVILEGED_pc_en;
  wire [31:0]RV32I_MEM_dmem_addr;
  wire [3:0]RV32I_MEM_dmem_be;
  wire [31:0]RV32I_MEM_dmem_wdata;
  wire RV32I_MEM_dmem_we;
  wire [31:0]RV32I_RAM_MEMORY_rdata;
  wire UART_tx;
  wire [31:0]addr_1;
  wire [31:0]addr_2;
  wire [31:0]addr_3;
  wire [31:0]addr_4;
  wire [3:0]be_1;
  wire [3:0]be_2;
  wire [3:0]be_3;
  wire [3:0]be_4;
  wire [4:0]csr_rd_addr1_1;
  wire [4:0]csr_regfile_wb_mux_0_final_rd;
  wire [31:0]csr_regfile_wb_mux_0_final_wdata;
  wire csr_regfile_wb_mux_0_final_we;
  wire dmem_ready_1;
  wire dmem_req_ready_1;
  wire [4:0]ex_csr_rd_addr_1;
  wire [7:0]gpio_0_gpio_out;
  wire [31:0]gpio_0_rdata;
  wire gpio_0_ready;
  wire if_id_rs1_used_1;
  wire [4:0]if_id_rs2_1;
  wire [31:0]mem_data_1;
  wire mem_req_valid_1;
  wire [31:0]privileged_pc_redire_0_priv_redirect_target;
  wire privileged_pc_redire_0_priv_redirect_valid;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire ram_ready_1;
  wire [31:0]timer_0_rdata;
  wire timer_0_ready;
  wire timer_error_1;
  wire timer_irq_1;
  wire trap_controller_0_trap_flush;
  wire [31:0]uart_tx_0_rdata;
  wire uart_tx_0_ready;
  wire valid_1;
  wire valid_2;
  wire valid_3;
  wire [31:0]wdata_1;
  wire [31:0]wdata_2;
  wire [31:0]wdata_3;
  wire [31:0]wdata_4;
  wire we_1;
  wire we_2;
  wire we_3;
  wire we_4;
  wire [7:0]xlconcat_8_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [1:0]xlslice_2bit_0_Dout;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign gpio_out_0[1:0] = xlslice_2bit_0_Dout;
  assign proc_sys_reset_0_peripheral_reset = Reset[0];
  assign xlconstant_1_dout = SW1[0];
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  Core_RV32I_imp_BFBAKD Core_RV32I
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .csr_use_id_ex_flush(PRIVILEGED_id_ex_flush),
        .csr_use_if_id_hold(PRIVILEGED_if_id_hold),
        .csr_use_pc_en(PRIVILEGED_pc_en),
        .dmem_addr(RV32I_MEM_dmem_addr),
        .dmem_be(RV32I_MEM_dmem_be),
        .dmem_error(MMIO_mem_rsp_error),
        .dmem_ready(dmem_ready_1),
        .dmem_req_ready(dmem_req_ready_1),
        .dmem_valid(mem_req_valid_1),
        .dmem_wdata(RV32I_MEM_dmem_wdata),
        .dmem_we(RV32I_MEM_dmem_we),
        .ex_csr_rd_addr(ex_csr_rd_addr_1),
        .ex_csr_rd_data(PRIVILEGED_csr_rd_data1),
        .ex_csr_rd_we(PRIVILEGED_csr_rd_we),
        .ex_exception_cause(Core_RV32I_ex_exception_cause),
        .ex_exception_tval(Core_RV32I_ex_exception_tval),
        .ex_exception_valid(Core_RV32I_ex_exception_valid),
        .ex_illegal_instr(Core_RV32I_ex_illegal_instr),
        .ex_instr(Core_RV32I_ex_instr),
        .ex_pc(Core_RV32I_ex_pc),
        .ex_valid(Core_RV32I_ex_valid),
        .id_valid_out(Core_RV32I_id_valid_out),
        .mem_data(mem_data_1),
        .mem_exception_cause(Core_RV32I_mem_exception_cause),
        .mem_exception_tval(Core_RV32I_mem_exception_tval),
        .mem_exception_valid(Core_RV32I_mem_exception_valid),
        .mem_fault_cause(Core_RV32I_mem_fault_cause),
        .mem_fault_tval(Core_RV32I_mem_fault_tval),
        .mem_fault_valid(Core_RV32I_mem_fault_valid),
        .mem_pc(Core_RV32I_mem_pc),
        .mem_stall_req(Core_RV32I_mem_stall_req),
        .out_data(Core_RV32I_out_data),
        .priv_redirect_target(privileged_pc_redire_0_priv_redirect_target),
        .priv_redirect_valid(privileged_pc_redire_0_priv_redirect_valid),
        .rd_addr(csr_regfile_wb_mux_0_final_rd),
        .rd_wdata(csr_regfile_wb_mux_0_final_wdata),
        .rd_wdata1(Core_RV32I_rd_wdata),
        .rd_we(csr_regfile_wb_mux_0_final_we),
        .regfile_we(Core_RV32I_regfile_we),
        .rs1(Core_RV32I_rs1),
        .rs1_used(if_id_rs1_used_1),
        .rs2(if_id_rs2_1),
        .rs2_used(Core_RV32I_rs2_used),
        .rst(proc_sys_reset_0_peripheral_reset),
        .trap_flush(trap_controller_0_trap_flush),
        .wb_csr_rd_addr(csr_rd_addr1_1),
        .wb_csr_rd_data(Core_RV32I_wb_csr_rd_data),
        .wb_csr_rd_we(Core_RV32I_wb_csr_rd_we),
        .wb_rd(Core_RV32I_wb_rd));
  GPIO_imp_QQRY0N GPIO
       (.addr(addr_2),
        .be(be_2),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .gpio_in(xlconcat_8_0_dout),
        .gpio_out(gpio_0_gpio_out),
        .rdata(gpio_0_rdata),
        .ready(gpio_0_ready),
        .rst(proc_sys_reset_0_peripheral_reset),
        .valid(valid_1),
        .wdata(wdata_2),
        .we(we_2));
  MMIO_imp_CEWL94 MMIO
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .cpu_addr(RV32I_MEM_dmem_addr),
        .cpu_be(RV32I_MEM_dmem_be),
        .cpu_wdata(RV32I_MEM_dmem_wdata),
        .cpu_we(RV32I_MEM_dmem_we),
        .gpio_addr(addr_2),
        .gpio_be(be_2),
        .gpio_rdata(gpio_0_rdata),
        .gpio_ready(gpio_0_ready),
        .gpio_valid(valid_1),
        .gpio_wdata(wdata_2),
        .gpio_we(we_2),
        .mem_req_ready(dmem_req_ready_1),
        .mem_req_valid(mem_req_valid_1),
        .mem_rsp_error(MMIO_mem_rsp_error),
        .mem_rsp_rdata(mem_data_1),
        .mem_rsp_valid(dmem_ready_1),
        .ram_addr(addr_1),
        .ram_be(be_1),
        .ram_rdata(RV32I_RAM_MEMORY_rdata),
        .ram_ready(ram_ready_1),
        .ram_valid(MMIO_ram_valid),
        .ram_wdata(wdata_1),
        .ram_we(we_1),
        .rst(proc_sys_reset_0_peripheral_reset),
        .timer_addr(addr_4),
        .timer_be(be_4),
        .timer_error(timer_error_1),
        .timer_rdata(timer_0_rdata),
        .timer_ready(timer_0_ready),
        .timer_valid(valid_3),
        .timer_wdata(wdata_4),
        .timer_we(we_4),
        .uart_addr(addr_3),
        .uart_be(be_3),
        .uart_rdata(uart_tx_0_rdata),
        .uart_ready(uart_tx_0_ready),
        .uart_valid(valid_2),
        .uart_wdata(wdata_3),
        .uart_we(we_3));
  PRIVILEGED_imp_UN02VO PRIVILEGED
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .csr_rd_addr(ex_csr_rd_addr_1),
        .csr_rd_addr1(csr_rd_addr1_1),
        .csr_rd_data1(PRIVILEGED_csr_rd_data1),
        .csr_rd_data2(Core_RV32I_wb_csr_rd_data),
        .csr_rd_we(PRIVILEGED_csr_rd_we),
        .csr_rd_we1(Core_RV32I_wb_csr_rd_we),
        .current_pc(Core_RV32I_ex_pc),
        .ex_exception_cause(Core_RV32I_ex_exception_cause),
        .ex_exception_tval(Core_RV32I_ex_exception_tval),
        .ex_exception_valid(Core_RV32I_ex_exception_valid),
        .final_rd(csr_regfile_wb_mux_0_final_rd),
        .final_wdata(csr_regfile_wb_mux_0_final_wdata),
        .final_we(csr_regfile_wb_mux_0_final_we),
        .id_ex_flush(PRIVILEGED_id_ex_flush),
        .if_id_hold(PRIVILEGED_if_id_hold),
        .if_id_rs1(Core_RV32I_rs1),
        .if_id_rs1_used(if_id_rs1_used_1),
        .if_id_rs2(if_id_rs2_1),
        .if_id_rs2_used(Core_RV32I_rs2_used),
        .if_id_valid(Core_RV32I_id_valid_out),
        .illegal_instr(Core_RV32I_ex_illegal_instr),
        .instr(Core_RV32I_ex_instr),
        .instr_valid(Core_RV32I_ex_valid),
        .mem_exception_cause(Core_RV32I_mem_exception_cause),
        .mem_exception_pc(Core_RV32I_mem_pc),
        .mem_exception_tval(Core_RV32I_mem_exception_tval),
        .mem_exception_valid(Core_RV32I_mem_exception_valid),
        .mem_fault_cause(Core_RV32I_mem_fault_cause),
        .mem_fault_tval(Core_RV32I_mem_fault_tval),
        .mem_fault_valid(Core_RV32I_mem_fault_valid),
        .mem_stall_req(Core_RV32I_mem_stall_req),
        .normal_rd(Core_RV32I_wb_rd),
        .normal_wdata(Core_RV32I_rd_wdata),
        .normal_we(Core_RV32I_regfile_we),
        .pc_en(PRIVILEGED_pc_en),
        .priv_redirect_target(privileged_pc_redire_0_priv_redirect_target),
        .priv_redirect_valid(privileged_pc_redire_0_priv_redirect_valid),
        .rs1_data(Core_RV32I_out_data),
        .rst(proc_sys_reset_0_peripheral_reset),
        .timer_irq(timer_irq_1),
        .trap_flush(trap_controller_0_trap_flush));
  RV32I_RAM_MEMORY_imp_1PB3UDL RV32I_RAM_MEMORY
       (.addr(addr_1),
        .be(be_1),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(RV32I_RAM_MEMORY_rdata),
        .ready(ram_ready_1),
        .rst(proc_sys_reset_0_peripheral_reset),
        .valid(MMIO_ram_valid),
        .wdata(wdata_1),
        .we(we_1));
  TIMER_imp_1W5J4GN TIMER
       (.addr(addr_4),
        .be(be_4),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .error(timer_error_1),
        .rdata(timer_0_rdata),
        .ready(timer_0_ready),
        .rst(proc_sys_reset_0_peripheral_reset),
        .timer_irq(timer_irq_1),
        .valid(valid_3),
        .wdata(wdata_4),
        .we(we_4));
  UART_imp_118P651 UART
       (.addr(addr_3),
        .be(be_3),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(uart_tx_0_rdata),
        .ready(uart_tx_0_ready),
        .rst(proc_sys_reset_0_peripheral_reset),
        .rx(UART_tx),
        .tx(UART_tx),
        .valid(valid_2),
        .wdata(wdata_3),
        .we(we_3));
  RISCV_COCOTB_xlconcat_8_0_0 xlconcat_8_0
       (.dout(xlconcat_8_0_dout),
        .in0(xlconstant_1_dout),
        .in1(xlconstant_1_dout),
        .in2(xlconstant_1_dout),
        .in3(xlconstant_1_dout),
        .in4(xlconstant_1_dout),
        .in5(xlconstant_1_dout),
        .in6(xlconstant_1_dout),
        .in7(xlconstant_1_dout));
  RISCV_COCOTB_xlslice_2bit_0_0 xlslice_2bit_0
       (.Din(gpio_0_gpio_out),
        .Dout(xlslice_2bit_0_Dout));
endmodule

module RV32I_EX_imp_J96COH
   (alu_op,
    bp_update_is_control,
    bp_update_taken,
    bp_update_target,
    bp_update_valid,
    clk,
    ex_actual_next_pc,
    ex_branch_en,
    ex_branch_funct3,
    ex_csr_rd_addr,
    ex_csr_rd_data,
    ex_csr_rd_we,
    ex_exception_cause,
    ex_exception_tval,
    ex_exception_valid,
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
    ex_pred_next_pc,
    ex_rd,
    ex_rd_we,
    ex_rs1,
    ex_rs1_data,
    ex_rs2,
    ex_rs2_data,
    ex_valid,
    ex_wb_sel,
    mem_csr_rd_addr,
    mem_csr_rd_data,
    mem_csr_rd_we,
    mem_exception_cause,
    mem_exception_tval,
    mem_exception_valid,
    mem_imm_u,
    mem_mem_re,
    mem_mem_size,
    mem_mem_unsigned,
    mem_mem_we,
    mem_pc,
    mem_pc_plus4,
    mem_rd,
    mem_rd_we,
    mem_stage_data,
    mem_stage_out_valid,
    mem_stage_rd,
    mem_stage_rd_out_we,
    mem_store_data,
    mem_valid,
    mem_wb_data,
    mem_wb_sel,
    op_a_sel,
    out_data,
    pc,
    pc_redirect_target,
    pc_redirect_valid,
    rst,
    stall,
    wb_rd,
    wb_rd_we,
    wb_valid);
  input [3:0]alu_op;
  output bp_update_is_control;
  output bp_update_taken;
  output [31:0]bp_update_target;
  output bp_update_valid;
  input clk;
  output [31:0]ex_actual_next_pc;
  input ex_branch_en;
  input [2:0]ex_branch_funct3;
  input [4:0]ex_csr_rd_addr;
  input [31:0]ex_csr_rd_data;
  input ex_csr_rd_we;
  output [3:0]ex_exception_cause;
  output [31:0]ex_exception_tval;
  output ex_exception_valid;
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
  input [31:0]ex_pred_next_pc;
  input [4:0]ex_rd;
  input ex_rd_we;
  input [4:0]ex_rs1;
  input [31:0]ex_rs1_data;
  input [4:0]ex_rs2;
  input [31:0]ex_rs2_data;
  input ex_valid;
  input [2:0]ex_wb_sel;
  output [4:0]mem_csr_rd_addr;
  output [31:0]mem_csr_rd_data;
  output mem_csr_rd_we;
  output [3:0]mem_exception_cause;
  output [31:0]mem_exception_tval;
  output mem_exception_valid;
  output [31:0]mem_imm_u;
  output mem_mem_re;
  output [1:0]mem_mem_size;
  output mem_mem_unsigned;
  output mem_mem_we;
  output [31:0]mem_pc;
  output [31:0]mem_pc_plus4;
  output [4:0]mem_rd;
  output mem_rd_we;
  input [31:0]mem_stage_data;
  input mem_stage_out_valid;
  input [4:0]mem_stage_rd;
  input [0:0]mem_stage_rd_out_we;
  output [31:0]mem_store_data;
  output mem_valid;
  input [31:0]mem_wb_data;
  output [2:0]mem_wb_sel;
  input [1:0]op_a_sel;
  output [31:0]out_data;
  input [31:0]pc;
  output [31:0]pc_redirect_target;
  output pc_redirect_valid;
  input rst;
  input stall;
  input [4:0]wb_rd;
  input wb_rd_we;
  input wb_valid;

  wire Net;
  wire [0:0]Op2_1;
  wire [31:0]alu_0_y;
  wire branch_0_bp_update_is_control;
  wire branch_0_bp_update_taken;
  wire [31:0]branch_0_bp_update_target;
  wire branch_0_bp_update_valid;
  wire [31:0]branch_0_ex_actual_next_pc;
  wire [3:0]branch_0_ex_exception_cause;
  wire [31:0]branch_0_ex_exception_tval;
  wire branch_0_ex_exception_valid;
  wire branch_0_ex_flush_req;
  wire [31:0]branch_0_pc_redirect_target;
  wire branch_0_pc_redirect_valid;
  wire [0:0]constant_zero_0_dout;
  wire [4:0]ex_csr_rd_addr_1;
  wire [31:0]ex_csr_rd_data_1;
  wire ex_csr_rd_we_1;
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
  wire [2:0]ex_mem_reg_1_mem_wb_sel;
  wire [4:0]ex_mem_reg_mem_csr_rd_addr;
  wire [31:0]ex_mem_reg_mem_csr_rd_data;
  wire ex_mem_reg_mem_csr_rd_we;
  wire [3:0]ex_mem_reg_mem_exception_cause;
  wire [31:0]ex_mem_reg_mem_exception_tval;
  wire ex_mem_reg_mem_exception_valid;
  wire [31:0]ex_mem_reg_mem_pc;
  wire [31:0]ex_pred_next_pc_1;
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
  wire [2:0]id_ex_reg_0_ex_wb_sel;
  wire [31:0]mem_stage_0_mem_forward_data;
  wire [4:0]mem_stage_0_mem_out_rd;
  wire mem_stage_valid_1;
  wire [4:0]mem_wb_reg_0_wb_rd;
  wire [31:0]operand_a_mux_0_operand_a;
  wire [31:0]operand_b_mux_0_operand_b;
  wire proc_sys_reset_0_peripheral_reset;
  wire stall_1;
  wire [0:0]util_vector_and_0_Res;
  wire [0:0]util_vector_and_1_Res;
  wire [31:0]wb_mux_0_rd_wdata;
  wire wb_rd_we1_1;
  wire wb_valid_1;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Net = ex_valid;
  assign Op2_1 = mem_stage_rd_out_we[0];
  assign bp_update_is_control = branch_0_bp_update_is_control;
  assign bp_update_taken = branch_0_bp_update_taken;
  assign bp_update_target[31:0] = branch_0_bp_update_target;
  assign bp_update_valid = branch_0_bp_update_valid;
  assign ex_actual_next_pc[31:0] = branch_0_ex_actual_next_pc;
  assign ex_csr_rd_addr_1 = ex_csr_rd_addr[4:0];
  assign ex_csr_rd_data_1 = ex_csr_rd_data[31:0];
  assign ex_csr_rd_we_1 = ex_csr_rd_we;
  assign ex_exception_cause[3:0] = branch_0_ex_exception_cause;
  assign ex_exception_tval[31:0] = branch_0_ex_exception_tval;
  assign ex_exception_valid = branch_0_ex_exception_valid;
  assign ex_flush_req = branch_0_ex_flush_req;
  assign ex_mem_data[31:0] = ex_mem_reg_1_mem_alu_result;
  assign ex_pred_next_pc_1 = ex_pred_next_pc[31:0];
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
  assign id_ex_reg_0_ex_wb_sel = ex_wb_sel[2:0];
  assign mem_csr_rd_addr[4:0] = ex_mem_reg_mem_csr_rd_addr;
  assign mem_csr_rd_data[31:0] = ex_mem_reg_mem_csr_rd_data;
  assign mem_csr_rd_we = ex_mem_reg_mem_csr_rd_we;
  assign mem_exception_cause[3:0] = ex_mem_reg_mem_exception_cause;
  assign mem_exception_tval[31:0] = ex_mem_reg_mem_exception_tval;
  assign mem_exception_valid = ex_mem_reg_mem_exception_valid;
  assign mem_imm_u[31:0] = ex_mem_reg_1_mem_imm_u;
  assign mem_mem_re = ex_mem_reg_1_mem_mem_re;
  assign mem_mem_size[1:0] = ex_mem_reg_1_mem_mem_size;
  assign mem_mem_unsigned = ex_mem_reg_1_mem_mem_unsigned;
  assign mem_mem_we = ex_mem_reg_1_mem_mem_we;
  assign mem_pc[31:0] = ex_mem_reg_mem_pc;
  assign mem_pc_plus4[31:0] = ex_mem_reg_1_mem_pc_plus4;
  assign mem_rd[4:0] = ex_mem_reg_1_mem_rd;
  assign mem_rd_we = ex_mem_reg_1_mem_rd_we;
  assign mem_stage_0_mem_forward_data = mem_stage_data[31:0];
  assign mem_stage_0_mem_out_rd = mem_stage_rd[4:0];
  assign mem_stage_valid_1 = mem_stage_out_valid;
  assign mem_store_data[31:0] = ex_mem_reg_1_mem_store_data;
  assign mem_valid = ex_mem_reg_1_mem_valid;
  assign mem_wb_reg_0_wb_rd = wb_rd[4:0];
  assign mem_wb_sel[2:0] = ex_mem_reg_1_mem_wb_sel;
  assign out_data[31:0] = forward_mux_0_out_data;
  assign pc_redirect_target[31:0] = branch_0_pc_redirect_target;
  assign pc_redirect_valid = branch_0_pc_redirect_valid;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign stall_1 = stall;
  assign wb_mux_0_rd_wdata = mem_wb_data[31:0];
  assign wb_rd_we1_1 = wb_rd_we;
  assign wb_valid_1 = wb_valid;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RISCV_COCOTB_alu_0_0 alu_0
       (.a(operand_a_mux_0_operand_a),
        .alu_op(id_ex_reg_0_ex_alu_op),
        .b(operand_b_mux_0_operand_b),
        .y(alu_0_y));
  RISCV_COCOTB_branch_0_0 branch_0
       (.bp_update_is_control(branch_0_bp_update_is_control),
        .bp_update_taken(branch_0_bp_update_taken),
        .bp_update_target(branch_0_bp_update_target),
        .bp_update_valid(branch_0_bp_update_valid),
        .ex_actual_next_pc(branch_0_ex_actual_next_pc),
        .ex_branch_en(id_ex_reg_0_ex_branch_en),
        .ex_branch_funct3(id_ex_reg_0_ex_branch_funct3),
        .ex_exception_cause(branch_0_ex_exception_cause),
        .ex_exception_tval(branch_0_ex_exception_tval),
        .ex_exception_valid(branch_0_ex_exception_valid),
        .ex_flush_req(branch_0_ex_flush_req),
        .ex_imm(id_ex_reg_0_ex_imm),
        .ex_jal(id_ex_reg_0_ex_jal),
        .ex_jalr(id_ex_reg_0_ex_jalr),
        .ex_pc(id_ex_reg_0_ex_pc),
        .ex_pred_next_pc(ex_pred_next_pc_1),
        .ex_rs1_data(forward_mux_0_out_data),
        .ex_rs2_data(forward_mux_1_out_data),
        .ex_valid(Net),
        .pc_redirect_target(branch_0_pc_redirect_target),
        .pc_redirect_valid(branch_0_pc_redirect_valid));
  RISCV_COCOTB_constant_zero_0_2 constant_zero_0
       (.dout(constant_zero_0_dout));
  RISCV_COCOTB_ex_mem_reg_0 ex_mem_reg
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .ex_alu_result(alu_0_y),
        .ex_csr_rd_addr(ex_csr_rd_addr_1),
        .ex_csr_rd_data(ex_csr_rd_data_1),
        .ex_csr_rd_we(ex_csr_rd_we_1),
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
        .flush(constant_zero_0_dout),
        .mem_alu_result(ex_mem_reg_1_mem_alu_result),
        .mem_csr_rd_addr(ex_mem_reg_mem_csr_rd_addr),
        .mem_csr_rd_data(ex_mem_reg_mem_csr_rd_data),
        .mem_csr_rd_we(ex_mem_reg_mem_csr_rd_we),
        .mem_exception_cause(ex_mem_reg_mem_exception_cause),
        .mem_exception_tval(ex_mem_reg_mem_exception_tval),
        .mem_exception_valid(ex_mem_reg_mem_exception_valid),
        .mem_imm_u(ex_mem_reg_1_mem_imm_u),
        .mem_mem_re(ex_mem_reg_1_mem_mem_re),
        .mem_mem_size(ex_mem_reg_1_mem_mem_size),
        .mem_mem_unsigned(ex_mem_reg_1_mem_mem_unsigned),
        .mem_mem_we(ex_mem_reg_1_mem_mem_we),
        .mem_pc(ex_mem_reg_mem_pc),
        .mem_pc_plus4(ex_mem_reg_1_mem_pc_plus4),
        .mem_rd(ex_mem_reg_1_mem_rd),
        .mem_rd_we(ex_mem_reg_1_mem_rd_we),
        .mem_store_data(ex_mem_reg_1_mem_store_data),
        .mem_valid(ex_mem_reg_1_mem_valid),
        .mem_wb_sel(ex_mem_reg_1_mem_wb_sel),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(stall_1));
  RISCV_COCOTB_forward_mux_0_0 forward_mux_0
       (.base_data(id_ex_reg_0_ex_rs1_data),
        .ex_mem_data(ex_mem_reg_1_mem_alu_result),
        .forward_sel(forwarding_0_forward_a),
        .mem_stage_data(mem_stage_0_mem_forward_data),
        .mem_wb_data(wb_mux_0_rd_wdata),
        .out_data(forward_mux_0_out_data));
  RISCV_COCOTB_forward_mux_1_0 forward_mux_1
       (.base_data(id_ex_reg_0_ex_rs2_data),
        .ex_mem_data(ex_mem_reg_1_mem_alu_result),
        .forward_sel(forwarding_0_forward_b),
        .mem_stage_data(mem_stage_0_mem_forward_data),
        .mem_wb_data(wb_mux_0_rd_wdata),
        .out_data(forward_mux_1_out_data));
  RISCV_COCOTB_forward_mux_2_0 forward_mux_2
       (.base_data(id_ex_reg_0_ex_rs2_data),
        .ex_mem_data(ex_mem_reg_1_mem_alu_result),
        .forward_sel(forwarding_0_forward_store),
        .mem_stage_data(mem_stage_0_mem_forward_data),
        .mem_wb_data(wb_mux_0_rd_wdata),
        .out_data(forward_mux_2_out_data));
  RISCV_COCOTB_forwarding_0_0 forwarding_0
       (.ex_op_b_sel(id_ex_reg_0_ex_op_b_sel),
        .ex_rs1(id_ex_reg_0_ex_rs1),
        .ex_rs2(id_ex_reg_0_ex_rs2),
        .forward_a(forwarding_0_forward_a),
        .forward_b(forwarding_0_forward_b),
        .forward_store(forwarding_0_forward_store),
        .mem_is_load(ex_mem_reg_1_mem_mem_re),
        .mem_rd(ex_mem_reg_1_mem_rd),
        .mem_rd_we(util_vector_and_0_Res),
        .mem_stage_rd(mem_stage_0_mem_out_rd),
        .mem_stage_rd_we(util_vector_and_1_Res),
        .mem_stage_valid(mem_stage_valid_1),
        .mem_valid(ex_mem_reg_1_mem_valid),
        .wb_rd(mem_wb_reg_0_wb_rd),
        .wb_rd_we(wb_rd_we1_1),
        .wb_valid(wb_valid_1));
  RISCV_COCOTB_operand_a_mux_0_0 operand_a_mux_0
       (.op_a_sel(id_ex_reg_0_ex_op_a_sel),
        .operand_a(operand_a_mux_0_operand_a),
        .pc(id_ex_reg_0_ex_pc),
        .rs1_data(forward_mux_0_out_data));
  RISCV_COCOTB_operand_b_mux_0_0 operand_b_mux_0
       (.imm(id_ex_reg_0_ex_imm),
        .op_b_sel(id_ex_reg_0_ex_op_b_sel),
        .operand_b(operand_b_mux_0_operand_b),
        .rs2_data(forward_mux_1_out_data));
  RISCV_COCOTB_util_vector_and_0_2 util_vector_and_0
       (.Op1(ex_mem_reg_1_mem_valid),
        .Op2(ex_mem_reg_1_mem_rd_we),
        .Res(util_vector_and_0_Res));
  RISCV_COCOTB_util_vector_and_0_3 util_vector_and_1
       (.Op1(mem_stage_valid_1),
        .Op2(Op2_1),
        .Res(util_vector_and_1_Res));
endmodule

module RV32I_ID_imp_I31ZGD
   (bubble,
    clk,
    ex_alu_op,
    ex_branch_en,
    ex_branch_funct3,
    ex_illegal_instr,
    ex_imm,
    ex_imm_u,
    ex_instr,
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
    ex_pred_next_pc,
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
    id_pred_next_pc,
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
  output ex_illegal_instr;
  output [31:0]ex_imm;
  output [31:0]ex_imm_u;
  output [31:0]ex_instr;
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
  output [31:0]ex_pred_next_pc;
  output [4:0]ex_rd;
  output ex_rd_we;
  output [4:0]ex_rs1;
  output [31:0]ex_rs1_data;
  output [4:0]ex_rs2;
  output [31:0]ex_rs2_data;
  output ex_valid;
  output [2:0]ex_wb_sel;
  input [31:0]id_pc;
  input [31:0]id_pc_plus4;
  input [31:0]id_pred_next_pc;
  input id_valid;
  input [31:0]instr;
  input [4:0]rd_addr;
  input [31:0]rd_wdata;
  input rd_we;
  output [4:0]rs1;
  output rs1_used;
  output [4:0]rs2;
  output rs2_used;
  input rst;
  input stall;

  wire bubble_1;
  wire [3:0]control_0_alu_op;
  wire control_0_branch_en;
  wire [2:0]control_0_branch_funct3;
  wire [2:0]control_0_imm_sel;
  wire control_0_jal;
  wire control_0_jalr;
  wire control_0_mem_re;
  wire [1:0]control_0_mem_size;
  wire control_0_mem_unsigned;
  wire control_0_mem_we;
  wire [1:0]control_0_op_a_sel;
  wire [1:0]control_0_op_b_sel;
  wire control_0_rd_we;
  wire [2:0]control_0_wb_sel;
  wire decoder_0_bit30;
  wire [2:0]decoder_0_fmt;
  wire [2:0]decoder_0_funct3;
  wire [6:0]decoder_0_funct7;
  wire decoder_0_illegal_opcode;
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
  wire [3:0]id_ex_reg_1_ex_alu_op;
  wire id_ex_reg_1_ex_branch_en;
  wire [2:0]id_ex_reg_1_ex_branch_funct3;
  wire id_ex_reg_1_ex_illegal_instr;
  wire [31:0]id_ex_reg_1_ex_imm;
  wire [31:0]id_ex_reg_1_ex_imm_u;
  wire [31:0]id_ex_reg_1_ex_instr;
  wire id_ex_reg_1_ex_jal;
  wire id_ex_reg_1_ex_jalr;
  wire id_ex_reg_1_ex_mem_re;
  wire [1:0]id_ex_reg_1_ex_mem_size;
  wire id_ex_reg_1_ex_mem_unsigned;
  wire id_ex_reg_1_ex_mem_we;
  wire [1:0]id_ex_reg_1_ex_op_a_sel;
  wire [1:0]id_ex_reg_1_ex_op_b_sel;
  wire [31:0]id_ex_reg_1_ex_pc;
  wire [31:0]id_ex_reg_1_ex_pc_plus4;
  wire [31:0]id_ex_reg_1_ex_pred_next_pc;
  wire [4:0]id_ex_reg_1_ex_rd;
  wire id_ex_reg_1_ex_rd_we;
  wire [4:0]id_ex_reg_1_ex_rs1;
  wire [31:0]id_ex_reg_1_ex_rs1_data;
  wire [4:0]id_ex_reg_1_ex_rs2;
  wire [31:0]id_ex_reg_1_ex_rs2_data;
  wire id_ex_reg_1_ex_valid;
  wire [2:0]id_ex_reg_1_ex_wb_sel;
  wire [31:0]id_pred_next_pc_1;
  wire [31:0]if_id_reg_0_id_instr_out;
  wire [31:0]if_id_reg_0_id_pc4_out;
  wire [31:0]if_id_reg_0_id_pc_out;
  wire if_id_reg_0_id_valid_out;
  wire [31:0]imm_mux_0_imm_out;
  wire proc_sys_reset_0_peripheral_reset;
  wire [4:0]rd_addr1_1;
  wire [31:0]rd_wdata1_1;
  wire rd_we1_1;
  wire [31:0]regfile_0_rs1_rdata;
  wire [31:0]regfile_0_rs2_rdata;
  wire stall1_1;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign bubble_1 = bubble;
  assign ex_alu_op[3:0] = id_ex_reg_1_ex_alu_op;
  assign ex_branch_en = id_ex_reg_1_ex_branch_en;
  assign ex_branch_funct3[2:0] = id_ex_reg_1_ex_branch_funct3;
  assign ex_illegal_instr = id_ex_reg_1_ex_illegal_instr;
  assign ex_imm[31:0] = id_ex_reg_1_ex_imm;
  assign ex_imm_u[31:0] = id_ex_reg_1_ex_imm_u;
  assign ex_instr[31:0] = id_ex_reg_1_ex_instr;
  assign ex_jal = id_ex_reg_1_ex_jal;
  assign ex_jalr = id_ex_reg_1_ex_jalr;
  assign ex_mem_re = id_ex_reg_1_ex_mem_re;
  assign ex_mem_size[1:0] = id_ex_reg_1_ex_mem_size;
  assign ex_mem_unsigned = id_ex_reg_1_ex_mem_unsigned;
  assign ex_mem_we = id_ex_reg_1_ex_mem_we;
  assign ex_op_a_sel[1:0] = id_ex_reg_1_ex_op_a_sel;
  assign ex_op_b_sel[1:0] = id_ex_reg_1_ex_op_b_sel;
  assign ex_pc[31:0] = id_ex_reg_1_ex_pc;
  assign ex_pc_plus4[31:0] = id_ex_reg_1_ex_pc_plus4;
  assign ex_pred_next_pc[31:0] = id_ex_reg_1_ex_pred_next_pc;
  assign ex_rd[4:0] = id_ex_reg_1_ex_rd;
  assign ex_rd_we = id_ex_reg_1_ex_rd_we;
  assign ex_rs1[4:0] = id_ex_reg_1_ex_rs1;
  assign ex_rs1_data[31:0] = id_ex_reg_1_ex_rs1_data;
  assign ex_rs2[4:0] = id_ex_reg_1_ex_rs2;
  assign ex_rs2_data[31:0] = id_ex_reg_1_ex_rs2_data;
  assign ex_valid = id_ex_reg_1_ex_valid;
  assign ex_wb_sel[2:0] = id_ex_reg_1_ex_wb_sel;
  assign id_pred_next_pc_1 = id_pred_next_pc[31:0];
  assign if_id_reg_0_id_instr_out = instr[31:0];
  assign if_id_reg_0_id_pc4_out = id_pc_plus4[31:0];
  assign if_id_reg_0_id_pc_out = id_pc[31:0];
  assign if_id_reg_0_id_valid_out = id_valid;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign rd_addr1_1 = rd_addr[4:0];
  assign rd_wdata1_1 = rd_wdata[31:0];
  assign rd_we1_1 = rd_we;
  assign rs1[4:0] = decoder_0_rs1;
  assign rs1_used = decoder_0_rs1_used;
  assign rs2[4:0] = decoder_0_rs2;
  assign rs2_used = decoder_0_rs2_used;
  assign stall1_1 = stall;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RISCV_COCOTB_control_0_0 control_0
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
        .mem_size(control_0_mem_size),
        .mem_unsigned(control_0_mem_unsigned),
        .mem_we(control_0_mem_we),
        .op_a_sel(control_0_op_a_sel),
        .op_b_sel(control_0_op_b_sel),
        .opcode(decoder_0_opcode),
        .rd_we(control_0_rd_we),
        .wb_sel(control_0_wb_sel));
  RISCV_COCOTB_decoder_0_0 decoder_0
       (.bit30(decoder_0_bit30),
        .fmt(decoder_0_fmt),
        .funct3(decoder_0_funct3),
        .funct7(decoder_0_funct7),
        .illegal_opcode(decoder_0_illegal_opcode),
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
  RISCV_COCOTB_id_ex_reg_0 id_ex_reg
       (.bubble(bubble_1),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .ex_alu_op(id_ex_reg_1_ex_alu_op),
        .ex_branch_en(id_ex_reg_1_ex_branch_en),
        .ex_branch_funct3(id_ex_reg_1_ex_branch_funct3),
        .ex_illegal_instr(id_ex_reg_1_ex_illegal_instr),
        .ex_imm(id_ex_reg_1_ex_imm),
        .ex_imm_u(id_ex_reg_1_ex_imm_u),
        .ex_instr(id_ex_reg_1_ex_instr),
        .ex_jal(id_ex_reg_1_ex_jal),
        .ex_jalr(id_ex_reg_1_ex_jalr),
        .ex_mem_re(id_ex_reg_1_ex_mem_re),
        .ex_mem_size(id_ex_reg_1_ex_mem_size),
        .ex_mem_unsigned(id_ex_reg_1_ex_mem_unsigned),
        .ex_mem_we(id_ex_reg_1_ex_mem_we),
        .ex_op_a_sel(id_ex_reg_1_ex_op_a_sel),
        .ex_op_b_sel(id_ex_reg_1_ex_op_b_sel),
        .ex_pc(id_ex_reg_1_ex_pc),
        .ex_pc_plus4(id_ex_reg_1_ex_pc_plus4),
        .ex_pred_next_pc(id_ex_reg_1_ex_pred_next_pc),
        .ex_rd(id_ex_reg_1_ex_rd),
        .ex_rd_we(id_ex_reg_1_ex_rd_we),
        .ex_rs1(id_ex_reg_1_ex_rs1),
        .ex_rs1_data(id_ex_reg_1_ex_rs1_data),
        .ex_rs2(id_ex_reg_1_ex_rs2),
        .ex_rs2_data(id_ex_reg_1_ex_rs2_data),
        .ex_valid(id_ex_reg_1_ex_valid),
        .ex_wb_sel(id_ex_reg_1_ex_wb_sel),
        .id_alu_op(control_0_alu_op),
        .id_branch_en(control_0_branch_en),
        .id_branch_funct3(control_0_branch_funct3),
        .id_illegal_instr(decoder_0_illegal_opcode),
        .id_imm(imm_mux_0_imm_out),
        .id_imm_u(decoder_0_imm_u),
        .id_instr(if_id_reg_0_id_instr_out),
        .id_jal(control_0_jal),
        .id_jalr(control_0_jalr),
        .id_mem_re(control_0_mem_re),
        .id_mem_size(control_0_mem_size),
        .id_mem_unsigned(control_0_mem_unsigned),
        .id_mem_we(control_0_mem_we),
        .id_op_a_sel(control_0_op_a_sel),
        .id_op_b_sel(control_0_op_b_sel),
        .id_pc(if_id_reg_0_id_pc_out),
        .id_pc_plus4(if_id_reg_0_id_pc4_out),
        .id_pred_next_pc(id_pred_next_pc_1),
        .id_rd(decoder_0_rd),
        .id_rd_we(control_0_rd_we),
        .id_rs1(decoder_0_rs1),
        .id_rs1_data(regfile_0_rs1_rdata),
        .id_rs2(decoder_0_rs2),
        .id_rs2_data(regfile_0_rs2_rdata),
        .id_valid(if_id_reg_0_id_valid_out),
        .id_wb_sel(control_0_wb_sel),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(stall1_1));
  RISCV_COCOTB_imm_mux_0_0 imm_mux_0
       (.imm_b(decoder_0_imm_b),
        .imm_i(decoder_0_imm_i),
        .imm_j(decoder_0_imm_j),
        .imm_out(imm_mux_0_imm_out),
        .imm_s(decoder_0_imm_s),
        .imm_sel(control_0_imm_sel),
        .imm_u(decoder_0_imm_u));
  RISCV_COCOTB_regfile_0_0 regfile_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .rd_addr(rd_addr1_1),
        .rd_wdata(rd_wdata1_1),
        .rd_we(rd_we1_1),
        .rs1_addr(decoder_0_rs1),
        .rs1_rdata(regfile_0_rs1_rdata),
        .rs2_addr(decoder_0_rs2),
        .rs2_rdata(regfile_0_rs2_rdata));
endmodule

module RV32I_IF_imp_9A1V5I
   (clk,
    flush,
    hold,
    id_instr_out,
    id_pc4_out,
    id_pc_out,
    id_pred_next_pc_out,
    id_valid_out,
    pc_en,
    pc_redirect_target,
    pc_redirect_valid,
    priv_redirect_target,
    priv_redirect_valid,
    rst,
    stall,
    trap_flush,
    update_is_control,
    update_pc,
    update_taken,
    update_target,
    update_valid);
  input clk;
  input flush;
  input hold;
  output [31:0]id_instr_out;
  output [31:0]id_pc4_out;
  output [31:0]id_pc_out;
  output [31:0]id_pred_next_pc_out;
  output id_valid_out;
  input pc_en;
  input [31:0]pc_redirect_target;
  input pc_redirect_valid;
  input [31:0]priv_redirect_target;
  input priv_redirect_valid;
  input rst;
  input [0:0]stall;
  input [0:0]trap_flush;
  input update_is_control;
  input [31:0]update_pc;
  input update_taken;
  input [31:0]update_target;
  input update_valid;

  wire [0:0]Op3_1;
  wire [0:0]Op4_1;
  wire [31:0]branch_0_pc_redirect_target;
  wire branch_predictor_btb_0_pred_taken;
  wire branch_predictor_btb_0_pred_valid;
  wire [0:0]constant_one_0_dout;
  wire [0:0]ena_1;
  wire flush_1;
  wire hold_1;
  wire [31:0]if_id_reg_0_id_instr_out;
  wire [31:0]if_id_reg_0_id_pc4_out;
  wire [31:0]if_id_reg_0_id_pc_out;
  wire [31:0]if_id_reg_0_id_pred_next_pc_out;
  wire if_id_reg_0_id_valid_out;
  wire pc_en_1;
  wire pc_redirect_valid_1;
  wire [10:0]pc_to_imem_addr_0_addr;
  wire [31:0]pc_unit_0_pc;
  wire [31:0]pc_unit_0_pc_plus4;
  wire [31:0]priv_redirect_target_1;
  wire priv_redirect_valid_1;
  wire proc_sys_reset_0_peripheral_reset;
  wire [31:0]rom_memory_0_dout;
  wire update_is_control_1;
  wire [31:0]update_pc_1;
  wire update_taken_1;
  wire [31:0]update_target_1;
  wire update_valid1_1;
  wire [0:0]util_vector_and_1_Res;
  wire [0:0]util_vector_not_0_Res;
  wire [0:0]util_vector_or_0_Res;
  wire [0:0]util_vector_or_1_Res;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Op3_1 = stall[0];
  assign Op4_1 = trap_flush[0];
  assign branch_0_pc_redirect_target = pc_redirect_target[31:0];
  assign flush_1 = flush;
  assign hold_1 = hold;
  assign id_instr_out[31:0] = if_id_reg_0_id_instr_out;
  assign id_pc4_out[31:0] = if_id_reg_0_id_pc4_out;
  assign id_pc_out[31:0] = if_id_reg_0_id_pc_out;
  assign id_pred_next_pc_out[31:0] = if_id_reg_0_id_pred_next_pc_out;
  assign id_valid_out = if_id_reg_0_id_valid_out;
  assign pc_en_1 = pc_en;
  assign pc_redirect_valid_1 = pc_redirect_valid;
  assign priv_redirect_target_1 = priv_redirect_target[31:0];
  assign priv_redirect_valid_1 = priv_redirect_valid;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign update_is_control_1 = update_is_control;
  assign update_pc_1 = update_pc[31:0];
  assign update_taken_1 = update_taken;
  assign update_target_1 = update_target[31:0];
  assign update_valid1_1 = update_valid;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RISCV_COCOTB_branch_predictor_btb_0_0 branch_predictor_btb_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .if_pc(pc_unit_0_pc),
        .pred_taken(branch_predictor_btb_0_pred_taken),
        .pred_valid(branch_predictor_btb_0_pred_valid),
        .rst(proc_sys_reset_0_peripheral_reset),
        .update_is_control(update_is_control_1),
        .update_pc(update_pc_1),
        .update_taken(update_taken_1),
        .update_target(update_target_1),
        .update_valid(update_valid1_1));
  RISCV_COCOTB_constant_one_0_0 constant_one_0
       (.dout(constant_one_0_dout));
  RISCV_COCOTB_if_id_reg_0_0 if_id_reg_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .flush(util_vector_or_0_Res),
        .hold(util_vector_or_1_Res),
        .id_instr_out(if_id_reg_0_id_instr_out),
        .id_pc4_out(if_id_reg_0_id_pc4_out),
        .id_pc_out(if_id_reg_0_id_pc_out),
        .id_pred_next_pc_out(if_id_reg_0_id_pred_next_pc_out),
        .id_valid_out(if_id_reg_0_id_valid_out),
        .if_instr_in(rom_memory_0_dout),
        .if_pc4_in(pc_unit_0_pc_plus4),
        .if_pc_in(pc_unit_0_pc),
        .if_pred_next_pc_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .if_valid_in(constant_one_0_dout),
        .rst(proc_sys_reset_0_peripheral_reset));
  RISCV_COCOTB_pc_to_imem_addr_0_0 pc_to_imem_addr_0
       (.addr(pc_to_imem_addr_0_addr),
        .pc(pc_unit_0_pc));
  RISCV_COCOTB_pc_unit_0_0 pc_unit_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .pc(pc_unit_0_pc),
        .pc_en(util_vector_and_1_Res),
        .pc_plus4(pc_unit_0_pc_plus4),
        .pc_predict_next({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pc_predict_valid(1'b0),
        .pc_redirect_target(branch_0_pc_redirect_target),
        .pc_redirect_valid(pc_redirect_valid_1),
        .priv_redirect_target(priv_redirect_target_1),
        .priv_redirect_valid(priv_redirect_valid_1),
        .rst(proc_sys_reset_0_peripheral_reset));
  RISCV_COCOTB_rom_memory_0_0 rom_memory_0
       (.addr(pc_to_imem_addr_0_addr),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .dout(rom_memory_0_dout),
        .en(ena_1));
  RISCV_COCOTB_util_vector_and_0_0 util_vector_and_0
       (.Op1(branch_predictor_btb_0_pred_valid),
        .Op2(branch_predictor_btb_0_pred_taken));
  RISCV_COCOTB_util_vector_and_0_1 util_vector_and_1
       (.Op1(pc_en_1),
        .Op2(util_vector_not_0_Res),
        .Res(util_vector_and_1_Res));
  RISCV_COCOTB_util_vector_not_0_0 util_vector_not_0
       (.Op1(Op3_1),
        .Res(util_vector_not_0_Res));
  RISCV_COCOTB_util_vector_not_0_1 util_vector_not_1
       (.Op1(util_vector_or_1_Res),
        .Res(ena_1));
  RISCV_COCOTB_util_vector_or_0_0 util_vector_or_0
       (.Op1(flush_1),
        .Op2(Op4_1),
        .Res(util_vector_or_0_Res));
  RISCV_COCOTB_util_vector_or_0_1 util_vector_or_1
       (.Op1(hold_1),
        .Op2(Op3_1),
        .Res(util_vector_or_1_Res));
endmodule

module RV32I_MEM_imp_1HCZWI8
   (clk,
    dmem_addr,
    dmem_be,
    dmem_error,
    dmem_re,
    dmem_ready,
    dmem_req_ready,
    dmem_valid,
    dmem_wdata,
    dmem_we,
    load_access_fault,
    mem_csr_rd_addr,
    mem_csr_rd_data,
    mem_csr_rd_we,
    mem_data,
    mem_fault_cause,
    mem_fault_tval,
    mem_fault_valid,
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
    mem_stage_out_valid,
    mem_stage_rd_out_we,
    mem_stall_req,
    regfile_we,
    rst,
    store_access_fault,
    wb_alu_result,
    wb_csr_rd_addr,
    wb_csr_rd_data,
    wb_csr_rd_we,
    wb_data,
    wb_imm_u,
    wb_pc_plus4,
    wb_rd,
    wb_sel,
    wb_valid);
  input clk;
  output [31:0]dmem_addr;
  output [3:0]dmem_be;
  input dmem_error;
  output dmem_re;
  input dmem_ready;
  input dmem_req_ready;
  output dmem_valid;
  output [31:0]dmem_wdata;
  output dmem_we;
  output load_access_fault;
  input [4:0]mem_csr_rd_addr;
  input [31:0]mem_csr_rd_data;
  input mem_csr_rd_we;
  input [31:0]mem_data;
  output [3:0]mem_fault_cause;
  output [31:0]mem_fault_tval;
  output mem_fault_valid;
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
  input [2:0]mem_in_wb_sel;
  output [4:0]mem_rd;
  output mem_stage_out_valid;
  output mem_stage_rd_out_we;
  output [0:0]mem_stall_req;
  output regfile_we;
  input rst;
  output store_access_fault;
  output [31:0]wb_alu_result;
  output [4:0]wb_csr_rd_addr;
  output [31:0]wb_csr_rd_data;
  output wb_csr_rd_we;
  output [31:0]wb_data;
  output [31:0]wb_imm_u;
  output [31:0]wb_pc_plus4;
  output [4:0]wb_rd;
  output [2:0]wb_sel;
  output wb_valid;

  wire dmem_error_1;
  wire dmem_ready_1;
  wire dmem_req_ready_1;
  wire [31:0]ex_mem_reg_1_mem_alu_result;
  wire [31:0]ex_mem_reg_1_mem_imm_u;
  wire ex_mem_reg_1_mem_mem_re;
  wire [1:0]ex_mem_reg_1_mem_mem_size;
  wire ex_mem_reg_1_mem_mem_unsigned;
  wire [31:0]ex_mem_reg_1_mem_pc_plus4;
  wire [4:0]ex_mem_reg_1_mem_rd;
  wire ex_mem_reg_1_mem_rd_we;
  wire [31:0]ex_mem_reg_1_mem_store_data;
  wire ex_mem_reg_1_mem_valid;
  wire [2:0]ex_mem_reg_1_mem_wb_sel;
  wire [4:0]mem_csr_rd_addr_1;
  wire [31:0]mem_csr_rd_data_1;
  wire mem_csr_rd_we_1;
  wire [31:0]mem_data_1;
  wire mem_in_mem_we_1;
  wire [31:0]mem_stage_0_dmem_addr;
  wire [3:0]mem_stage_0_dmem_be;
  wire mem_stage_0_dmem_re;
  wire mem_stage_0_dmem_valid;
  wire [31:0]mem_stage_0_dmem_wdata;
  wire mem_stage_0_dmem_we;
  wire [3:0]mem_stage_0_mem_fault_cause;
  wire [31:0]mem_stage_0_mem_fault_tval;
  wire mem_stage_0_mem_fault_valid;
  wire [31:0]mem_stage_0_mem_forward_data;
  wire [31:0]mem_stage_0_mem_out_alu_result;
  wire [31:0]mem_stage_0_mem_out_data;
  wire [31:0]mem_stage_0_mem_out_imm_u;
  wire [31:0]mem_stage_0_mem_out_pc_plus4;
  wire [4:0]mem_stage_0_mem_out_rd;
  wire mem_stage_0_mem_out_rd_we;
  wire mem_stage_0_mem_out_valid;
  wire [2:0]mem_stage_0_mem_out_wb_sel;
  wire mem_stage_0_mem_stall_req;
  wire [31:0]mem_wb_reg_0_wb_alu_result;
  wire [4:0]mem_wb_reg_0_wb_csr_rd_addr;
  wire [31:0]mem_wb_reg_0_wb_csr_rd_data;
  wire mem_wb_reg_0_wb_csr_rd_we;
  wire [31:0]mem_wb_reg_0_wb_data;
  wire [31:0]mem_wb_reg_0_wb_imm_u;
  wire [31:0]mem_wb_reg_0_wb_pc_plus4;
  wire [4:0]mem_wb_reg_0_wb_rd;
  wire mem_wb_reg_0_wb_rd_we;
  wire [2:0]mem_wb_reg_0_wb_sel;
  wire mem_wb_reg_0_wb_valid;
  wire proc_sys_reset_0_peripheral_reset;
  wire regfile_we_gen_0_regfile_we;
  wire [0:0]xlconstant_3_dout;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign dmem_addr[31:0] = mem_stage_0_dmem_addr;
  assign dmem_be[3:0] = mem_stage_0_dmem_be;
  assign dmem_error_1 = dmem_error;
  assign dmem_re = mem_stage_0_dmem_re;
  assign dmem_ready_1 = dmem_ready;
  assign dmem_req_ready_1 = dmem_req_ready;
  assign dmem_valid = mem_stage_0_dmem_valid;
  assign dmem_wdata[31:0] = mem_stage_0_dmem_wdata;
  assign dmem_we = mem_stage_0_dmem_we;
  assign ex_mem_reg_1_mem_alu_result = mem_in_alu_result[31:0];
  assign ex_mem_reg_1_mem_imm_u = mem_in_imm_u[31:0];
  assign ex_mem_reg_1_mem_mem_re = mem_in_mem_re;
  assign ex_mem_reg_1_mem_mem_size = mem_in_mem_size[1:0];
  assign ex_mem_reg_1_mem_mem_unsigned = mem_in_mem_unsigned;
  assign ex_mem_reg_1_mem_pc_plus4 = mem_in_pc_plus4[31:0];
  assign ex_mem_reg_1_mem_rd = mem_in_rd[4:0];
  assign ex_mem_reg_1_mem_rd_we = mem_in_rd_we;
  assign ex_mem_reg_1_mem_store_data = mem_in_store_data[31:0];
  assign ex_mem_reg_1_mem_valid = mem_in_valid;
  assign ex_mem_reg_1_mem_wb_sel = mem_in_wb_sel[2:0];
  assign mem_csr_rd_addr_1 = mem_csr_rd_addr[4:0];
  assign mem_csr_rd_data_1 = mem_csr_rd_data[31:0];
  assign mem_csr_rd_we_1 = mem_csr_rd_we;
  assign mem_data_1 = mem_data[31:0];
  assign mem_fault_cause[3:0] = mem_stage_0_mem_fault_cause;
  assign mem_fault_tval[31:0] = mem_stage_0_mem_fault_tval;
  assign mem_fault_valid = mem_stage_0_mem_fault_valid;
  assign mem_forward_data[31:0] = mem_stage_0_mem_forward_data;
  assign mem_in_mem_we_1 = mem_in_mem_we;
  assign mem_rd[4:0] = mem_stage_0_mem_out_rd;
  assign mem_stage_out_valid = mem_stage_0_mem_out_valid;
  assign mem_stage_rd_out_we = mem_stage_0_mem_out_rd_we;
  assign mem_stall_req[0] = mem_stage_0_mem_stall_req;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign regfile_we = regfile_we_gen_0_regfile_we;
  assign wb_alu_result[31:0] = mem_wb_reg_0_wb_alu_result;
  assign wb_csr_rd_addr[4:0] = mem_wb_reg_0_wb_csr_rd_addr;
  assign wb_csr_rd_data[31:0] = mem_wb_reg_0_wb_csr_rd_data;
  assign wb_csr_rd_we = mem_wb_reg_0_wb_csr_rd_we;
  assign wb_data[31:0] = mem_wb_reg_0_wb_data;
  assign wb_imm_u[31:0] = mem_wb_reg_0_wb_imm_u;
  assign wb_pc_plus4[31:0] = mem_wb_reg_0_wb_pc_plus4;
  assign wb_rd[4:0] = mem_wb_reg_0_wb_rd;
  assign wb_sel[2:0] = mem_wb_reg_0_wb_sel;
  assign wb_valid = mem_wb_reg_0_wb_valid;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RISCV_COCOTB_constant_zero_0_1 constant_zero_0
       (.dout(xlconstant_3_dout));
  RISCV_COCOTB_mem_stage_0_0 mem_stage_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .dmem_addr(mem_stage_0_dmem_addr),
        .dmem_be(mem_stage_0_dmem_be),
        .dmem_error(dmem_error_1),
        .dmem_rdata(mem_data_1),
        .dmem_re(mem_stage_0_dmem_re),
        .dmem_ready(dmem_ready_1),
        .dmem_req_ready(dmem_req_ready_1),
        .dmem_valid(mem_stage_0_dmem_valid),
        .dmem_wdata(mem_stage_0_dmem_wdata),
        .dmem_we(mem_stage_0_dmem_we),
        .kill(xlconstant_3_dout),
        .mem_fault_cause(mem_stage_0_mem_fault_cause),
        .mem_fault_tval(mem_stage_0_mem_fault_tval),
        .mem_fault_valid(mem_stage_0_mem_fault_valid),
        .mem_forward_data(mem_stage_0_mem_forward_data),
        .mem_in_alu_result(ex_mem_reg_1_mem_alu_result),
        .mem_in_imm_u(ex_mem_reg_1_mem_imm_u),
        .mem_in_mem_re(ex_mem_reg_1_mem_mem_re),
        .mem_in_mem_size(ex_mem_reg_1_mem_mem_size),
        .mem_in_mem_unsigned(ex_mem_reg_1_mem_mem_unsigned),
        .mem_in_mem_we(mem_in_mem_we_1),
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
        .mem_stall_req(mem_stage_0_mem_stall_req),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(xlconstant_3_dout));
  RISCV_COCOTB_mem_wb_reg_0_0 mem_wb_reg_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .flush(xlconstant_3_dout),
        .mem_alu_result(mem_stage_0_mem_out_alu_result),
        .mem_csr_rd_addr(mem_csr_rd_addr_1),
        .mem_csr_rd_data(mem_csr_rd_data_1),
        .mem_csr_rd_we(mem_csr_rd_we_1),
        .mem_data(mem_stage_0_mem_out_data),
        .mem_imm_u(mem_stage_0_mem_out_imm_u),
        .mem_pc_plus4(mem_stage_0_mem_out_pc_plus4),
        .mem_rd(mem_stage_0_mem_out_rd),
        .mem_rd_we(mem_stage_0_mem_out_rd_we),
        .mem_valid(mem_stage_0_mem_out_valid),
        .mem_wb_sel(mem_stage_0_mem_out_wb_sel),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(xlconstant_3_dout),
        .wb_alu_result(mem_wb_reg_0_wb_alu_result),
        .wb_csr_rd_addr(mem_wb_reg_0_wb_csr_rd_addr),
        .wb_csr_rd_data(mem_wb_reg_0_wb_csr_rd_data),
        .wb_csr_rd_we(mem_wb_reg_0_wb_csr_rd_we),
        .wb_data(mem_wb_reg_0_wb_data),
        .wb_imm_u(mem_wb_reg_0_wb_imm_u),
        .wb_pc_plus4(mem_wb_reg_0_wb_pc_plus4),
        .wb_rd(mem_wb_reg_0_wb_rd),
        .wb_rd_we(mem_wb_reg_0_wb_rd_we),
        .wb_sel(mem_wb_reg_0_wb_sel),
        .wb_valid(mem_wb_reg_0_wb_valid));
  RISCV_COCOTB_regfile_we_gen_0_0 regfile_we_gen_0
       (.regfile_we(regfile_we_gen_0_regfile_we),
        .wb_rd(mem_wb_reg_0_wb_rd),
        .wb_rd_we(mem_wb_reg_0_wb_rd_we),
        .wb_valid(mem_wb_reg_0_wb_valid));
endmodule

module RV32I_RAM_MEMORY_imp_1PB3UDL
   (addr,
    be,
    clk,
    rdata,
    ready,
    rst,
    valid,
    wdata,
    we);
  input [31:0]addr;
  input [3:0]be;
  input clk;
  output [31:0]rdata;
  output ready;
  input rst;
  input valid;
  input [31:0]wdata;
  input we;

  wire [31:0]RV32I_MEM_dmem_addr;
  wire [3:0]RV32I_MEM_dmem_be;
  wire [31:0]RV32I_MEM_dmem_wdata;
  wire RV32I_MEM_dmem_we;
  wire [31:0]ram_data_1_rdata;
  wire ram_data_1_ready;
  wire rst_1;
  wire valid_1;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign RV32I_MEM_dmem_addr = addr[31:0];
  assign RV32I_MEM_dmem_be = be[3:0];
  assign RV32I_MEM_dmem_wdata = wdata[31:0];
  assign RV32I_MEM_dmem_we = we;
  assign rdata[31:0] = ram_data_1_rdata;
  assign ready = ram_data_1_ready;
  assign rst_1 = rst;
  assign valid_1 = valid;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RISCV_COCOTB_ram_data_1_0 ram_data_1
       (.addr(RV32I_MEM_dmem_addr),
        .be(RV32I_MEM_dmem_be),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(ram_data_1_rdata),
        .ready(ram_data_1_ready),
        .rst(rst_1),
        .valid(valid_1),
        .wdata(RV32I_MEM_dmem_wdata),
        .we(RV32I_MEM_dmem_we));
endmodule

module RV32I_WB_imp_LBXQBW
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
  input [2:0]wb_sel;

  wire [31:0]alu_y_1;
  wire [31:0]imm_u_1;
  wire [31:0]load_data_1;
  wire [31:0]pc_plus4_1;
  wire [31:0]wb_mux_0_rd_wdata;
  wire [2:0]wb_sel_1;

  assign alu_y_1 = alu_y[31:0];
  assign imm_u_1 = imm_u[31:0];
  assign load_data_1 = load_data[31:0];
  assign pc_plus4_1 = pc_plus4[31:0];
  assign rd_wdata[31:0] = wb_mux_0_rd_wdata;
  assign wb_sel_1 = wb_sel[2:0];
  RISCV_COCOTB_wb_mux_0_0 wb_mux_0
       (.alu_y(alu_y_1),
        .imm_u(imm_u_1),
        .load_data(load_data_1),
        .pc_plus4(pc_plus4_1),
        .rd_wdata(wb_mux_0_rd_wdata),
        .wb_sel(wb_sel_1));
endmodule

module TIMER_imp_1W5J4GN
   (addr,
    be,
    clk,
    error,
    rdata,
    ready,
    rst,
    timer_irq,
    valid,
    wdata,
    we);
  input [31:0]addr;
  input [3:0]be;
  input clk;
  output error;
  output [31:0]rdata;
  output ready;
  input rst;
  output timer_irq;
  input valid;
  input [31:0]wdata;
  input we;

  wire [31:0]MMIO_timer_addr;
  wire [3:0]MMIO_timer_be;
  wire MMIO_timer_valid;
  wire [31:0]MMIO_timer_wdata;
  wire MMIO_timer_we;
  wire proc_sys_reset_0_peripheral_reset;
  wire timer_0_error;
  wire [31:0]timer_0_rdata;
  wire timer_0_ready;
  wire timer_0_timer_irq;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign MMIO_timer_addr = addr[31:0];
  assign MMIO_timer_be = be[3:0];
  assign MMIO_timer_valid = valid;
  assign MMIO_timer_wdata = wdata[31:0];
  assign MMIO_timer_we = we;
  assign error = timer_0_error;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign rdata[31:0] = timer_0_rdata;
  assign ready = timer_0_ready;
  assign timer_irq = timer_0_timer_irq;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RISCV_COCOTB_timer_0_0 timer_0
       (.addr(MMIO_timer_addr),
        .be(MMIO_timer_be),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .error(timer_0_error),
        .rdata(timer_0_rdata),
        .ready(timer_0_ready),
        .rst(proc_sys_reset_0_peripheral_reset),
        .timer_irq(timer_0_timer_irq),
        .valid(MMIO_timer_valid),
        .wdata(MMIO_timer_wdata),
        .we(MMIO_timer_we));
endmodule

module UART_imp_118P651
   (addr,
    be,
    clk,
    rdata,
    ready,
    rst,
    rx,
    tx,
    valid,
    wdata,
    we);
  input [31:0]addr;
  input [3:0]be;
  input clk;
  output [31:0]rdata;
  output ready;
  input rst;
  input rx;
  output tx;
  input valid;
  input [31:0]wdata;
  input we;

  wire [31:0]MMIO_uart_addr;
  wire [3:0]MMIO_uart_be;
  wire MMIO_uart_valid;
  wire [31:0]MMIO_uart_wdata;
  wire MMIO_uart_we;
  wire proc_sys_reset_0_peripheral_reset;
  wire rx_1;
  wire [31:0]uart_0_rdata;
  wire uart_0_ready;
  wire uart_0_tx;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign MMIO_uart_addr = addr[31:0];
  assign MMIO_uart_be = be[3:0];
  assign MMIO_uart_valid = valid;
  assign MMIO_uart_wdata = wdata[31:0];
  assign MMIO_uart_we = we;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign rdata[31:0] = uart_0_rdata;
  assign ready = uart_0_ready;
  assign rx_1 = rx;
  assign tx = uart_0_tx;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RISCV_COCOTB_uart_0_0 uart_0
       (.addr(MMIO_uart_addr),
        .be(MMIO_uart_be),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(uart_0_rdata),
        .ready(uart_0_ready),
        .rst(proc_sys_reset_0_peripheral_reset),
        .rx(rx_1),
        .tx(uart_0_tx),
        .valid(MMIO_uart_valid),
        .wdata(MMIO_uart_wdata),
        .we(MMIO_uart_we));
endmodule

