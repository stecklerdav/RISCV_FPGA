//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Tue May 26 21:55:21 2026
//Host        : xilinx running 64-bit Ubuntu 25.10
//Command     : generate_target BASIC.bd
//Design      : BASIC
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BASIC,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BASIC,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=53,numReposBlks=53,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=53,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}" *) (* HW_HANDOFF = "BASIC.hwdef" *) 
module BASIC
   (SW1,
    clk,
    gpio_out_0,
    rst);
  input [0:0]SW1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN BASIC_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  output [1:0]gpio_out_0;
  input rst;

  wire [3:0]Core_RV32I_ex_exception_cause;
  wire [31:0]Core_RV32I_ex_exception_tval;
  wire Core_RV32I_ex_exception_valid;
  wire Core_RV32I_ex_illegal_instr;
  wire [31:0]Core_RV32I_ex_instr;
  wire [31:0]Core_RV32I_ex_pc;
  wire Core_RV32I_ex_valid;
  wire [3:0]Core_RV32I_mem_exception_cause;
  wire [31:0]Core_RV32I_mem_exception_tval;
  wire Core_RV32I_mem_exception_valid;
  wire [3:0]Core_RV32I_mem_fault_cause;
  wire [31:0]Core_RV32I_mem_fault_tval;
  wire Core_RV32I_mem_fault_valid;
  wire [31:0]Core_RV32I_mem_pc;
  wire Core_RV32I_mem_stall_req;
  wire [31:0]Core_RV32I_out_data;
  wire [31:0]Core_RV32I_rd_wdata1;
  wire Core_RV32I_regfile_we;
  wire [31:0]Core_RV32I_wb_csr_rd_data;
  wire Core_RV32I_wb_csr_rd_we;
  wire [4:0]Core_RV32I_wb_rd;
  wire MMIO_mem_rsp_error;
  wire MMIO_ram_valid;
  wire [31:0]PRIVILEGED_csr_rd_data1;
  wire PRIVILEGED_csr_rd_we;
  wire RV32I_EX_bp_update_taken;
  wire [31:0]RV32I_EX_bp_update_target;
  wire RV32I_EX_bp_update_valid;
  wire RV32I_EX_ex_flush_req;
  wire [31:0]RV32I_EX_mem_csr_rd_data;
  wire RV32I_EX_mem_csr_rd_we;
  wire [31:0]RV32I_EX_pc_redirect_target;
  wire RV32I_EX_pc_redirect_valid;
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
  wire [31:0]RV32I_MEM_dmem_wdata;
  wire RV32I_MEM_dmem_we;
  wire RV32I_MEM_mem_rd_we;
  wire [31:0]RV32I_MEM_wb_alu_result;
  wire [31:0]RV32I_MEM_wb_data;
  wire [31:0]RV32I_MEM_wb_imm_u;
  wire [31:0]RV32I_MEM_wb_pc_plus4;
  wire [2:0]RV32I_MEM_wb_sel;
  wire RV32I_MEM_wb_valid;
  wire [31:0]RV32I_RAM_MEMORY_rdata;
  wire [31:0]addr_1;
  wire [31:0]addr_2;
  wire [31:0]addr_3;
  wire [31:0]addr_4;
  wire [31:0]alu_0_y;
  wire [3:0]alu_op_1;
  wire [3:0]be_1;
  wire [3:0]be_2;
  wire [3:0]be_3;
  wire [3:0]be_4;
  wire [31:0]branch_predictor_btb_0_pred_next_pc;
  wire branch_predictor_btb_0_pred_taken;
  wire branch_predictor_btb_0_pred_valid;
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
  wire [2:0]control_0_wb_sel;
  wire [31:0]csr_access_unit_0_csr_wdata;
  wire csr_access_unit_0_csr_we;
  wire [31:0]csr_file_0_csr_mepc;
  wire [31:0]csr_file_0_csr_mie;
  wire [31:0]csr_file_0_csr_mip;
  wire [31:0]csr_file_0_csr_mstatus;
  wire [31:0]csr_file_0_csr_mtvec;
  wire [31:0]csr_file_0_csr_rdata;
  wire [4:0]csr_rd_addr1_1;
  wire [4:0]csr_regfile_wb_mux_0_final_rd;
  wire [31:0]csr_regfile_wb_mux_0_final_wdata;
  wire csr_regfile_wb_mux_0_final_we;
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
  wire dmem_ready_1;
  wire dmem_req_ready_1;
  wire ex_branch_en_1;
  wire [2:0]ex_branch_funct3_1;
  wire [4:0]ex_csr_rd_addr_1;
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
  wire [2:0]ex_wb_sel_1;
  wire [3:0]exception_mux_0_exception_cause;
  wire [31:0]exception_mux_0_exception_pc;
  wire [31:0]exception_mux_0_exception_tval;
  wire exception_mux_0_exception_valid;
  wire flush_1;
  wire [31:0]forward_mux_1_out_data;
  wire [31:0]forward_mux_2_out_data;
  wire [1:0]forwarding_0_forward_a;
  wire [1:0]forwarding_0_forward_b;
  wire [1:0]forwarding_0_forward_store;
  wire [7:0]gpio_0_gpio_out;
  wire [31:0]gpio_0_rdata;
  wire gpio_0_ready;
  wire hold_1;
  wire [31:0]imm_mux_0_imm_out;
  wire load_use_detection_0_id_ex_flush;
  wire load_use_detection_0_if_id_hold;
  wire load_use_detection_0_pc_en;
  wire [4:0]mem_csr_rd_addr_1;
  wire [31:0]mem_data_1;
  wire [3:0]mem_exception_merge_0_final_mem_exception_cause;
  wire [31:0]mem_exception_merge_0_final_mem_exception_pc;
  wire [31:0]mem_exception_merge_0_final_mem_exception_tval;
  wire mem_exception_merge_0_final_mem_exception_valid;
  wire mem_req_valid_1;
  wire [31:0]mem_stage_0_mem_forward_data;
  wire [31:0]mem_stage_0_mem_out_alu_result;
  wire [31:0]mem_stage_0_mem_out_data;
  wire [31:0]mem_stage_0_mem_out_imm_u;
  wire [31:0]mem_stage_0_mem_out_pc_plus4;
  wire [4:0]mem_stage_0_mem_out_rd;
  wire mem_stage_0_mem_out_valid;
  wire [2:0]mem_stage_0_mem_out_wb_sel;
  wire mem_wb_reg_0_wb_rd_we;
  wire [1:0]op_a_sel_1;
  wire [31:0]operand_a_mux_0_operand_a;
  wire [31:0]operand_b_mux_0_operand_b;
  wire pc_en_1;
  wire [10:0]pc_to_imem_addr_0_addr;
  wire [31:0]pc_unit_0_pc;
  wire [31:0]pc_unit_0_pc_plus4;
  wire [31:0]privileged_pc_redire_0_priv_redirect_target;
  wire privileged_pc_redire_0_priv_redirect_valid;
  wire proc_sys_reset_0_peripheral_reset;
  wire ram_ready_1;
  wire [31:0]regfile_0_rs1_rdata;
  wire [31:0]regfile_0_rs2_rdata;
  wire [31:0]rom_memory_0_dout;
  wire [0:0]sim_constant_0_dout;
  wire [0:0]sim_constant_2_dout;
  wire [11:0]system_decoder_0_csr_addr;
  wire [4:0]system_decoder_0_csr_rd;
  wire [4:0]system_decoder_0_csr_rs1;
  wire system_decoder_0_is_csrrc;
  wire system_decoder_0_is_csrrs;
  wire system_decoder_0_is_csrrw;
  wire system_decoder_0_is_ecall;
  wire system_decoder_0_is_mret;
  wire system_decoder_0_is_system;
  wire [31:0]timer_0_rdata;
  wire timer_0_ready;
  wire timer_error_1;
  wire timer_irq_1;
  wire trap_controller_0_mret_taken;
  wire [31:0]trap_controller_0_mret_target;
  wire trap_controller_0_trap_enter;
  wire trap_controller_0_trap_flush;
  wire [31:0]trap_controller_0_trap_mcause;
  wire [31:0]trap_controller_0_trap_mepc;
  wire [31:0]trap_controller_0_trap_mtval;
  wire [31:0]trap_controller_0_trap_target;
  wire [31:0]uart_tx_0_rdata;
  wire uart_tx_0_ready;
  wire uart_tx_0_tx;
  wire update_is_control_1;
  wire [0:0]util_vector_and_0_Res;
  wire [0:0]util_vector_and_0_Res_1;
  wire [0:0]util_vector_and_0_Res_2;
  wire [0:0]util_vector_and_1_Res;
  wire [0:0]util_vector_and_1_Res_1;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_not_0_Res;
  wire [0:0]util_vector_not_0_Res_1;
  wire [0:0]util_vector_not_1_Res;
  wire [0:0]util_vector_or_0_Res;
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
  wire [0:0]xlconstant_3_dout;
  wire [1:0]xlslice_2bit_0_Dout;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign gpio_out_0[1:0] = xlslice_2bit_0_Dout;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign xlconstant_1_dout = SW1[0];
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  alu alu_0
       (.a(operand_a_mux_0_operand_a),
        .alu_op(alu_op_1),
        .b(operand_b_mux_0_operand_b),
        .y(alu_0_y));
  branch branch_0
       (.bp_update_is_control(update_is_control_1),
        .bp_update_taken(RV32I_EX_bp_update_taken),
        .bp_update_target(RV32I_EX_bp_update_target),
        .bp_update_valid(RV32I_EX_bp_update_valid),
        .ex_branch_en(ex_branch_en_1),
        .ex_branch_funct3(ex_branch_funct3_1),
        .ex_exception_cause(Core_RV32I_ex_exception_cause),
        .ex_exception_tval(Core_RV32I_ex_exception_tval),
        .ex_exception_valid(Core_RV32I_ex_exception_valid),
        .ex_flush_req(RV32I_EX_ex_flush_req),
        .ex_imm(ex_imm_1),
        .ex_jal(ex_jal_1),
        .ex_jalr(ex_jalr_1),
        .ex_pc(Core_RV32I_ex_pc),
        .ex_pred_next_pc(RV32I_ID_ex_pred_next_pc),
        .ex_rs1_data(Core_RV32I_out_data),
        .ex_rs2_data(forward_mux_1_out_data),
        .ex_valid(Core_RV32I_ex_valid),
        .pc_redirect_target(RV32I_EX_pc_redirect_target),
        .pc_redirect_valid(RV32I_EX_pc_redirect_valid));
  branch_predictor_btb_bht branch_predictor_btb_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .if_pc(pc_unit_0_pc),
        .pred_next_pc(branch_predictor_btb_0_pred_next_pc),
        .pred_taken(branch_predictor_btb_0_pred_taken),
        .pred_valid(branch_predictor_btb_0_pred_valid),
        .rst(proc_sys_reset_0_peripheral_reset),
        .update_is_control(update_is_control_1),
        .update_pc(Core_RV32I_ex_pc),
        .update_taken(RV32I_EX_bp_update_taken),
        .update_target(RV32I_EX_bp_update_target),
        .update_valid(RV32I_EX_bp_update_valid));
  control control_0
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
  csr_access_unit csr_access_unit_0
       (.csr_rd(system_decoder_0_csr_rd),
        .csr_rd_addr(ex_csr_rd_addr_1),
        .csr_rd_data(PRIVILEGED_csr_rd_data1),
        .csr_rd_we(PRIVILEGED_csr_rd_we),
        .csr_rdata(csr_file_0_csr_rdata),
        .csr_rs1(system_decoder_0_csr_rs1),
        .csr_wdata(csr_access_unit_0_csr_wdata),
        .csr_we(csr_access_unit_0_csr_we),
        .ex_valid(Core_RV32I_ex_valid),
        .is_csrrc(system_decoder_0_is_csrrc),
        .is_csrrs(system_decoder_0_is_csrrs),
        .is_csrrw(system_decoder_0_is_csrrw),
        .rs1_data(Core_RV32I_out_data));
  csr_file csr_file_0
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
        .timer_irq(timer_irq_1),
        .trap_enter(trap_controller_0_trap_enter),
        .trap_mcause(trap_controller_0_trap_mcause),
        .trap_mepc(trap_controller_0_trap_mepc),
        .trap_mtval(trap_controller_0_trap_mtval));
  csr_regfile_wb_mux csr_regfile_wb_mux_0
       (.csr_rd_addr(csr_rd_addr1_1),
        .csr_rd_data(Core_RV32I_wb_csr_rd_data),
        .csr_rd_we(Core_RV32I_wb_csr_rd_we),
        .final_rd(csr_regfile_wb_mux_0_final_rd),
        .final_wdata(csr_regfile_wb_mux_0_final_wdata),
        .final_we(csr_regfile_wb_mux_0_final_we),
        .normal_rd(Core_RV32I_wb_rd),
        .normal_wdata(Core_RV32I_rd_wdata1),
        .normal_we(Core_RV32I_regfile_we));
  decoder decoder_0
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
        .instr(RV32I_IF_id_instr_out),
        .opcode(decoder_0_opcode),
        .rd(decoder_0_rd),
        .rs1(RV32I_ID_rs1),
        .rs1_used(RV32I_ID_rs1_used),
        .rs2(RV32I_ID_rs2),
        .rs2_used(RV32I_ID_rs2_used));
  ex_mem_reg ex_mem_reg
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .ex_alu_result(alu_0_y),
        .ex_csr_rd_addr(ex_csr_rd_addr_1),
        .ex_csr_rd_data(PRIVILEGED_csr_rd_data1),
        .ex_csr_rd_we(PRIVILEGED_csr_rd_we),
        .ex_exception_cause(Core_RV32I_ex_exception_cause),
        .ex_exception_tval(Core_RV32I_ex_exception_tval),
        .ex_exception_valid(Core_RV32I_ex_exception_valid),
        .ex_imm_u(ex_imm_u_1),
        .ex_mem_re(ex_mem_re_1),
        .ex_mem_size(ex_mem_size_1),
        .ex_mem_unsigned(ex_mem_unsigned_1),
        .ex_mem_we(ex_mem_we_1),
        .ex_pc(Core_RV32I_ex_pc),
        .ex_pc_plus4(ex_pc_plus4_1),
        .ex_rd(RV32I_ID_ex_rd),
        .ex_rd_we(ex_rd_we_1),
        .ex_store_data(forward_mux_2_out_data),
        .ex_valid(Core_RV32I_ex_valid),
        .ex_wb_sel(ex_wb_sel_1),
        .flush(sim_constant_0_dout),
        .mem_alu_result(ex_mem_reg_1_mem_alu_result),
        .mem_csr_rd_addr(mem_csr_rd_addr_1),
        .mem_csr_rd_data(RV32I_EX_mem_csr_rd_data),
        .mem_csr_rd_we(RV32I_EX_mem_csr_rd_we),
        .mem_exception_cause(Core_RV32I_mem_exception_cause),
        .mem_exception_tval(Core_RV32I_mem_exception_tval),
        .mem_exception_valid(Core_RV32I_mem_exception_valid),
        .mem_imm_u(ex_mem_reg_1_mem_imm_u),
        .mem_mem_re(ex_mem_reg_1_mem_mem_re),
        .mem_mem_size(ex_mem_reg_1_mem_mem_size),
        .mem_mem_unsigned(ex_mem_reg_1_mem_mem_unsigned),
        .mem_mem_we(ex_mem_reg_1_mem_mem_we),
        .mem_pc(Core_RV32I_mem_pc),
        .mem_pc_plus4(ex_mem_reg_1_mem_pc_plus4),
        .mem_rd(ex_mem_reg_1_mem_rd),
        .mem_rd_we(ex_mem_reg_1_mem_rd_we),
        .mem_store_data(ex_mem_reg_1_mem_store_data),
        .mem_valid(ex_mem_reg_1_mem_valid),
        .mem_wb_sel(ex_mem_reg_1_mem_wb_sel),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(Core_RV32I_mem_stall_req));
  exception_mux exception_mux_0
       (.ex_exception_cause(Core_RV32I_ex_exception_cause),
        .ex_exception_pc(Core_RV32I_ex_pc),
        .ex_exception_tval(Core_RV32I_ex_exception_tval),
        .ex_exception_valid(Core_RV32I_ex_exception_valid),
        .exception_cause(exception_mux_0_exception_cause),
        .exception_pc(exception_mux_0_exception_pc),
        .exception_tval(exception_mux_0_exception_tval),
        .exception_valid(exception_mux_0_exception_valid),
        .mem_exception_cause(mem_exception_merge_0_final_mem_exception_cause),
        .mem_exception_pc(mem_exception_merge_0_final_mem_exception_pc),
        .mem_exception_tval(mem_exception_merge_0_final_mem_exception_tval),
        .mem_exception_valid(mem_exception_merge_0_final_mem_exception_valid));
  forward_mux forward_mux_0
       (.base_data(ex_rs1_data_1),
        .ex_mem_data(ex_mem_reg_1_mem_alu_result),
        .forward_sel(forwarding_0_forward_a),
        .mem_stage_data(mem_stage_0_mem_forward_data),
        .mem_wb_data(Core_RV32I_rd_wdata1),
        .out_data(Core_RV32I_out_data));
  forward_mux forward_mux_1
       (.base_data(ex_rs2_data_1),
        .ex_mem_data(ex_mem_reg_1_mem_alu_result),
        .forward_sel(forwarding_0_forward_b),
        .mem_stage_data(mem_stage_0_mem_forward_data),
        .mem_wb_data(Core_RV32I_rd_wdata1),
        .out_data(forward_mux_1_out_data));
  forward_mux forward_mux_2
       (.base_data(ex_rs2_data_1),
        .ex_mem_data(ex_mem_reg_1_mem_alu_result),
        .forward_sel(forwarding_0_forward_store),
        .mem_stage_data(mem_stage_0_mem_forward_data),
        .mem_wb_data(Core_RV32I_rd_wdata1),
        .out_data(forward_mux_2_out_data));
  forwarding forwarding_0
       (.ex_op_b_sel(ex_op_b_sel_1),
        .ex_rs1(ex_rs1_1),
        .ex_rs2(ex_rs2_1),
        .forward_a(forwarding_0_forward_a),
        .forward_b(forwarding_0_forward_b),
        .forward_store(forwarding_0_forward_store),
        .mem_is_load(ex_mem_reg_1_mem_mem_re),
        .mem_rd(ex_mem_reg_1_mem_rd),
        .mem_rd_we(util_vector_and_0_Res_2),
        .mem_stage_rd(mem_stage_0_mem_out_rd),
        .mem_stage_rd_we(util_vector_and_1_Res),
        .mem_stage_valid(mem_stage_0_mem_out_valid),
        .mem_valid(ex_mem_reg_1_mem_valid),
        .wb_rd(Core_RV32I_wb_rd),
        .wb_rd_we(Core_RV32I_regfile_we),
        .wb_valid(RV32I_MEM_wb_valid));
  gpio gpio_0
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
  id_ex_reg id_ex_reg
       (.bubble(bubble_1),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .ex_alu_op(alu_op_1),
        .ex_branch_en(ex_branch_en_1),
        .ex_branch_funct3(ex_branch_funct3_1),
        .ex_illegal_instr(Core_RV32I_ex_illegal_instr),
        .ex_imm(ex_imm_1),
        .ex_imm_u(ex_imm_u_1),
        .ex_instr(Core_RV32I_ex_instr),
        .ex_jal(ex_jal_1),
        .ex_jalr(ex_jalr_1),
        .ex_mem_re(ex_mem_re_1),
        .ex_mem_size(ex_mem_size_1),
        .ex_mem_unsigned(ex_mem_unsigned_1),
        .ex_mem_we(ex_mem_we_1),
        .ex_op_a_sel(op_a_sel_1),
        .ex_op_b_sel(ex_op_b_sel_1),
        .ex_pc(Core_RV32I_ex_pc),
        .ex_pc_plus4(ex_pc_plus4_1),
        .ex_pred_next_pc(RV32I_ID_ex_pred_next_pc),
        .ex_rd(RV32I_ID_ex_rd),
        .ex_rd_we(ex_rd_we_1),
        .ex_rs1(ex_rs1_1),
        .ex_rs1_data(ex_rs1_data_1),
        .ex_rs2(ex_rs2_1),
        .ex_rs2_data(ex_rs2_data_1),
        .ex_valid(Core_RV32I_ex_valid),
        .ex_wb_sel(ex_wb_sel_1),
        .id_alu_op(control_0_alu_op),
        .id_branch_en(control_0_branch_en),
        .id_branch_funct3(control_0_branch_funct3),
        .id_illegal_instr(decoder_0_illegal_opcode),
        .id_imm(imm_mux_0_imm_out),
        .id_imm_u(decoder_0_imm_u),
        .id_instr(RV32I_IF_id_instr_out),
        .id_jal(control_0_jal),
        .id_jalr(control_0_jalr),
        .id_mem_re(control_0_mem_re),
        .id_mem_size(control_0_mem_size),
        .id_mem_unsigned(control_0_mem_sign_ext),
        .id_mem_we(control_0_mem_we),
        .id_op_a_sel(control_0_op_a_sel),
        .id_op_b_sel(control_0_op_b_sel),
        .id_pc(RV32I_IF_id_pc_out),
        .id_pc_plus4(RV32I_IF_id_pc4_out),
        .id_pred_next_pc(RV32I_IF_id_pred_next_pc_out),
        .id_rd(decoder_0_rd),
        .id_rd_we(control_0_rd_we),
        .id_rs1(RV32I_ID_rs1),
        .id_rs1_data(regfile_0_rs1_rdata),
        .id_rs2(RV32I_ID_rs2),
        .id_rs2_data(regfile_0_rs2_rdata),
        .id_valid(RV32I_IF_id_valid_out),
        .id_wb_sel(control_0_wb_sel),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(Core_RV32I_mem_stall_req));
  if_id_reg if_id_reg_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .flush(util_vector_or_0_Res),
        .hold(util_vector_logic_7_Res),
        .id_instr_out(RV32I_IF_id_instr_out),
        .id_pc4_out(RV32I_IF_id_pc4_out),
        .id_pc_out(RV32I_IF_id_pc_out),
        .id_pred_next_pc_out(RV32I_IF_id_pred_next_pc_out),
        .id_valid_out(RV32I_IF_id_valid_out),
        .if_instr_in(rom_memory_0_dout),
        .if_pc4_in(pc_unit_0_pc_plus4),
        .if_pc_in(pc_unit_0_pc),
        .if_pred_next_pc_in(branch_predictor_btb_0_pred_next_pc),
        .if_valid_in(sim_constant_2_dout),
        .rst(proc_sys_reset_0_peripheral_reset));
  imm_mux imm_mux_0
       (.imm_b(decoder_0_imm_b),
        .imm_i(decoder_0_imm_i),
        .imm_j(decoder_0_imm_j),
        .imm_out(imm_mux_0_imm_out),
        .imm_s(decoder_0_imm_s),
        .imm_sel(control_0_imm_sel),
        .imm_u(decoder_0_imm_u));
  load_use_detection load_use_detection_0
       (.id_ex_flush(load_use_detection_0_id_ex_flush),
        .id_ex_mem_re(ex_mem_re_1),
        .id_ex_rd(RV32I_ID_ex_rd),
        .id_ex_valid(Core_RV32I_ex_valid),
        .if_id_hold(load_use_detection_0_if_id_hold),
        .if_id_rs1(RV32I_ID_rs1),
        .if_id_rs1_used(RV32I_ID_rs1_used),
        .if_id_rs2(RV32I_ID_rs2),
        .if_id_rs2_used(RV32I_ID_rs2_used),
        .if_id_valid(RV32I_IF_id_valid_out),
        .pc_en(load_use_detection_0_pc_en));
  mem_bus_registered mem_bus_registered_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .gpio_addr(addr_2),
        .gpio_be(be_2),
        .gpio_rdata(gpio_0_rdata),
        .gpio_ready(gpio_0_ready),
        .gpio_valid(valid_1),
        .gpio_wdata(wdata_2),
        .gpio_we(we_2),
        .mem_req_addr(RV32I_MEM_dmem_addr),
        .mem_req_be(RV32I_MEM_dmem_be),
        .mem_req_ready(dmem_req_ready_1),
        .mem_req_valid(mem_req_valid_1),
        .mem_req_wdata(RV32I_MEM_dmem_wdata),
        .mem_req_we(RV32I_MEM_dmem_we),
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
  mem_exception_merge mem_exception_merge_0
       (.final_mem_exception_cause(mem_exception_merge_0_final_mem_exception_cause),
        .final_mem_exception_pc(mem_exception_merge_0_final_mem_exception_pc),
        .final_mem_exception_tval(mem_exception_merge_0_final_mem_exception_tval),
        .final_mem_exception_valid(mem_exception_merge_0_final_mem_exception_valid),
        .mem_exception_cause(Core_RV32I_mem_exception_cause),
        .mem_exception_pc(Core_RV32I_mem_pc),
        .mem_exception_tval(Core_RV32I_mem_exception_tval),
        .mem_exception_valid(Core_RV32I_mem_exception_valid),
        .mem_fault_cause(Core_RV32I_mem_fault_cause),
        .mem_fault_tval(Core_RV32I_mem_fault_tval),
        .mem_fault_valid(Core_RV32I_mem_fault_valid));
  mem_stage mem_stage_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .dmem_addr(RV32I_MEM_dmem_addr),
        .dmem_be(RV32I_MEM_dmem_be),
        .dmem_error(MMIO_mem_rsp_error),
        .dmem_rdata(mem_data_1),
        .dmem_ready(dmem_ready_1),
        .dmem_req_ready(dmem_req_ready_1),
        .dmem_valid(mem_req_valid_1),
        .dmem_wdata(RV32I_MEM_dmem_wdata),
        .dmem_we(RV32I_MEM_dmem_we),
        .kill(xlconstant_3_dout),
        .mem_fault_cause(Core_RV32I_mem_fault_cause),
        .mem_fault_tval(Core_RV32I_mem_fault_tval),
        .mem_fault_valid(Core_RV32I_mem_fault_valid),
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
        .mem_out_rd_we(RV32I_MEM_mem_rd_we),
        .mem_out_valid(mem_stage_0_mem_out_valid),
        .mem_out_wb_sel(mem_stage_0_mem_out_wb_sel),
        .mem_stall_req(Core_RV32I_mem_stall_req),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(xlconstant_3_dout));
  mem_wb_reg mem_wb_reg_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .flush(xlconstant_3_dout),
        .mem_alu_result(mem_stage_0_mem_out_alu_result),
        .mem_csr_rd_addr(mem_csr_rd_addr_1),
        .mem_csr_rd_data(RV32I_EX_mem_csr_rd_data),
        .mem_csr_rd_we(RV32I_EX_mem_csr_rd_we),
        .mem_data(mem_stage_0_mem_out_data),
        .mem_imm_u(mem_stage_0_mem_out_imm_u),
        .mem_pc_plus4(mem_stage_0_mem_out_pc_plus4),
        .mem_rd(mem_stage_0_mem_out_rd),
        .mem_rd_we(RV32I_MEM_mem_rd_we),
        .mem_valid(mem_stage_0_mem_out_valid),
        .mem_wb_sel(mem_stage_0_mem_out_wb_sel),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(Core_RV32I_mem_stall_req),
        .wb_alu_result(RV32I_MEM_wb_alu_result),
        .wb_csr_rd_addr(csr_rd_addr1_1),
        .wb_csr_rd_data(Core_RV32I_wb_csr_rd_data),
        .wb_csr_rd_we(Core_RV32I_wb_csr_rd_we),
        .wb_data(RV32I_MEM_wb_data),
        .wb_imm_u(RV32I_MEM_wb_imm_u),
        .wb_pc_plus4(RV32I_MEM_wb_pc_plus4),
        .wb_rd(Core_RV32I_wb_rd),
        .wb_rd_we(mem_wb_reg_0_wb_rd_we),
        .wb_sel(RV32I_MEM_wb_sel),
        .wb_valid(RV32I_MEM_wb_valid));
  operand_a_mux operand_a_mux_0
       (.op_a_sel(op_a_sel_1),
        .operand_a(operand_a_mux_0_operand_a),
        .pc(Core_RV32I_ex_pc),
        .rs1_data(Core_RV32I_out_data));
  operand_b_mux operand_b_mux_0
       (.imm(ex_imm_1),
        .op_b_sel(ex_op_b_sel_1),
        .operand_b(operand_b_mux_0_operand_b),
        .rs2_data(forward_mux_1_out_data));
  pc_to_imem_addr pc_to_imem_addr_0
       (.addr(pc_to_imem_addr_0_addr),
        .pc(pc_unit_0_pc));
  pc_unit pc_unit_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .pc(pc_unit_0_pc),
        .pc_en(util_vector_and_1_Res_1),
        .pc_plus4(pc_unit_0_pc_plus4),
        .pc_predict_next(branch_predictor_btb_0_pred_next_pc),
        .pc_predict_valid(util_vector_and_0_Res_1),
        .pc_redirect_target(RV32I_EX_pc_redirect_target),
        .pc_redirect_valid(RV32I_EX_pc_redirect_valid),
        .priv_redirect_target(privileged_pc_redire_0_priv_redirect_target),
        .priv_redirect_valid(privileged_pc_redire_0_priv_redirect_valid),
        .rst(proc_sys_reset_0_peripheral_reset));
  priority_branch_OR_load_use priority_branch_OR_l_0
       (.ex_flush_req(RV32I_EX_ex_flush_req),
        .id_ex_flush_final(bubble_1),
        .if_id_flush_final(flush_1),
        .if_id_hold_final(hold_1),
        .load_use_id_ex_flush(load_use_detection_0_id_ex_flush),
        .load_use_if_id_hold(load_use_detection_0_if_id_hold),
        .load_use_pc_en(load_use_detection_0_pc_en),
        .mem_stall_req(Core_RV32I_mem_stall_req),
        .pc_en_final(pc_en_1),
        .priv_redirect_valid(privileged_pc_redire_0_priv_redirect_valid));
  privileged_pc_redirect_mux privileged_pc_redire_0
       (.mret_taken(trap_controller_0_mret_taken),
        .mret_target(trap_controller_0_mret_target),
        .priv_redirect_target(privileged_pc_redire_0_priv_redirect_target),
        .priv_redirect_valid(privileged_pc_redire_0_priv_redirect_valid),
        .trap_enter(trap_controller_0_trap_enter),
        .trap_target(trap_controller_0_trap_target));
  ram_data ram_data_1
       (.addr(addr_1),
        .be(be_1),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(RV32I_RAM_MEMORY_rdata),
        .ready(ram_ready_1),
        .rst(proc_sys_reset_0_peripheral_reset),
        .valid(MMIO_ram_valid),
        .wdata(wdata_1),
        .we(we_1));
  regfile regfile_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .rd_addr(csr_regfile_wb_mux_0_final_rd),
        .rd_wdata(csr_regfile_wb_mux_0_final_wdata),
        .rd_we(csr_regfile_wb_mux_0_final_we),
        .rs1_addr(RV32I_ID_rs1),
        .rs1_rdata(regfile_0_rs1_rdata),
        .rs2_addr(RV32I_ID_rs2),
        .rs2_rdata(regfile_0_rs2_rdata));
  regfile_we_gen regfile_we_gen_0
       (.regfile_we(Core_RV32I_regfile_we),
        .wb_rd(Core_RV32I_wb_rd),
        .wb_rd_we(mem_wb_reg_0_wb_rd_we),
        .wb_valid(RV32I_MEM_wb_valid));
  rom_memory rom_memory_0
       (.addr(pc_to_imem_addr_0_addr),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .dout(rom_memory_0_dout),
        .en(util_vector_not_1_Res));
  sim_constant sim_constant_0
       (.dout(xlconstant_3_dout));
  sim_constant sim_constant_1
       (.dout(sim_constant_0_dout));
  sim_constant sim_constant_2
       (.dout(sim_constant_2_dout));
  system_decoder system_decoder_0
       (.csr_addr(system_decoder_0_csr_addr),
        .csr_rd(system_decoder_0_csr_rd),
        .csr_rs1(system_decoder_0_csr_rs1),
        .instr(Core_RV32I_ex_instr),
        .is_csrrc(system_decoder_0_is_csrrc),
        .is_csrrs(system_decoder_0_is_csrrs),
        .is_csrrw(system_decoder_0_is_csrrw),
        .is_ecall(system_decoder_0_is_ecall),
        .is_mret(system_decoder_0_is_mret),
        .is_system(system_decoder_0_is_system));
  timer timer_0
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
  trap_controller trap_controller_0
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
        .timer_irq(timer_irq_1),
        .trap_enter(trap_controller_0_trap_enter),
        .trap_flush(trap_controller_0_trap_flush),
        .trap_mcause(trap_controller_0_trap_mcause),
        .trap_mepc(trap_controller_0_trap_mepc),
        .trap_mtval(trap_controller_0_trap_mtval),
        .trap_target(trap_controller_0_trap_target));
  uart_tx uart_tx_0
       (.addr(addr_3),
        .be(be_3),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(uart_tx_0_rdata),
        .ready(uart_tx_0_ready),
        .rst(proc_sys_reset_0_peripheral_reset),
        .rx(uart_tx_0_tx),
        .tx(uart_tx_0_tx),
        .valid(valid_2),
        .wdata(wdata_3),
        .we(we_3));
  util_vector_and util_vector_and_0
       (.Op1(Core_RV32I_ex_illegal_instr),
        .Op2(util_vector_not_0_Res),
        .Res(util_vector_and_0_Res));
  util_vector_and util_vector_and_1
       (.Op1(mem_stage_0_mem_out_valid),
        .Op2(RV32I_MEM_mem_rd_we),
        .Res(util_vector_and_1_Res));
  util_vector_and util_vector_and_2
       (.Op1(branch_predictor_btb_0_pred_valid),
        .Op2(branch_predictor_btb_0_pred_taken),
        .Res(util_vector_and_0_Res_1));
  util_vector_and util_vector_and_3
       (.Op1(pc_en_1),
        .Op2(util_vector_not_0_Res_1),
        .Res(util_vector_and_1_Res_1));
  util_vector_and util_vector_and_4
       (.Op1(ex_mem_reg_1_mem_valid),
        .Op2(ex_mem_reg_1_mem_rd_we),
        .Res(util_vector_and_0_Res_2));
  util_vector_not util_vector_not_0
       (.Op1(system_decoder_0_is_system),
        .Res(util_vector_not_0_Res));
  util_vector_not util_vector_not_1
       (.Op1(util_vector_logic_7_Res),
        .Res(util_vector_not_1_Res));
  util_vector_not util_vector_not_2
       (.Op1(Core_RV32I_mem_stall_req),
        .Res(util_vector_not_0_Res_1));
  util_vector_or util_vector_or_0
       (.Op1(flush_1),
        .Op2(trap_controller_0_trap_flush),
        .Res(util_vector_or_0_Res));
  util_vector_or util_vector_or_1
       (.Op1(Core_RV32I_mem_stall_req),
        .Op2(hold_1),
        .Res(util_vector_logic_7_Res));
  wb_mux wb_mux_0
       (.alu_y(RV32I_MEM_wb_alu_result),
        .imm_u(RV32I_MEM_wb_imm_u),
        .load_data(RV32I_MEM_wb_data),
        .pc_plus4(RV32I_MEM_wb_pc_plus4),
        .rd_wdata(Core_RV32I_rd_wdata1),
        .wb_sel(RV32I_MEM_wb_sel));
  xlconcat_8 xlconcat_8_0
       (.dout(xlconcat_8_0_dout),
        .in0(xlconstant_1_dout),
        .in1(xlconstant_1_dout),
        .in2(xlconstant_1_dout),
        .in3(xlconstant_1_dout),
        .in4(xlconstant_1_dout),
        .in5(xlconstant_1_dout),
        .in6(xlconstant_1_dout),
        .in7(xlconstant_1_dout));
  xlslice_2bit xlslice_2bit_0
       (.Din(gpio_0_gpio_out),
        .Dout(xlslice_2bit_0_Dout));
endmodule