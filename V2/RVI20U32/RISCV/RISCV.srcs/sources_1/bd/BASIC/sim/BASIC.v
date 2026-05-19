//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Tue May 19 00:21:19 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target BASIC.bd
//Design      : BASIC
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BASIC,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BASIC,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=73,numReposBlks=60,numNonXlnxBlks=0,numHierBlks=13,maxHierDepth=3,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=35,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}" *) (* HW_HANDOFF = "BASIC.hwdef" *) 
module BASIC
   (SW1,
    gpio_out_0);
  input [0:0]SW1;
  output [1:0]gpio_out_0;

  wire [4:0]Core_RV32I_Res;
  wire Core_RV32I_ex_illegal_instr;
  wire [31:0]Core_RV32I_ex_instr;
  wire [31:0]Core_RV32I_ex_pc;
  wire Core_RV32I_ex_valid;
  wire [0:0]Core_RV32I_mem_stall_req;
  wire [31:0]Core_RV32I_out_data;
  wire [31:0]Core_RV32I_rd_wdata1;
  wire [4:0]Core_RV32I_wb_rd;
  wire MMIO_ram_valid;
  wire [31:0]RV32I_MEM_dmem_addr;
  wire [3:0]RV32I_MEM_dmem_be;
  wire RV32I_MEM_dmem_re;
  wire [31:0]RV32I_MEM_dmem_wdata;
  wire RV32I_MEM_dmem_we;
  wire [31:0]RV32I_RAM_MEMORY_rdata;
  wire [0:0]SW1_1;
  wire TIMER_timer_irq;
  wire [31:0]addr_1;
  wire [31:0]addr_2;
  wire [31:0]addr_3;
  wire [31:0]addr_4;
  wire [3:0]be_1;
  wire [3:0]be_2;
  wire [3:0]be_3;
  wire [3:0]be_4;
  wire [31:0]csr_access_unit_0_csr_rd_data;
  wire [4:0]csr_regfile_wb_mux_0_final_rd;
  wire [31:0]csr_regfile_wb_mux_0_final_wdata;
  wire csr_regfile_wb_mux_0_final_we;
  wire dmem_ready_1;
  wire [7:0]gpio_0_gpio_out;
  wire [31:0]gpio_0_rdata;
  wire gpio_0_ready;
  wire [31:0]mem_data_1;
  wire [31:0]privileged_pc_redire_0_priv_redirect_target;
  wire privileged_pc_redire_0_priv_redirect_valid;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [0:0]proc_sys_reset_0_peripheral_reset1;
  wire ram_ready_1;
  wire [31:0]timer_0_rdata;
  wire timer_0_ready;
  wire trap_controller_0_trap_flush;
  wire [31:0]uart_tx_0_rdata;
  wire uart_tx_0_ready;
  wire [0:0]util_vector_logic_3_Res;
  wire valid_1;
  wire valid_2;
  wire valid_3;
  wire [0:0]vio_0_probe_out0;
  wire [31:0]wdata_1;
  wire [31:0]wdata_2;
  wire [31:0]wdata_3;
  wire [31:0]wdata_4;
  wire we_1;
  wire we_2;
  wire we_3;
  wire we_4;
  wire [7:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [1:0]xlslice_0_Dout;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign SW1_1 = SW1[0];
  assign gpio_out_0[1:0] = xlslice_0_Dout;
  Core_RV32I_imp_1VYNK5M Core_RV32I
       (.Op2(trap_controller_0_trap_flush),
        .Res(Core_RV32I_Res),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .csr_data(csr_access_unit_0_csr_rd_data),
        .dmem_addr(RV32I_MEM_dmem_addr),
        .dmem_be(RV32I_MEM_dmem_be),
        .dmem_re(RV32I_MEM_dmem_re),
        .dmem_ready(dmem_ready_1),
        .dmem_wdata(RV32I_MEM_dmem_wdata),
        .dmem_we(RV32I_MEM_dmem_we),
        .ex_illegal_instr(Core_RV32I_ex_illegal_instr),
        .ex_instr(Core_RV32I_ex_instr),
        .ex_pc(Core_RV32I_ex_pc),
        .ex_valid(Core_RV32I_ex_valid),
        .mem_data(mem_data_1),
        .mem_stall_req(Core_RV32I_mem_stall_req),
        .out_data(Core_RV32I_out_data),
        .priv_redirect_target(privileged_pc_redire_0_priv_redirect_target),
        .priv_redirect_valid(privileged_pc_redire_0_priv_redirect_valid),
        .rd_addr(csr_regfile_wb_mux_0_final_rd),
        .rd_wdata(csr_regfile_wb_mux_0_final_wdata),
        .rd_wdata1(Core_RV32I_rd_wdata1),
        .rd_we(csr_regfile_wb_mux_0_final_we),
        .rst(proc_sys_reset_0_peripheral_reset),
        .wb_rd(Core_RV32I_wb_rd));
  GPIO_imp_GTDX3I GPIO
       (.addr(addr_2),
        .be(be_2),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .gpio_in_0(xlconcat_0_dout),
        .gpio_out(gpio_0_gpio_out),
        .rdata(gpio_0_rdata),
        .ready(gpio_0_ready),
        .rst(proc_sys_reset_0_peripheral_reset),
        .valid(valid_1),
        .wdata(wdata_2),
        .we(we_2));
  MMIO_imp_LNKWBU MMIO
       (.Op1(RV32I_MEM_dmem_we),
        .Op2(RV32I_MEM_dmem_re),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .cpu_addr(RV32I_MEM_dmem_addr),
        .cpu_be(RV32I_MEM_dmem_be),
        .cpu_wdata(RV32I_MEM_dmem_wdata),
        .gpio_addr1(addr_2),
        .gpio_be1(be_2),
        .gpio_rdata(gpio_0_rdata),
        .gpio_ready(gpio_0_ready),
        .gpio_valid1(valid_1),
        .gpio_wdata1(wdata_2),
        .gpio_we1(we_2),
        .mem_rsp_rdata(mem_data_1),
        .mem_rsp_valid(dmem_ready_1),
        .ram_addr1(addr_1),
        .ram_be1(be_1),
        .ram_rdata(RV32I_RAM_MEMORY_rdata),
        .ram_ready(ram_ready_1),
        .ram_valid(MMIO_ram_valid),
        .ram_wdata1(wdata_1),
        .ram_we1(we_1),
        .rst(proc_sys_reset_0_peripheral_reset),
        .timer_addr1(addr_4),
        .timer_be1(be_4),
        .timer_rdata(timer_0_rdata),
        .timer_ready(timer_0_ready),
        .timer_valid1(valid_3),
        .timer_wdata1(wdata_4),
        .timer_we1(we_4),
        .uart_addr1(addr_3),
        .uart_be1(be_3),
        .uart_rdata(uart_tx_0_rdata),
        .uart_ready1(uart_tx_0_ready),
        .uart_valid1(valid_2),
        .uart_wdata1(wdata_3),
        .uart_we1(we_3));
  PRIVILEGED_imp_TDUXP9 PRIVILEGED
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .csr_rd_data(csr_access_unit_0_csr_rd_data),
        .current_pc(Core_RV32I_ex_pc),
        .final_rd(csr_regfile_wb_mux_0_final_rd),
        .final_wdata(csr_regfile_wb_mux_0_final_wdata),
        .final_we(csr_regfile_wb_mux_0_final_we),
        .illegal_instr(Core_RV32I_ex_illegal_instr),
        .instr(Core_RV32I_ex_instr),
        .instr_valid(Core_RV32I_ex_valid),
        .mem_stall_req(Core_RV32I_mem_stall_req),
        .normal_rd(Core_RV32I_wb_rd),
        .normal_wdata(Core_RV32I_rd_wdata1),
        .normal_we(Core_RV32I_Res[0]),
        .priv_redirect_target(privileged_pc_redire_0_priv_redirect_target),
        .priv_redirect_valid(privileged_pc_redire_0_priv_redirect_valid),
        .rs1_data1(Core_RV32I_out_data),
        .rst(proc_sys_reset_0_peripheral_reset),
        .timer_irq(TIMER_timer_irq),
        .trap_flush(trap_controller_0_trap_flush));
  RV32I_RAM_MEMORY_imp_1A3BT4W RV32I_RAM_MEMORY
       (.addr(addr_1),
        .be(be_1),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(RV32I_RAM_MEMORY_rdata),
        .ready(ram_ready_1),
        .rst(proc_sys_reset_0_peripheral_reset),
        .valid(MMIO_ram_valid),
        .wdata(wdata_1),
        .we(we_1));
  TIMER_imp_1X1AELV TIMER
       (.addr(addr_4),
        .be(be_4),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(timer_0_rdata),
        .ready(timer_0_ready),
        .rst(proc_sys_reset_0_peripheral_reset),
        .timer_irq(TIMER_timer_irq),
        .valid(valid_3),
        .wdata(wdata_4),
        .we(we_4));
  UART_imp_OI5LS UART
       (.addr(addr_3),
        .be(be_3),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(uart_tx_0_rdata),
        .ready(uart_tx_0_ready),
        .rst(proc_sys_reset_0_peripheral_reset),
        .valid(valid_2),
        .wdata(wdata_3),
        .we(we_3));
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
  BASIC_util_vector_logic_2_3 util_vector_logic_3
       (.Op1(SW1_1),
        .Res(util_vector_logic_3_Res));
  BASIC_vio_0_0 vio_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .probe_out0(vio_0_probe_out0));
  BASIC_xlconcat_0_0 xlconcat_0
       (.In0(util_vector_logic_3_Res),
        .In1(xlconstant_1_dout),
        .In2(xlconstant_1_dout),
        .In3(xlconstant_1_dout),
        .In4(xlconstant_1_dout),
        .In5(xlconstant_1_dout),
        .In6(xlconstant_1_dout),
        .In7(xlconstant_1_dout),
        .dout(xlconcat_0_dout));
  BASIC_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  BASIC_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  BASIC_xlslice_0_0 xlslice_0
       (.Din(gpio_0_gpio_out),
        .Dout(xlslice_0_Dout));
  BASIC_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.emio_can0_phy_rx(1'b0),
        .emio_gpio_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .emio_i2c0_scl_i(1'b0),
        .emio_i2c0_sda_i(1'b0),
        .emio_uart1_rxd(1'b0),
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

module Core_RV32I_imp_1VYNK5M
   (Op2,
    Res,
    clk,
    csr_data,
    dmem_addr,
    dmem_be,
    dmem_re,
    dmem_ready,
    dmem_wdata,
    dmem_we,
    ex_illegal_instr,
    ex_instr,
    ex_pc,
    ex_rs1_data,
    ex_valid,
    mem_data,
    mem_stall_req,
    out_data,
    priv_redirect_target,
    priv_redirect_valid,
    rd_addr,
    rd_wdata,
    rd_wdata1,
    rd_we,
    rst,
    wb_rd);
  input [0:0]Op2;
  output [4:0]Res;
  input clk;
  input [31:0]csr_data;
  output [31:0]dmem_addr;
  output [3:0]dmem_be;
  output dmem_re;
  input dmem_ready;
  output [31:0]dmem_wdata;
  output dmem_we;
  output ex_illegal_instr;
  output [31:0]ex_instr;
  output [31:0]ex_pc;
  output [31:0]ex_rs1_data;
  output ex_valid;
  input [31:0]mem_data;
  output [0:0]mem_stall_req;
  output [31:0]out_data;
  input [31:0]priv_redirect_target;
  input priv_redirect_valid;
  input [4:0]rd_addr;
  input [31:0]rd_wdata;
  output [31:0]rd_wdata1;
  input rd_we;
  input rst;
  output [4:0]wb_rd;

  wire [0:0]Op3_1;
  wire [0:0]Op4_1;
  wire RV32I_EX_bp_update_taken;
  wire [31:0]RV32I_EX_bp_update_target;
  wire RV32I_EX_bp_update_valid;
  wire RV32I_EX_ex_flush_req;
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
  wire RV32I_MEM_dmem_re;
  wire [31:0]RV32I_MEM_dmem_wdata;
  wire RV32I_MEM_dmem_we;
  wire RV32I_MEM_mem_rd_we;
  wire [31:0]RV32I_MEM_wb_alu_result;
  wire [31:0]RV32I_MEM_wb_data;
  wire [31:0]RV32I_MEM_wb_imm_u;
  wire [31:0]RV32I_MEM_wb_pc_plus4;
  wire [2:0]RV32I_MEM_wb_sel;
  wire RV32I_MEM_wb_valid;
  wire [3:0]alu_op_1;
  wire bubble_1;
  wire [31:0]csr_data_1;
  wire dmem_ready_1;
  wire ex_branch_en_1;
  wire [2:0]ex_branch_funct3_1;
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
  wire load_use_detection_0_load_use_hazard;
  wire load_use_detection_0_pc_en;
  wire [31:0]mem_stage_0_mem_forward_data;
  wire [4:0]mem_stage_0_mem_out_rd;
  wire mem_stage_0_mem_out_valid;
  wire [0:0]mem_stage_rd_we_1;
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
  wire [4:0]util_vector_logic_0_Res;
  wire [31:0]wb_mux_0_rd_wdata;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Op4_1 = Op2[0];
  assign Res[4:0] = util_vector_logic_0_Res;
  assign csr_data_1 = csr_data[31:0];
  assign dmem_addr[31:0] = RV32I_MEM_dmem_addr;
  assign dmem_be[3:0] = RV32I_MEM_dmem_be;
  assign dmem_re = RV32I_MEM_dmem_re;
  assign dmem_ready_1 = dmem_ready;
  assign dmem_wdata[31:0] = RV32I_MEM_dmem_wdata;
  assign dmem_we = RV32I_MEM_dmem_we;
  assign ex_illegal_instr = RV32I_ID_ex_illegal_instr;
  assign ex_instr[31:0] = RV32I_ID_ex_instr;
  assign ex_pc[31:0] = pc_1;
  assign ex_rs1_data[31:0] = ex_rs1_data_1;
  assign ex_valid = ex_valid_1;
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
  assign wb_rd[4:0] = mem_wb_reg_0_wb_rd;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RV32I_EX_imp_VZHXQ1 RV32I_EX
       (.alu_op(alu_op_1),
        .bp_update_is_control(update_is_control_1),
        .bp_update_taken(RV32I_EX_bp_update_taken),
        .bp_update_target(RV32I_EX_bp_update_target),
        .bp_update_valid(RV32I_EX_bp_update_valid),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .ex_branch_en(ex_branch_en_1),
        .ex_branch_funct3(ex_branch_funct3_1),
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
        .mem_stage_rd_we(mem_stage_rd_we_1),
        .mem_stage_valid(mem_stage_0_mem_out_valid),
        .mem_store_data(ex_mem_reg_1_mem_store_data),
        .mem_valid(ex_mem_reg_1_mem_valid),
        .mem_wb_data(wb_mux_0_rd_wdata),
        .mem_wb_sel(ex_mem_reg_1_mem_wb_sel),
        .op_a_sel(op_a_sel_1),
        .out_data(RV32I_EX_out_data),
        .pc(pc_1),
        .pc_redirect_target(RV32I_EX_pc_redirect_target),
        .pc_redirect_valid(RV32I_EX_pc_redirect_valid),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall(Op3_1),
        .wb_rd(mem_wb_reg_0_wb_rd),
        .wb_rd_we(util_vector_logic_0_Res),
        .wb_valid(RV32I_MEM_wb_valid));
  RV32I_ID_imp_1HJBFQL RV32I_ID
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
        .rd_addr(mem_wb_reg_0_wb_rd),
        .rd_addr1(rd_addr1_1),
        .rd_wdata1(rd_wdata1_1),
        .rd_we1(rd_we1_1),
        .rs1(RV32I_ID_rs1),
        .rs1_used(RV32I_ID_rs1_used),
        .rs2(RV32I_ID_rs2),
        .rs2_used(RV32I_ID_rs2_used),
        .rst(proc_sys_reset_0_peripheral_reset),
        .stall1(Op3_1));
  RV32I_IF_imp_136QK4M RV32I_IF
       (.Op1(mem_stage_0_mem_out_valid),
        .Op2(RV32I_MEM_mem_rd_we),
        .Op3(Op3_1),
        .Op4(Op4_1),
        .Res(mem_stage_rd_we_1),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
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
        .update_is_control(update_is_control_1),
        .update_pc(pc_1),
        .update_taken(RV32I_EX_bp_update_taken),
        .update_target(RV32I_EX_bp_update_target),
        .update_valid1(RV32I_EX_bp_update_valid));
  RV32I_MEM_imp_12Q40FU RV32I_MEM
       (.Res(util_vector_logic_0_Res),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .dmem_addr(RV32I_MEM_dmem_addr),
        .dmem_be(RV32I_MEM_dmem_be),
        .dmem_re(RV32I_MEM_dmem_re),
        .dmem_ready(dmem_ready_1),
        .dmem_wdata(RV32I_MEM_dmem_wdata),
        .dmem_we(RV32I_MEM_dmem_we),
        .mem_data(mmio_0_cpu_rdata),
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
        .mem_rd_we(RV32I_MEM_mem_rd_we),
        .mem_stall_req(Op3_1),
        .mem_valid(mem_stage_0_mem_out_valid),
        .rst(proc_sys_reset_0_peripheral_reset),
        .wb_alu_result(RV32I_MEM_wb_alu_result),
        .wb_data(RV32I_MEM_wb_data),
        .wb_imm_u(RV32I_MEM_wb_imm_u),
        .wb_pc_plus4(RV32I_MEM_wb_pc_plus4),
        .wb_rd(mem_wb_reg_0_wb_rd),
        .wb_sel(RV32I_MEM_wb_sel),
        .wb_valid(RV32I_MEM_wb_valid));
  RV32I_WB_imp_98K1CZ RV32I_WB
       (.alu_y(RV32I_MEM_wb_alu_result),
        .csr_data(csr_data_1),
        .imm_u(RV32I_MEM_wb_imm_u),
        .load_data(RV32I_MEM_wb_data),
        .pc_plus4(RV32I_MEM_wb_pc_plus4),
        .rd_wdata1(wb_mux_0_rd_wdata),
        .wb_sel(RV32I_MEM_wb_sel));
  BASIC_ila_0_0 ila_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .probe0(proc_sys_reset_0_peripheral_reset),
        .probe1(util_vector_logic_0_Res),
        .probe2(mem_wb_reg_0_wb_rd),
        .probe3(wb_mux_0_rd_wdata),
        .probe4(load_use_detection_0_load_use_hazard));
  BASIC_load_use_detection_0_0 load_use_detection_0
       (.id_ex_flush(load_use_detection_0_id_ex_flush),
        .id_ex_mem_re(ex_mem_re_1),
        .id_ex_rd(RV32I_ID_ex_rd),
        .id_ex_valid(ex_valid_1),
        .if_id_hold(load_use_detection_0_if_id_hold),
        .if_id_rs1(RV32I_ID_rs1),
        .if_id_rs1_used(RV32I_ID_rs1_used),
        .if_id_rs2(RV32I_ID_rs2),
        .if_id_rs2_used(RV32I_ID_rs2_used),
        .if_id_valid(RV32I_IF_id_valid_out),
        .load_use_hazard(load_use_detection_0_load_use_hazard),
        .pc_en(load_use_detection_0_pc_en));
  BASIC_priority_branch_OR_l_0_0 priority_branch_OR_l_0
       (.ex_flush_req(RV32I_EX_ex_flush_req),
        .id_ex_flush_final(bubble_1),
        .if_id_flush_final(flush_1),
        .if_id_hold_final(hold_1),
        .load_use_id_ex_flush(load_use_detection_0_id_ex_flush),
        .load_use_if_id_hold(load_use_detection_0_if_id_hold),
        .load_use_pc_en(load_use_detection_0_pc_en),
        .pc_en_final(pc_en_1),
        .priv_redirect_valid(priv_redirect_valid_1));
endmodule

module GPIO_imp_GTDX3I
   (addr,
    be,
    clk,
    gpio_in_0,
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
  input [7:0]gpio_in_0;
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

  assign gpio_in_0_1 = gpio_in_0[7:0];
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
  BASIC_gpio_0_0 gpio_0
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

module MMIO_imp_LNKWBU
   (Op1,
    Op2,
    clk,
    cpu_addr,
    cpu_be,
    cpu_wdata,
    gpio_addr1,
    gpio_be1,
    gpio_rdata,
    gpio_ready,
    gpio_valid1,
    gpio_wdata1,
    gpio_we1,
    mem_rsp_rdata,
    mem_rsp_valid,
    ram_addr1,
    ram_be1,
    ram_rdata,
    ram_ready,
    ram_valid,
    ram_wdata1,
    ram_we1,
    rst,
    timer_addr1,
    timer_be1,
    timer_rdata,
    timer_ready,
    timer_valid1,
    timer_wdata1,
    timer_we1,
    uart_addr1,
    uart_be1,
    uart_rdata,
    uart_ready1,
    uart_valid1,
    uart_wdata1,
    uart_we1);
  input [0:0]Op1;
  input [0:0]Op2;
  input clk;
  input [31:0]cpu_addr;
  input [3:0]cpu_be;
  input [31:0]cpu_wdata;
  output [31:0]gpio_addr1;
  output [3:0]gpio_be1;
  input [31:0]gpio_rdata;
  input gpio_ready;
  output gpio_valid1;
  output [31:0]gpio_wdata1;
  output gpio_we1;
  output [31:0]mem_rsp_rdata;
  output mem_rsp_valid;
  output [31:0]ram_addr1;
  output [3:0]ram_be1;
  input [31:0]ram_rdata;
  input ram_ready;
  output ram_valid;
  output [31:0]ram_wdata1;
  output ram_we1;
  input rst;
  output [31:0]timer_addr1;
  output [3:0]timer_be1;
  input [31:0]timer_rdata;
  input timer_ready;
  output timer_valid1;
  output [31:0]timer_wdata1;
  output timer_we1;
  output [31:0]uart_addr1;
  output [3:0]uart_be1;
  input [31:0]uart_rdata;
  input uart_ready1;
  output uart_valid1;
  output [31:0]uart_wdata1;
  output uart_we1;

  wire [0:0]RV32I_MEM_dmem_re;
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
  wire [31:0]ram_rdata_1;
  wire ram_ready_1;
  wire rst_1;
  wire [31:0]timer_rdata_1;
  wire timer_ready_1;
  wire [31:0]uart_rdata_1;
  wire uart_ready1_1;
  wire [0:0]util_vector_logic_3_Res;

  assign RV32I_MEM_dmem_re = Op2[0];
  assign RV32I_MEM_dmem_we = Op1[0];
  assign clk_1 = clk;
  assign cpu_addr_1 = cpu_addr[31:0];
  assign cpu_be_1 = cpu_be[3:0];
  assign cpu_wdata_1 = cpu_wdata[31:0];
  assign gpio_addr1[31:0] = mem_bus_registered_0_gpio_addr;
  assign gpio_be1[3:0] = mem_bus_registered_0_gpio_be;
  assign gpio_rdata_1 = gpio_rdata[31:0];
  assign gpio_ready_1 = gpio_ready;
  assign gpio_valid1 = mem_bus_registered_0_gpio_valid;
  assign gpio_wdata1[31:0] = mem_bus_registered_0_gpio_wdata;
  assign gpio_we1 = mem_bus_registered_0_gpio_we;
  assign mem_rsp_rdata[31:0] = mem_bus_registered_0_mem_rsp_rdata;
  assign mem_rsp_valid = mem_bus_registered_0_mem_rsp_valid;
  assign ram_addr1[31:0] = mem_bus_registered_0_ram_addr;
  assign ram_be1[3:0] = mem_bus_registered_0_ram_be;
  assign ram_rdata_1 = ram_rdata[31:0];
  assign ram_ready_1 = ram_ready;
  assign ram_valid = mem_bus_registered_0_ram_valid;
  assign ram_wdata1[31:0] = mem_bus_registered_0_ram_wdata;
  assign ram_we1 = mem_bus_registered_0_ram_we;
  assign rst_1 = rst;
  assign timer_addr1[31:0] = mem_bus_registered_0_timer_addr;
  assign timer_be1[3:0] = mem_bus_registered_0_timer_be;
  assign timer_rdata_1 = timer_rdata[31:0];
  assign timer_ready_1 = timer_ready;
  assign timer_valid1 = mem_bus_registered_0_timer_valid;
  assign timer_wdata1[31:0] = mem_bus_registered_0_timer_wdata;
  assign timer_we1 = mem_bus_registered_0_timer_we;
  assign uart_addr1[31:0] = mem_bus_registered_0_uart_addr;
  assign uart_be1[3:0] = mem_bus_registered_0_uart_be;
  assign uart_rdata_1 = uart_rdata[31:0];
  assign uart_ready1_1 = uart_ready1;
  assign uart_valid1 = mem_bus_registered_0_uart_valid;
  assign uart_wdata1[31:0] = mem_bus_registered_0_uart_wdata;
  assign uart_we1 = mem_bus_registered_0_uart_we;
  BASIC_mem_bus_registered_0_0 mem_bus_registered_0
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
        .mem_req_valid(util_vector_logic_3_Res),
        .mem_req_wdata(cpu_wdata_1),
        .mem_req_we(RV32I_MEM_dmem_we),
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
  BASIC_util_vector_logic_2_2 util_vector_logic_3
       (.Op1(RV32I_MEM_dmem_we),
        .Op2(RV32I_MEM_dmem_re),
        .Res(util_vector_logic_3_Res));
endmodule

module PRIVILEGED_imp_TDUXP9
   (clk,
    csr_rd_data,
    current_pc,
    final_rd,
    final_wdata,
    final_we,
    illegal_instr,
    instr,
    instr_valid,
    mem_stall_req,
    normal_rd,
    normal_wdata,
    normal_we,
    priv_redirect_target,
    priv_redirect_valid,
    rs1_data1,
    rst,
    timer_irq,
    trap_flush);
  input clk;
  output [31:0]csr_rd_data;
  input [31:0]current_pc;
  output [4:0]final_rd;
  output [31:0]final_wdata;
  output final_we;
  input illegal_instr;
  input [31:0]instr;
  input instr_valid;
  input mem_stall_req;
  input [4:0]normal_rd;
  input [31:0]normal_wdata;
  input normal_we;
  output [31:0]priv_redirect_target;
  output priv_redirect_valid;
  input [31:0]rs1_data1;
  input rst;
  input timer_irq;
  output trap_flush;

  wire Core_RV32I_Res;
  wire [31:0]Core_RV32I_ex_instr;
  wire [31:0]Core_RV32I_ex_pc;
  wire Core_RV32I_ex_valid;
  wire Core_RV32I_mem_stall_req;
  wire [31:0]Core_RV32I_rd_wdata1;
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
  wire [4:0]csr_regfile_wb_mux_0_final_rd;
  wire [31:0]csr_regfile_wb_mux_0_final_wdata;
  wire csr_regfile_wb_mux_0_final_we;
  wire illegal_instr_1;
  wire [31:0]privileged_pc_redire_0_priv_redirect_target;
  wire privileged_pc_redire_0_priv_redirect_valid;
  wire proc_sys_reset_0_peripheral_reset;
  wire [31:0]rs1_data1_1;
  wire [11:0]system_decoder_0_csr_addr;
  wire [4:0]system_decoder_0_csr_rd;
  wire [4:0]system_decoder_0_csr_rs1;
  wire system_decoder_0_is_csrrc;
  wire system_decoder_0_is_csrrs;
  wire system_decoder_0_is_csrrw;
  wire system_decoder_0_is_ecall;
  wire system_decoder_0_is_mret;
  wire system_decoder_0_is_system;
  wire trap_controller_0_mret_taken;
  wire [31:0]trap_controller_0_mret_target;
  wire trap_controller_0_trap_enter;
  wire trap_controller_0_trap_flush;
  wire [31:0]trap_controller_0_trap_mcause;
  wire [31:0]trap_controller_0_trap_mepc;
  wire [31:0]trap_controller_0_trap_target;
  wire [0:0]util_vector_logic_10_Res;
  wire [0:0]util_vector_logic_11_Res;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Core_RV32I_Res = normal_we;
  assign Core_RV32I_ex_instr = instr[31:0];
  assign Core_RV32I_ex_pc = current_pc[31:0];
  assign Core_RV32I_ex_valid = instr_valid;
  assign Core_RV32I_mem_stall_req = mem_stall_req;
  assign Core_RV32I_rd_wdata1 = normal_wdata[31:0];
  assign Core_RV32I_wb_rd = normal_rd[4:0];
  assign TIMER_timer_irq = timer_irq;
  assign csr_rd_data[31:0] = csr_access_unit_0_csr_rd_data;
  assign final_rd[4:0] = csr_regfile_wb_mux_0_final_rd;
  assign final_wdata[31:0] = csr_regfile_wb_mux_0_final_wdata;
  assign final_we = csr_regfile_wb_mux_0_final_we;
  assign illegal_instr_1 = illegal_instr;
  assign priv_redirect_target[31:0] = privileged_pc_redire_0_priv_redirect_target;
  assign priv_redirect_valid = privileged_pc_redire_0_priv_redirect_valid;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign rs1_data1_1 = rs1_data1[31:0];
  assign trap_flush = trap_controller_0_trap_flush;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  BASIC_csr_access_unit_0_0 csr_access_unit_0
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
        .is_csrrs(system_decoder_0_is_csrrs),
        .is_csrrw(system_decoder_0_is_csrrw),
        .rs1_data(rs1_data1_1));
  BASIC_csr_file_0_0 csr_file_0
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
        .trap_mepc(trap_controller_0_trap_mepc));
  BASIC_csr_regfile_wb_mux_0_0 csr_regfile_wb_mux_0
       (.csr_rd_addr(csr_access_unit_0_csr_rd_addr),
        .csr_rd_data(csr_access_unit_0_csr_rd_data),
        .csr_rd_we(csr_access_unit_0_csr_rd_we),
        .final_rd(csr_regfile_wb_mux_0_final_rd),
        .final_wdata(csr_regfile_wb_mux_0_final_wdata),
        .final_we(csr_regfile_wb_mux_0_final_we),
        .normal_rd(Core_RV32I_wb_rd),
        .normal_wdata(Core_RV32I_rd_wdata1),
        .normal_we(Core_RV32I_Res));
  BASIC_privileged_pc_redire_0_0 privileged_pc_redire_0
       (.mret_taken(trap_controller_0_mret_taken),
        .mret_target(trap_controller_0_mret_target),
        .priv_redirect_target(privileged_pc_redire_0_priv_redirect_target),
        .priv_redirect_valid(privileged_pc_redire_0_priv_redirect_valid),
        .trap_enter(trap_controller_0_trap_enter),
        .trap_target(trap_controller_0_trap_target));
  BASIC_system_decoder_0_0 system_decoder_0
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
  BASIC_trap_controller_0_0 trap_controller_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .csr_mepc(csr_file_0_csr_mepc),
        .csr_mie(csr_file_0_csr_mie),
        .csr_mip(csr_file_0_csr_mip),
        .csr_mstatus(csr_file_0_csr_mstatus),
        .csr_mtvec(csr_file_0_csr_mtvec),
        .current_pc(Core_RV32I_ex_pc),
        .ecall(system_decoder_0_is_ecall),
        .illegal_instr(util_vector_logic_10_Res),
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
        .trap_target(trap_controller_0_trap_target));
  BASIC_util_vector_logic_10_1 util_vector_logic_10
       (.Op1(illegal_instr_1),
        .Op2(util_vector_logic_11_Res),
        .Res(util_vector_logic_10_Res));
  BASIC_util_vector_logic_10_2 util_vector_logic_11
       (.Op1(system_decoder_0_is_system),
        .Res(util_vector_logic_11_Res));
endmodule

module RV32I_EX_imp_VZHXQ1
   (alu_op,
    bp_update_is_control,
    bp_update_taken,
    bp_update_target,
    bp_update_valid,
    branch_taken,
    clk,
    ex_actual_next_pc,
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
    ex_pred_next_pc,
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
  output [0:0]branch_taken;
  input clk;
  output [31:0]ex_actual_next_pc;
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
  input [31:0]ex_pred_next_pc;
  input [4:0]ex_rd;
  input ex_rd_we;
  input [4:0]ex_rs1;
  input [31:0]ex_rs1_data;
  input [4:0]ex_rs2;
  input [31:0]ex_rs2_data;
  input ex_valid;
  input [2:0]ex_wb_sel;
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
  output [2:0]mem_wb_sel;
  input [1:0]op_a_sel;
  output [31:0]out_data;
  input [31:0]pc;
  output [31:0]pc_redirect_target;
  output pc_redirect_valid;
  input rst;
  input stall;
  input [4:0]wb_rd;
  input [4:0]wb_rd_we;
  input wb_valid;

  wire Net;
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
  wire [4:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire util_vector_logic_2_Res;
  wire [31:0]wb_mux_0_rd_wdata;
  wire wb_valid_1;
  wire [0:0]xlconstant_3_dout;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Net = ex_valid;
  assign bp_update_is_control = branch_0_bp_update_is_control;
  assign bp_update_taken = branch_0_bp_update_taken;
  assign bp_update_target[31:0] = branch_0_bp_update_target;
  assign bp_update_valid = branch_0_bp_update_valid;
  assign ex_actual_next_pc[31:0] = branch_0_ex_actual_next_pc;
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
  assign mem_wb_sel[2:0] = ex_mem_reg_1_mem_wb_sel;
  assign out_data[31:0] = forward_mux_0_out_data;
  assign pc_redirect_target[31:0] = branch_0_pc_redirect_target;
  assign pc_redirect_valid = branch_0_pc_redirect_valid;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign stall_1 = stall;
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
        .flush(xlconstant_3_dout),
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
        .stall(stall_1));
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
  BASIC_xlconstant_3_3 xlconstant_3
       (.dout(xlconstant_3_dout));
endmodule

module RV32I_ID_imp_1HJBFQL
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
    rd_addr1,
    rd_wdata1,
    rd_we1,
    rs1,
    rs1_used,
    rs2,
    rs2_used,
    rst,
    stall1);
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
  input [4:0]rd_addr1;
  input [31:0]rd_wdata1;
  input rd_we1;
  output [4:0]rs1;
  output rs1_used;
  output [4:0]rs2;
  output rs2_used;
  input rst;
  input stall1;

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
  assign rd_addr1_1 = rd_addr1[4:0];
  assign rd_wdata1_1 = rd_wdata1[31:0];
  assign rd_we1_1 = rd_we1;
  assign rs1[4:0] = decoder_0_rs1;
  assign rs1_used = decoder_0_rs1_used;
  assign rs2[4:0] = decoder_0_rs2;
  assign rs2_used = decoder_0_rs2_used;
  assign stall1_1 = stall1;
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
  BASIC_id_ex_reg_0_1 id_ex_reg_1
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
        .id_mem_unsigned(control_0_mem_sign_ext),
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
        .rd_addr(rd_addr1_1),
        .rd_wdata(rd_wdata1_1),
        .rd_we(rd_we1_1),
        .rs1_addr(decoder_0_rs1),
        .rs1_rdata(regfile_0_rs1_rdata),
        .rs2_addr(decoder_0_rs2),
        .rs2_rdata(regfile_0_rs2_rdata));
endmodule

module RV32I_IF_imp_136QK4M
   (Op1,
    Op2,
    Op3,
    Op4,
    Res,
    clk,
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
    update_is_control,
    update_pc,
    update_taken,
    update_target,
    update_valid1);
  input [0:0]Op1;
  input [0:0]Op2;
  input [0:0]Op3;
  input [0:0]Op4;
  output [0:0]Res;
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
  input update_is_control;
  input [31:0]update_pc;
  input update_taken;
  input [31:0]update_target;
  input update_valid1;

  wire [0:0]Op3_1;
  wire [0:0]Op4_1;
  wire [31:0]RV32I_ROM_MEMORY_douta;
  wire [31:0]branch_0_pc_redirect_target;
  wire [31:0]branch_predictor_btb_0_pred_next_pc;
  wire branch_predictor_btb_0_pred_taken;
  wire branch_predictor_btb_0_pred_valid;
  wire flush_1;
  wire hold_1;
  wire [31:0]if_id_reg_0_id_instr_out;
  wire [31:0]if_id_reg_0_id_pc4_out;
  wire [31:0]if_id_reg_0_id_pc_out;
  wire [31:0]if_id_reg_0_id_pred_next_pc_out;
  wire if_id_reg_0_id_valid_out;
  wire [0:0]mem_stage_0_mem_out_rd_we;
  wire [0:0]mem_stage_0_mem_out_valid;
  wire pc_en_1;
  wire pc_redirect_valid_1;
  wire [10:0]pc_to_imem_addr_0_addr;
  wire [31:0]pc_unit_0_pc;
  wire [31:0]pc_unit_0_pc_plus4;
  wire [31:0]priv_redirect_target_1;
  wire priv_redirect_valid_1;
  wire proc_sys_reset_0_peripheral_reset;
  wire update_is_control_1;
  wire [31:0]update_pc_1;
  wire update_taken_1;
  wire [31:0]update_target_1;
  wire update_valid1_1;
  wire [0:0]util_vector_logic_10_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [0:0]util_vector_logic_9_Res;
  wire [0:0]xlconstant_3_dout;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign Op3_1 = Op3[0];
  assign Op4_1 = Op4[0];
  assign Res[0] = util_vector_logic_2_Res;
  assign branch_0_pc_redirect_target = pc_redirect_target[31:0];
  assign flush_1 = flush;
  assign hold_1 = hold;
  assign id_instr_out[31:0] = if_id_reg_0_id_instr_out;
  assign id_pc4_out[31:0] = if_id_reg_0_id_pc4_out;
  assign id_pc_out[31:0] = if_id_reg_0_id_pc_out;
  assign id_pred_next_pc_out[31:0] = if_id_reg_0_id_pred_next_pc_out;
  assign id_valid_out = if_id_reg_0_id_valid_out;
  assign mem_stage_0_mem_out_rd_we = Op2[0];
  assign mem_stage_0_mem_out_valid = Op1[0];
  assign pc_en_1 = pc_en;
  assign pc_redirect_valid_1 = pc_redirect_valid;
  assign priv_redirect_target_1 = priv_redirect_target[31:0];
  assign priv_redirect_valid_1 = priv_redirect_valid;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign update_is_control_1 = update_is_control;
  assign update_pc_1 = update_pc[31:0];
  assign update_taken_1 = update_taken;
  assign update_target_1 = update_target[31:0];
  assign update_valid1_1 = update_valid1;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  RV32I_ROM_MEMORY_imp_X8L5SE RV32I_ROM_MEMORY
       (.addra(pc_to_imem_addr_0_addr),
        .clka(zynq_ultra_ps_e_0_pl_clk0),
        .douta(RV32I_ROM_MEMORY_douta),
        .ena(util_vector_logic_3_Res));
  BASIC_branch_predictor_btb_0_0 branch_predictor_btb_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .if_pc(pc_unit_0_pc),
        .pred_next_pc(branch_predictor_btb_0_pred_next_pc),
        .pred_taken(branch_predictor_btb_0_pred_taken),
        .pred_valid(branch_predictor_btb_0_pred_valid),
        .rst(proc_sys_reset_0_peripheral_reset),
        .update_is_control(update_is_control_1),
        .update_pc(update_pc_1),
        .update_taken(update_taken_1),
        .update_target(update_target_1),
        .update_valid(update_valid1_1));
  BASIC_if_id_reg_0_0 if_id_reg_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .flush(util_vector_logic_10_Res),
        .hold(util_vector_logic_7_Res),
        .id_instr_out(if_id_reg_0_id_instr_out),
        .id_pc4_out(if_id_reg_0_id_pc4_out),
        .id_pc_out(if_id_reg_0_id_pc_out),
        .id_pred_next_pc_out(if_id_reg_0_id_pred_next_pc_out),
        .id_valid_out(if_id_reg_0_id_valid_out),
        .if_instr_in(RV32I_ROM_MEMORY_douta),
        .if_pc4_in(pc_unit_0_pc_plus4),
        .if_pc_in(pc_unit_0_pc),
        .if_pred_next_pc_in(branch_predictor_btb_0_pred_next_pc),
        .if_valid_in(xlconstant_3_dout),
        .rst(proc_sys_reset_0_peripheral_reset));
  BASIC_pc_to_imem_addr_0_0 pc_to_imem_addr_0
       (.addr(pc_to_imem_addr_0_addr),
        .pc(pc_unit_0_pc));
  BASIC_pc_unit_0_0 pc_unit_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .pc(pc_unit_0_pc),
        .pc_en(util_vector_logic_8_Res),
        .pc_plus4(pc_unit_0_pc_plus4),
        .pc_predict_next(branch_predictor_btb_0_pred_next_pc),
        .pc_predict_valid(util_vector_logic_6_Res),
        .pc_redirect_target(branch_0_pc_redirect_target),
        .pc_redirect_valid(pc_redirect_valid_1),
        .priv_redirect_target(priv_redirect_target_1),
        .priv_redirect_valid(priv_redirect_valid_1),
        .rst(proc_sys_reset_0_peripheral_reset));
  BASIC_util_vector_logic_7_0 util_vector_logic_10
       (.Op1(flush_1),
        .Op2(Op4_1),
        .Res(util_vector_logic_10_Res));
  BASIC_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(mem_stage_0_mem_out_valid),
        .Op2(mem_stage_0_mem_out_rd_we),
        .Res(util_vector_logic_2_Res));
  BASIC_util_vector_logic_2_1 util_vector_logic_3
       (.Op1(util_vector_logic_7_Res),
        .Res(util_vector_logic_3_Res));
  BASIC_util_vector_logic_3_0 util_vector_logic_6
       (.Op1(branch_predictor_btb_0_pred_valid),
        .Op2(branch_predictor_btb_0_pred_taken),
        .Res(util_vector_logic_6_Res));
  BASIC_util_vector_logic_6_0 util_vector_logic_7
       (.Op1(hold_1),
        .Op2(Op3_1),
        .Res(util_vector_logic_7_Res));
  BASIC_util_vector_logic_6_1 util_vector_logic_8
       (.Op1(pc_en_1),
        .Op2(util_vector_logic_9_Res),
        .Res(util_vector_logic_8_Res));
  BASIC_util_vector_logic_8_0 util_vector_logic_9
       (.Op1(Op3_1),
        .Res(util_vector_logic_9_Res));
  BASIC_xlconstant_2_0 xlconstant_3
       (.dout(xlconstant_3_dout));
endmodule

module RV32I_MEM_imp_12Q40FU
   (Res,
    clk,
    dmem_addr,
    dmem_be,
    dmem_re,
    dmem_ready,
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
    mem_stall_req,
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
  output dmem_re;
  input dmem_ready;
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
  input [2:0]mem_in_wb_sel;
  output [4:0]mem_rd;
  output mem_rd_we;
  output [0:0]mem_stall_req;
  output mem_valid;
  input rst;
  output [31:0]wb_alu_result;
  output [31:0]wb_data;
  output [31:0]wb_imm_u;
  output [31:0]wb_pc_plus4;
  output [4:0]wb_rd;
  output [2:0]wb_sel;
  output wb_valid;

  wire dmem_ready_1;
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
  wire [31:0]mem_data_1;
  wire mem_in_mem_we_1;
  wire [31:0]mem_stage_0_dmem_addr;
  wire [3:0]mem_stage_0_dmem_be;
  wire mem_stage_0_dmem_re;
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
  wire [2:0]mem_stage_0_mem_out_wb_sel;
  wire mem_stage_0_mem_stall_req;
  wire [31:0]mem_wb_reg_0_wb_alu_result;
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

  assign Res[0] = regfile_we_gen_0_regfile_we;
  assign dmem_addr[31:0] = mem_stage_0_dmem_addr;
  assign dmem_be[3:0] = mem_stage_0_dmem_be;
  assign dmem_re = mem_stage_0_dmem_re;
  assign dmem_ready_1 = dmem_ready;
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
  assign mem_data_1 = mem_data[31:0];
  assign mem_forward_data[31:0] = mem_stage_0_mem_forward_data;
  assign mem_in_mem_we_1 = mem_in_mem_we;
  assign mem_rd[4:0] = mem_stage_0_mem_out_rd;
  assign mem_rd_we = mem_stage_0_mem_out_rd_we;
  assign mem_stall_req[0] = mem_stage_0_mem_stall_req;
  assign mem_valid = mem_stage_0_mem_out_valid;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign wb_alu_result[31:0] = mem_wb_reg_0_wb_alu_result;
  assign wb_data[31:0] = mem_wb_reg_0_wb_data;
  assign wb_imm_u[31:0] = mem_wb_reg_0_wb_imm_u;
  assign wb_pc_plus4[31:0] = mem_wb_reg_0_wb_pc_plus4;
  assign wb_rd[4:0] = mem_wb_reg_0_wb_rd;
  assign wb_sel[2:0] = mem_wb_reg_0_wb_sel;
  assign wb_valid = mem_wb_reg_0_wb_valid;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  BASIC_mem_stage_0_0 mem_stage_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .dmem_addr(mem_stage_0_dmem_addr),
        .dmem_be(mem_stage_0_dmem_be),
        .dmem_rdata(mem_data_1),
        .dmem_re(mem_stage_0_dmem_re),
        .dmem_ready(dmem_ready_1),
        .dmem_wdata(mem_stage_0_dmem_wdata),
        .dmem_we(mem_stage_0_dmem_we),
        .kill(xlconstant_3_dout),
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
  BASIC_mem_wb_reg_0_0 mem_wb_reg_0
       (.clk(zynq_ultra_ps_e_0_pl_clk0),
        .flush(xlconstant_3_dout),
        .mem_alu_result(mem_stage_0_mem_out_alu_result),
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
  BASIC_ram_data_1_0 ram_data_1
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

module RV32I_ROM_MEMORY_imp_X8L5SE
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

module RV32I_WB_imp_98K1CZ
   (alu_y,
    csr_data,
    imm_u,
    load_data,
    pc_plus4,
    rd_wdata1,
    wb_sel);
  input [31:0]alu_y;
  input [31:0]csr_data;
  input [31:0]imm_u;
  input [31:0]load_data;
  input [31:0]pc_plus4;
  output [31:0]rd_wdata1;
  input [2:0]wb_sel;

  wire [31:0]alu_y_1;
  wire [31:0]csr_data_1;
  wire [31:0]imm_u_1;
  wire [31:0]load_data_1;
  wire [31:0]pc_plus4_1;
  wire [31:0]wb_mux_0_rd_wdata;
  wire [2:0]wb_sel_1;

  assign alu_y_1 = alu_y[31:0];
  assign csr_data_1 = csr_data[31:0];
  assign imm_u_1 = imm_u[31:0];
  assign load_data_1 = load_data[31:0];
  assign pc_plus4_1 = pc_plus4[31:0];
  assign rd_wdata1[31:0] = wb_mux_0_rd_wdata;
  assign wb_sel_1 = wb_sel[2:0];
  BASIC_wb_mux_0_0 wb_mux_0
       (.alu_y(alu_y_1),
        .csr_data(csr_data_1),
        .imm_u(imm_u_1),
        .load_data(load_data_1),
        .pc_plus4(pc_plus4_1),
        .rd_wdata(wb_mux_0_rd_wdata),
        .wb_sel(wb_sel_1));
endmodule

module TIMER_imp_1X1AELV
   (addr,
    be,
    clk,
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
  wire [31:0]timer_0_rdata;
  wire timer_0_ready;
  wire timer_0_timer_irq;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign MMIO_timer_addr = addr[31:0];
  assign MMIO_timer_be = be[3:0];
  assign MMIO_timer_valid = valid;
  assign MMIO_timer_wdata = wdata[31:0];
  assign MMIO_timer_we = we;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign rdata[31:0] = timer_0_rdata;
  assign ready = timer_0_ready;
  assign timer_irq = timer_0_timer_irq;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  BASIC_timer_0_0 timer_0
       (.addr(MMIO_timer_addr),
        .be(MMIO_timer_be),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(timer_0_rdata),
        .ready(timer_0_ready),
        .rst(proc_sys_reset_0_peripheral_reset),
        .timer_irq(timer_0_timer_irq),
        .valid(MMIO_timer_valid),
        .wdata(MMIO_timer_wdata),
        .we(MMIO_timer_we));
endmodule

module UART_imp_OI5LS
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

  wire [31:0]MMIO_uart_addr;
  wire [3:0]MMIO_uart_be;
  wire MMIO_uart_valid;
  wire [31:0]MMIO_uart_wdata;
  wire MMIO_uart_we;
  wire proc_sys_reset_0_peripheral_reset;
  wire [31:0]uart_tx_0_rdata;
  wire uart_tx_0_ready;
  wire uart_tx_0_tx;
  wire zynq_ultra_ps_e_0_pl_clk0;

  assign MMIO_uart_addr = addr[31:0];
  assign MMIO_uart_be = be[3:0];
  assign MMIO_uart_valid = valid;
  assign MMIO_uart_wdata = wdata[31:0];
  assign MMIO_uart_we = we;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign rdata[31:0] = uart_tx_0_rdata;
  assign ready = uart_tx_0_ready;
  assign zynq_ultra_ps_e_0_pl_clk0 = clk;
  BASIC_uart_tx_0_0 uart_tx_0
       (.addr(MMIO_uart_addr),
        .be(MMIO_uart_be),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .rdata(uart_tx_0_rdata),
        .ready(uart_tx_0_ready),
        .rst(proc_sys_reset_0_peripheral_reset),
        .rx(uart_tx_0_tx),
        .tx(uart_tx_0_tx),
        .valid(MMIO_uart_valid),
        .wdata(MMIO_uart_wdata),
        .we(MMIO_uart_we));
endmodule
