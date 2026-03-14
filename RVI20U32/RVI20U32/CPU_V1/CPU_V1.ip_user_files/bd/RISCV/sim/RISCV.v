//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Fri Mar  6 22:24:50 2026
//Host        : xilinx running 64-bit Ubuntu 25.10
//Command     : generate_target RISCV.bd
//Design      : RISCV
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "RISCV,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=RISCV,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=20,numReposBlks=20,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=14,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "RISCV.hwdef" *) 
module RISCV
   ();

  wire [31:0]dist_mem_gen_0_spo;
  wire [31:0]gpio_mmio_0_mem_rdata;
  wire [31:0]mmio_decode_ram_gpio_0_gpio_addr;
  wire mmio_decode_ram_gpio_0_gpio_en;
  wire [31:0]mmio_decode_ram_gpio_0_gpio_wdata;
  wire mmio_decode_ram_gpio_0_gpio_we;
  wire [31:0]mmio_decode_ram_gpio_0_load_data;
  wire [31:0]mmio_decode_ram_gpio_0_ram_addr;
  wire [3:0]mmio_decode_ram_gpio_0_ram_be;
  wire [31:0]mmio_decode_ram_gpio_0_ram_wdata;
  wire mmio_decode_ram_gpio_0_ram_we;
  wire [9:0]pc_to_rom_addr_0_a;
  wire [31:0]pc_unit_0_pc;
  wire [31:0]pc_unit_0_pc_plus4;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [31:0]rv32i_alu_0_Y;
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
  wire rv32i_control_full_0_opB_sel_imm;
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
  wire [31:0]rv32i_imm_mux_0_imm_out;
  wire [31:0]rv32i_opA_mux_0_A;
  wire [31:0]rv32i_opB_mux_0_B;
  wire [31:0]rv32i_pc_redirect_0_pc_redirect_target;
  wire rv32i_pc_redirect_0_pc_redirect_valid;
  wire [31:0]rv32i_ram_datav_0_rdata;
  wire [31:0]rv32i_regfile_0_rs1_rdata;
  wire [31:0]rv32i_regfile_0_rs2_rdata;
  wire [31:0]rv32i_wb_mux_0_rd_wdata;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_3_dout;
  wire [31:0]xlconstant_4_dout;
  wire zynq_ultra_ps_e_1_pl_clk0;
  wire zynq_ultra_ps_e_1_pl_resetn0;

  RISCV_dist_mem_gen_0_0 dist_mem_gen_0
       (.a(pc_to_rom_addr_0_a),
        .spo(dist_mem_gen_0_spo));
  RISCV_gpio_mmio_0_0 gpio_mmio_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .gpio_in(xlconstant_4_dout),
        .mem_addr(mmio_decode_ram_gpio_0_gpio_addr),
        .mem_rdata(gpio_mmio_0_mem_rdata),
        .mem_valid(mmio_decode_ram_gpio_0_gpio_en),
        .mem_wdata(mmio_decode_ram_gpio_0_gpio_wdata),
        .mem_we(mmio_decode_ram_gpio_0_gpio_we),
        .rst(proc_sys_reset_0_peripheral_reset));
  RISCV_mmio_decode_ram_gpio_0_0 mmio_decode_ram_gpio_0
       (.addr(rv32i_alu_0_Y),
        .clk(zynq_ultra_ps_e_1_pl_clk0),
        .gpio_addr(mmio_decode_ram_gpio_0_gpio_addr),
        .gpio_en(mmio_decode_ram_gpio_0_gpio_en),
        .gpio_rdata(gpio_mmio_0_mem_rdata),
        .gpio_wdata(mmio_decode_ram_gpio_0_gpio_wdata),
        .gpio_we(mmio_decode_ram_gpio_0_gpio_we),
        .load_data(mmio_decode_ram_gpio_0_load_data),
        .lsu_size(rv32i_control_full_0_lsu_size),
        .lsu_unsigned(rv32i_control_full_0_lsu_unsigned),
        .mem_re(rv32i_control_full_0_mem_re),
        .mem_we(rv32i_control_full_0_mem_we),
        .ram_addr(mmio_decode_ram_gpio_0_ram_addr),
        .ram_be(mmio_decode_ram_gpio_0_ram_be),
        .ram_rdata(rv32i_ram_datav_0_rdata),
        .ram_wdata(mmio_decode_ram_gpio_0_ram_wdata),
        .ram_we(mmio_decode_ram_gpio_0_ram_we),
        .rst(proc_sys_reset_0_peripheral_reset),
        .store_data(rv32i_regfile_0_rs2_rdata));
  RISCV_pc_to_rom_addr_0_0 pc_to_rom_addr_0
       (.a(pc_to_rom_addr_0_a),
        .pc(pc_unit_0_pc));
  RISCV_pc_unit_0_0 pc_unit_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .pc(pc_unit_0_pc),
        .pc_en(xlconstant_3_dout),
        .pc_plus4(pc_unit_0_pc_plus4),
        .pc_redirect_target(rv32i_pc_redirect_0_pc_redirect_target),
        .pc_redirect_valid(rv32i_pc_redirect_0_pc_redirect_valid),
        .rst(proc_sys_reset_0_peripheral_reset));
  RISCV_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(xlconstant_0_dout),
        .ext_reset_in(zynq_ultra_ps_e_1_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(zynq_ultra_ps_e_1_pl_clk0));
  RISCV_rv32i_alu_0_0 rv32i_alu_0
       (.A(rv32i_opA_mux_0_A),
        .B(rv32i_opB_mux_0_B),
        .Y(rv32i_alu_0_Y),
        .alu_op(rv32i_control_full_0_alu_op));
  RISCV_rv32i_control_full_0_0 rv32i_control_full_0
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
        .opB_sel_imm(rv32i_control_full_0_opB_sel_imm),
        .opcode(rv32i_decoder_0_opcode),
        .rd_we(rv32i_control_full_0_rd_we),
        .wb_sel(rv32i_control_full_0_wb_sel));
  RISCV_rv32i_decoder_0_0 rv32i_decoder_0
       (.bit30(rv32i_decoder_0_bit30),
        .fmt(rv32i_decoder_0_fmt),
        .funct3(rv32i_decoder_0_funct3),
        .funct7(rv32i_decoder_0_funct7),
        .imm_b(rv32i_decoder_0_imm_b),
        .imm_i(rv32i_decoder_0_imm_i),
        .imm_j(rv32i_decoder_0_imm_j),
        .imm_s(rv32i_decoder_0_imm_s),
        .imm_u(rv32i_decoder_0_imm_u),
        .instr(dist_mem_gen_0_spo),
        .opcode(rv32i_decoder_0_opcode),
        .rd(rv32i_decoder_0_rd),
        .rs1(rv32i_decoder_0_rs1),
        .rs2(rv32i_decoder_0_rs2));
  RISCV_rv32i_imm_mux_0_0 rv32i_imm_mux_0
       (.imm_b(rv32i_decoder_0_imm_b),
        .imm_i(rv32i_decoder_0_imm_i),
        .imm_j(rv32i_decoder_0_imm_j),
        .imm_out(rv32i_imm_mux_0_imm_out),
        .imm_s(rv32i_decoder_0_imm_s),
        .imm_sel(rv32i_control_full_0_imm_sel),
        .imm_u(rv32i_decoder_0_imm_u));
  RISCV_rv32i_opA_mux_0_0 rv32i_opA_mux_0
       (.A(rv32i_opA_mux_0_A),
        .opA_sel(rv32i_control_full_0_opA_sel),
        .pc(pc_unit_0_pc),
        .rs1(rv32i_regfile_0_rs1_rdata));
  RISCV_rv32i_opB_mux_0_0 rv32i_opB_mux_0
       (.B(rv32i_opB_mux_0_B),
        .imm(rv32i_imm_mux_0_imm_out),
        .opB_sel_imm(rv32i_control_full_0_opB_sel_imm),
        .rs2(rv32i_regfile_0_rs2_rdata));
  RISCV_rv32i_pc_redirect_0_0 rv32i_pc_redirect_0
       (.branch_en(rv32i_control_full_0_branch_en),
        .branch_f3(rv32i_control_full_0_branch_f3),
        .imm_b(rv32i_decoder_0_imm_b),
        .imm_i(rv32i_decoder_0_imm_i),
        .imm_j(rv32i_decoder_0_imm_j),
        .jal(rv32i_control_full_0_jal),
        .jalr(rv32i_control_full_0_jalr),
        .pc(pc_unit_0_pc),
        .pc_redirect_target(rv32i_pc_redirect_0_pc_redirect_target),
        .pc_redirect_valid(rv32i_pc_redirect_0_pc_redirect_valid),
        .rs1(rv32i_regfile_0_rs1_rdata),
        .rs2(rv32i_regfile_0_rs2_rdata),
        .rst(proc_sys_reset_0_peripheral_reset));
  RISCV_rv32i_ram_datav_0_0 rv32i_ram_datav_0
       (.addr(mmio_decode_ram_gpio_0_ram_addr),
        .be(mmio_decode_ram_gpio_0_ram_be),
        .clk(zynq_ultra_ps_e_1_pl_clk0),
        .rdata(rv32i_ram_datav_0_rdata),
        .wdata(mmio_decode_ram_gpio_0_ram_wdata),
        .we(mmio_decode_ram_gpio_0_ram_we));
  RISCV_rv32i_regfile_0_0 rv32i_regfile_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .rd_addr(rv32i_decoder_0_rd),
        .rd_wdata(rv32i_wb_mux_0_rd_wdata),
        .rd_we(rv32i_control_full_0_rd_we),
        .rs1_addr(rv32i_decoder_0_rs1),
        .rs1_rdata(rv32i_regfile_0_rs1_rdata),
        .rs2_addr(rv32i_decoder_0_rs2),
        .rs2_rdata(rv32i_regfile_0_rs2_rdata));
  RISCV_rv32i_wb_mux_0_0 rv32i_wb_mux_0
       (.alu_y(rv32i_alu_0_Y),
        .imm_u(rv32i_decoder_0_imm_u),
        .load_data(mmio_decode_ram_gpio_0_load_data),
        .pc_plus4(pc_unit_0_pc_plus4),
        .rd_wdata(rv32i_wb_mux_0_rd_wdata),
        .wb_sel(rv32i_control_full_0_wb_sel));
  RISCV_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  RISCV_xlconstant_0_1 xlconstant_3
       (.dout(xlconstant_3_dout));
  RISCV_xlconstant_3_0 xlconstant_4
       (.dout(xlconstant_4_dout));
  RISCV_zynq_ultra_ps_e_0_2 zynq_ultra_ps_e_1
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
