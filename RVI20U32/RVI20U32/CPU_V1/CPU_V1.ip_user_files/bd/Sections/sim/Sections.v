//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sat Feb 28 21:05:55 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target Sections.bd
//Design      : Sections
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RV32I_EX_imp_E13WTS
   (Y,
    alu_op,
    imm_b,
    imm_i,
    imm_j,
    imm_s,
    imm_sel,
    imm_u,
    opA_sel,
    opB_sel_imm,
    pc,
    rs1,
    rs2);
  output [31:0]Y;
  input [3:0]alu_op;
  input [31:0]imm_b;
  input [31:0]imm_i;
  input [31:0]imm_j;
  input [31:0]imm_s;
  input [2:0]imm_sel;
  input [31:0]imm_u;
  input [1:0]opA_sel;
  input opB_sel_imm;
  input [31:0]pc;
  input [31:0]rs1;
  input [31:0]rs2;

  wire [31:0]pc_unit_0_pc;
  wire [31:0]rv32i_alu_0_Y;
  wire [3:0]rv32i_control_full_0_alu_op;
  wire [2:0]rv32i_control_full_0_imm_sel;
  wire [1:0]rv32i_control_full_0_opA_sel;
  wire rv32i_control_full_0_opB_sel_imm;
  wire [31:0]rv32i_decoder_0_imm_b;
  wire [31:0]rv32i_decoder_0_imm_i;
  wire [31:0]rv32i_decoder_0_imm_j;
  wire [31:0]rv32i_decoder_0_imm_s;
  wire [31:0]rv32i_decoder_0_imm_u;
  wire [31:0]rv32i_imm_mux_0_imm_out;
  wire [31:0]rv32i_opA_mux_0_A;
  wire [31:0]rv32i_opB_mux_0_B;
  wire [31:0]rv32i_regfile_0_rs1_rdata;
  wire [31:0]rv32i_regfile_0_rs2_rdata;

  assign Y[31:0] = rv32i_alu_0_Y;
  assign pc_unit_0_pc = pc[31:0];
  assign rv32i_control_full_0_alu_op = alu_op[3:0];
  assign rv32i_control_full_0_imm_sel = imm_sel[2:0];
  assign rv32i_control_full_0_opA_sel = opA_sel[1:0];
  assign rv32i_control_full_0_opB_sel_imm = opB_sel_imm;
  assign rv32i_decoder_0_imm_b = imm_b[31:0];
  assign rv32i_decoder_0_imm_i = imm_i[31:0];
  assign rv32i_decoder_0_imm_j = imm_j[31:0];
  assign rv32i_decoder_0_imm_s = imm_s[31:0];
  assign rv32i_decoder_0_imm_u = imm_u[31:0];
  assign rv32i_regfile_0_rs1_rdata = rs1[31:0];
  assign rv32i_regfile_0_rs2_rdata = rs2[31:0];
  Sections_rv32i_alu_0_0 rv32i_alu_0
       (.A(rv32i_opA_mux_0_A),
        .B(rv32i_opB_mux_0_B),
        .Y(rv32i_alu_0_Y),
        .alu_op(rv32i_control_full_0_alu_op));
  Sections_rv32i_imm_mux_0_0 rv32i_imm_mux_0
       (.imm_b(rv32i_decoder_0_imm_b),
        .imm_i(rv32i_decoder_0_imm_i),
        .imm_j(rv32i_decoder_0_imm_j),
        .imm_out(rv32i_imm_mux_0_imm_out),
        .imm_s(rv32i_decoder_0_imm_s),
        .imm_sel(rv32i_control_full_0_imm_sel),
        .imm_u(rv32i_decoder_0_imm_u));
  Sections_rv32i_opA_mux_0_0 rv32i_opA_mux_0
       (.A(rv32i_opA_mux_0_A),
        .opA_sel(rv32i_control_full_0_opA_sel),
        .pc(pc_unit_0_pc),
        .rs1(rv32i_regfile_0_rs1_rdata));
  Sections_rv32i_opB_mux_0_0 rv32i_opB_mux_0
       (.B(rv32i_opB_mux_0_B),
        .imm(rv32i_imm_mux_0_imm_out),
        .opB_sel_imm(rv32i_control_full_0_opB_sel_imm),
        .rs2(rv32i_regfile_0_rs2_rdata));
endmodule

module RV32I_ID_imp_RADHJV
   (alu_op,
    branch_en,
    branch_f3,
    clk,
    imm_b,
    imm_i,
    imm_j,
    imm_s,
    imm_sel,
    imm_u,
    instr,
    jal,
    jalr,
    lsu_size,
    lsu_unsigned,
    mem_re,
    mem_we,
    opA_sel,
    opB_sel_imm,
    rd_wdata,
    rs1_rdata,
    rs2_rdata,
    wb_sel);
  output [3:0]alu_op;
  output branch_en;
  output [2:0]branch_f3;
  input clk;
  output [31:0]imm_b;
  output [31:0]imm_i;
  output [31:0]imm_j;
  output [31:0]imm_s;
  output [2:0]imm_sel;
  output [31:0]imm_u;
  input [31:0]instr;
  output jal;
  output jalr;
  output [1:0]lsu_size;
  output lsu_unsigned;
  output mem_re;
  output mem_we;
  output [1:0]opA_sel;
  output opB_sel_imm;
  input [31:0]rd_wdata;
  output [31:0]rs1_rdata;
  output [31:0]rs2_rdata;
  output [1:0]wb_sel;

  wire [31:0]dist_mem_gen_0_spo;
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
  wire [31:0]rv32i_regfile_0_rs1_rdata;
  wire [31:0]rv32i_regfile_0_rs2_rdata;
  wire [31:0]rv32i_wb_mux_0_rd_wdata;
  wire zynq_ultra_ps_e_1_pl_clk0;

  assign alu_op[3:0] = rv32i_control_full_0_alu_op;
  assign branch_en = rv32i_control_full_0_branch_en;
  assign branch_f3[2:0] = rv32i_control_full_0_branch_f3;
  assign dist_mem_gen_0_spo = instr[31:0];
  assign imm_b[31:0] = rv32i_decoder_0_imm_b;
  assign imm_i[31:0] = rv32i_decoder_0_imm_i;
  assign imm_j[31:0] = rv32i_decoder_0_imm_j;
  assign imm_s[31:0] = rv32i_decoder_0_imm_s;
  assign imm_sel[2:0] = rv32i_control_full_0_imm_sel;
  assign imm_u[31:0] = rv32i_decoder_0_imm_u;
  assign jal = rv32i_control_full_0_jal;
  assign jalr = rv32i_control_full_0_jalr;
  assign lsu_size[1:0] = rv32i_control_full_0_lsu_size;
  assign lsu_unsigned = rv32i_control_full_0_lsu_unsigned;
  assign mem_re = rv32i_control_full_0_mem_re;
  assign mem_we = rv32i_control_full_0_mem_we;
  assign opA_sel[1:0] = rv32i_control_full_0_opA_sel;
  assign opB_sel_imm = rv32i_control_full_0_opB_sel_imm;
  assign rs1_rdata[31:0] = rv32i_regfile_0_rs1_rdata;
  assign rs2_rdata[31:0] = rv32i_regfile_0_rs2_rdata;
  assign rv32i_wb_mux_0_rd_wdata = rd_wdata[31:0];
  assign wb_sel[1:0] = rv32i_control_full_0_wb_sel;
  assign zynq_ultra_ps_e_1_pl_clk0 = clk;
  Sections_rv32i_control_full_0_0 rv32i_control_full_0
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
  Sections_rv32i_decoder_0_0 rv32i_decoder_0
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
  Sections_rv32i_regfile_0_0 rv32i_regfile_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .rd_addr(rv32i_decoder_0_rd),
        .rd_wdata(rv32i_wb_mux_0_rd_wdata),
        .rd_we(rv32i_control_full_0_rd_we),
        .rs1_addr(rv32i_decoder_0_rs1),
        .rs1_rdata(rv32i_regfile_0_rs1_rdata),
        .rs2_addr(rv32i_decoder_0_rs2),
        .rs2_rdata(rv32i_regfile_0_rs2_rdata));
endmodule

module RV32I_MEM_imp_1NNR2R3
   (addr,
    clk,
    fault_access,
    gpio_addr,
    gpio_dir,
    gpio_en,
    gpio_out,
    gpio_wdata,
    gpio_we,
    load_data,
    lsu_size,
    lsu_unsigned,
    mem_re,
    mem_ready,
    mem_we,
    ram_be,
    ram_en,
    ram_we,
    rdata,
    rst,
    store_data);
  input [31:0]addr;
  input clk;
  output fault_access;
  output [31:0]gpio_addr;
  output [31:0]gpio_dir;
  output gpio_en;
  output [31:0]gpio_out;
  output [31:0]gpio_wdata;
  output gpio_we;
  output [31:0]load_data;
  input [1:0]lsu_size;
  input lsu_unsigned;
  input mem_re;
  output mem_ready;
  input mem_we;
  output [3:0]ram_be;
  output ram_en;
  output ram_we;
  output [31:0]rdata;
  input rst;
  input [31:0]store_data;

  wire [31:0]gpio_mmio_0_gpio_dir;
  wire [31:0]gpio_mmio_0_gpio_out;
  wire [31:0]gpio_mmio_0_mem_rdata;
  wire gpio_mmio_0_mem_ready;
  wire mmio_decode_ram_gpio_0_fault_access;
  wire [31:0]mmio_decode_ram_gpio_0_gpio_addr;
  wire mmio_decode_ram_gpio_0_gpio_en;
  wire [31:0]mmio_decode_ram_gpio_0_gpio_wdata;
  wire mmio_decode_ram_gpio_0_gpio_we;
  wire [31:0]mmio_decode_ram_gpio_0_load_data;
  wire [31:0]mmio_decode_ram_gpio_0_ram_addr;
  wire [3:0]mmio_decode_ram_gpio_0_ram_be;
  wire mmio_decode_ram_gpio_0_ram_en;
  wire [31:0]mmio_decode_ram_gpio_0_ram_wdata;
  wire mmio_decode_ram_gpio_0_ram_we;
  wire proc_sys_reset_0_peripheral_reset;
  wire [31:0]rv32i_alu_0_Y;
  wire [1:0]rv32i_control_full_0_lsu_size;
  wire rv32i_control_full_0_lsu_unsigned;
  wire rv32i_control_full_0_mem_re;
  wire rv32i_control_full_0_mem_we;
  wire [31:0]rv32i_ram_datav_0_rdata;
  wire [31:0]rv32i_regfile_0_rs2_rdata;
  wire [31:0]xlconstant_1_dout;
  wire zynq_ultra_ps_e_1_pl_clk0;

  assign fault_access = mmio_decode_ram_gpio_0_fault_access;
  assign gpio_addr[31:0] = mmio_decode_ram_gpio_0_gpio_addr;
  assign gpio_dir[31:0] = gpio_mmio_0_gpio_dir;
  assign gpio_en = mmio_decode_ram_gpio_0_gpio_en;
  assign gpio_out[31:0] = gpio_mmio_0_gpio_out;
  assign gpio_wdata[31:0] = mmio_decode_ram_gpio_0_gpio_wdata;
  assign gpio_we = mmio_decode_ram_gpio_0_gpio_we;
  assign load_data[31:0] = mmio_decode_ram_gpio_0_load_data;
  assign mem_ready = gpio_mmio_0_mem_ready;
  assign proc_sys_reset_0_peripheral_reset = rst;
  assign ram_be[3:0] = mmio_decode_ram_gpio_0_ram_be;
  assign ram_en = mmio_decode_ram_gpio_0_ram_en;
  assign ram_we = mmio_decode_ram_gpio_0_ram_we;
  assign rdata[31:0] = rv32i_ram_datav_0_rdata;
  assign rv32i_alu_0_Y = addr[31:0];
  assign rv32i_control_full_0_lsu_size = lsu_size[1:0];
  assign rv32i_control_full_0_lsu_unsigned = lsu_unsigned;
  assign rv32i_control_full_0_mem_re = mem_re;
  assign rv32i_control_full_0_mem_we = mem_we;
  assign rv32i_regfile_0_rs2_rdata = store_data[31:0];
  assign zynq_ultra_ps_e_1_pl_clk0 = clk;
  Sections_gpio_mmio_0_0 gpio_mmio_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .gpio_dir(gpio_mmio_0_gpio_dir),
        .gpio_in(xlconstant_1_dout),
        .gpio_out(gpio_mmio_0_gpio_out),
        .mem_addr(mmio_decode_ram_gpio_0_gpio_addr),
        .mem_rdata(gpio_mmio_0_mem_rdata),
        .mem_ready(gpio_mmio_0_mem_ready),
        .mem_valid(mmio_decode_ram_gpio_0_gpio_en),
        .mem_wdata(mmio_decode_ram_gpio_0_gpio_wdata),
        .mem_we(mmio_decode_ram_gpio_0_gpio_we),
        .rst(proc_sys_reset_0_peripheral_reset));
  Sections_mmio_decode_ram_gpio_0_0 mmio_decode_ram_gpio_0
       (.addr(rv32i_alu_0_Y),
        .clk(zynq_ultra_ps_e_1_pl_clk0),
        .fault_access(mmio_decode_ram_gpio_0_fault_access),
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
        .ram_en(mmio_decode_ram_gpio_0_ram_en),
        .ram_rdata(rv32i_ram_datav_0_rdata),
        .ram_wdata(mmio_decode_ram_gpio_0_ram_wdata),
        .ram_we(mmio_decode_ram_gpio_0_ram_we),
        .rst(proc_sys_reset_0_peripheral_reset),
        .store_data(rv32i_regfile_0_rs2_rdata));
  Sections_rv32i_ram_datav_0_0 rv32i_ram_datav_0
       (.addr(mmio_decode_ram_gpio_0_ram_addr),
        .be(mmio_decode_ram_gpio_0_ram_be),
        .clk(zynq_ultra_ps_e_1_pl_clk0),
        .rdata(rv32i_ram_datav_0_rdata),
        .wdata(mmio_decode_ram_gpio_0_ram_wdata),
        .we(mmio_decode_ram_gpio_0_ram_we));
  Sections_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

module RV32I_WB_imp_B4ZOWA
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

  wire [31:0]mmio_decode_ram_gpio_0_load_data;
  wire [31:0]pc_unit_0_pc_plus4;
  wire [31:0]rv32i_alu_0_Y;
  wire [1:0]rv32i_control_full_0_wb_sel;
  wire [31:0]rv32i_decoder_0_imm_u;
  wire [31:0]rv32i_wb_mux_0_rd_wdata;

  assign mmio_decode_ram_gpio_0_load_data = load_data[31:0];
  assign pc_unit_0_pc_plus4 = pc_plus4[31:0];
  assign rd_wdata[31:0] = rv32i_wb_mux_0_rd_wdata;
  assign rv32i_alu_0_Y = alu_y[31:0];
  assign rv32i_control_full_0_wb_sel = wb_sel[1:0];
  assign rv32i_decoder_0_imm_u = imm_u[31:0];
  Sections_rv32i_wb_mux_0_0 rv32i_wb_mux_0
       (.alu_y(rv32i_alu_0_Y),
        .imm_u(rv32i_decoder_0_imm_u),
        .load_data(mmio_decode_ram_gpio_0_load_data),
        .pc_plus4(pc_unit_0_pc_plus4),
        .rd_wdata(rv32i_wb_mux_0_rd_wdata),
        .wb_sel(rv32i_control_full_0_wb_sel));
endmodule

(* CORE_GENERATION_INFO = "Sections,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Sections,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=30,numReposBlks=26,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=14,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "Sections.hwdef" *) 
module Sections
   ();

  wire [3:0]Net;
  wire [31:0]Net1;
  wire Net2;
  wire Net3;
  wire [12:0]Net4;
  wire axi_bram_ctrl_0_bram_rst_a;
  wire [31:0]blk_mem_gen_0_doutb;
  wire [31:0]mmio_decode_ram_gpio_0_load_data;
  wire [10:0]pc_to_rom_addr_0_a;
  wire [31:0]pc_unit_0_pc;
  wire [31:0]pc_unit_0_pc_plus4;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [0:0]proc_sys_reset_0_peripheral_reset1;
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
  wire [1:0]rv32i_control_full_0_wb_sel;
  wire [31:0]rv32i_decoder_0_imm_b;
  wire [31:0]rv32i_decoder_0_imm_i;
  wire [31:0]rv32i_decoder_0_imm_j;
  wire [31:0]rv32i_decoder_0_imm_s;
  wire [31:0]rv32i_decoder_0_imm_u;
  wire [31:0]rv32i_pc_redirect_0_pc_redirect_target;
  wire rv32i_pc_redirect_0_pc_redirect_valid;
  wire [31:0]rv32i_regfile_0_rs1_rdata;
  wire [31:0]rv32i_regfile_0_rs2_rdata;
  wire [31:0]rv32i_wb_mux_0_rd_wdata;
  wire [0:0]vio_0_probe_out0;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [3:0]xlconstant_2_dout;
  wire [0:0]xlconstant_3_dout;
  wire [39:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARPROT;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARSIZE;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWPROT;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWSIZE;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WVALID;
  wire zynq_ultra_ps_e_1_pl_clk0;
  wire zynq_ultra_ps_e_1_pl_clk1;
  wire zynq_ultra_ps_e_1_pl_resetn0;

  RV32I_EX_imp_E13WTS RV32I_EX
       (.Y(rv32i_alu_0_Y),
        .alu_op(rv32i_control_full_0_alu_op),
        .imm_b(rv32i_decoder_0_imm_b),
        .imm_i(rv32i_decoder_0_imm_i),
        .imm_j(rv32i_decoder_0_imm_j),
        .imm_s(rv32i_decoder_0_imm_s),
        .imm_sel(rv32i_control_full_0_imm_sel),
        .imm_u(rv32i_decoder_0_imm_u),
        .opA_sel(rv32i_control_full_0_opA_sel),
        .opB_sel_imm(rv32i_control_full_0_opB_sel_imm),
        .pc(pc_unit_0_pc),
        .rs1(rv32i_regfile_0_rs1_rdata),
        .rs2(rv32i_regfile_0_rs2_rdata));
  RV32I_ID_imp_RADHJV RV32I_ID
       (.alu_op(rv32i_control_full_0_alu_op),
        .branch_en(rv32i_control_full_0_branch_en),
        .branch_f3(rv32i_control_full_0_branch_f3),
        .clk(zynq_ultra_ps_e_1_pl_clk0),
        .imm_b(rv32i_decoder_0_imm_b),
        .imm_i(rv32i_decoder_0_imm_i),
        .imm_j(rv32i_decoder_0_imm_j),
        .imm_s(rv32i_decoder_0_imm_s),
        .imm_sel(rv32i_control_full_0_imm_sel),
        .imm_u(rv32i_decoder_0_imm_u),
        .instr(blk_mem_gen_0_doutb),
        .jal(rv32i_control_full_0_jal),
        .jalr(rv32i_control_full_0_jalr),
        .lsu_size(rv32i_control_full_0_lsu_size),
        .lsu_unsigned(rv32i_control_full_0_lsu_unsigned),
        .mem_re(rv32i_control_full_0_mem_re),
        .mem_we(rv32i_control_full_0_mem_we),
        .opA_sel(rv32i_control_full_0_opA_sel),
        .opB_sel_imm(rv32i_control_full_0_opB_sel_imm),
        .rd_wdata(rv32i_wb_mux_0_rd_wdata),
        .rs1_rdata(rv32i_regfile_0_rs1_rdata),
        .rs2_rdata(rv32i_regfile_0_rs2_rdata),
        .wb_sel(rv32i_control_full_0_wb_sel));
  RV32I_MEM_imp_1NNR2R3 RV32I_MEM
       (.addr(rv32i_alu_0_Y),
        .clk(zynq_ultra_ps_e_1_pl_clk0),
        .load_data(mmio_decode_ram_gpio_0_load_data),
        .lsu_size(rv32i_control_full_0_lsu_size),
        .lsu_unsigned(rv32i_control_full_0_lsu_unsigned),
        .mem_re(rv32i_control_full_0_mem_re),
        .mem_we(rv32i_control_full_0_mem_we),
        .rst(proc_sys_reset_0_peripheral_reset),
        .store_data(rv32i_regfile_0_rs2_rdata));
  RV32I_WB_imp_B4ZOWA RV32I_WB
       (.alu_y(rv32i_alu_0_Y),
        .imm_u(rv32i_decoder_0_imm_u),
        .load_data(mmio_decode_ram_gpio_0_load_data),
        .pc_plus4(pc_unit_0_pc_plus4),
        .rd_wdata(rv32i_wb_mux_0_rd_wdata),
        .wb_sel(rv32i_control_full_0_wb_sel));
  Sections_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(Net4),
        .bram_clk_a(Net3),
        .bram_en_a(Net2),
        .bram_rddata_a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .bram_rst_a(axi_bram_ctrl_0_bram_rst_a),
        .bram_we_a(Net),
        .bram_wrdata_a(Net1),
        .s_axi_aclk(zynq_ultra_ps_e_1_pl_clk0),
        .s_axi_araddr(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARADDR[12:0]),
        .s_axi_arburst(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARBURST),
        .s_axi_arcache(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARID),
        .s_axi_arlen(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARLEN),
        .s_axi_arlock(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARLOCK),
        .s_axi_arprot(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARPROT),
        .s_axi_arready(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARREADY),
        .s_axi_arsize(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARSIZE),
        .s_axi_arvalid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARVALID),
        .s_axi_awaddr(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWADDR[12:0]),
        .s_axi_awburst(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWBURST),
        .s_axi_awcache(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWCACHE),
        .s_axi_awid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWID),
        .s_axi_awlen(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWLEN),
        .s_axi_awlock(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWLOCK),
        .s_axi_awprot(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWPROT),
        .s_axi_awready(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWREADY),
        .s_axi_awsize(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWSIZE),
        .s_axi_awvalid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWVALID),
        .s_axi_bid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_BID),
        .s_axi_bready(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_BREADY),
        .s_axi_bresp(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_BRESP),
        .s_axi_bvalid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_BVALID),
        .s_axi_rdata(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RDATA),
        .s_axi_rid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RID),
        .s_axi_rlast(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RLAST),
        .s_axi_rready(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RREADY),
        .s_axi_rresp(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RRESP),
        .s_axi_rvalid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RVALID),
        .s_axi_wdata(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WDATA),
        .s_axi_wlast(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WLAST),
        .s_axi_wready(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WREADY),
        .s_axi_wstrb(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WSTRB),
        .s_axi_wvalid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WVALID));
  Sections_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Net4}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pc_to_rom_addr_0_a}),
        .clka(Net3),
        .clkb(zynq_ultra_ps_e_1_pl_clk0),
        .dina(Net1),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .doutb(blk_mem_gen_0_doutb),
        .ena(Net2),
        .enb(xlconstant_1_dout),
        .rsta(axi_bram_ctrl_0_bram_rst_a),
        .rstb(proc_sys_reset_0_peripheral_reset1),
        .wea(Net),
        .web(xlconstant_2_dout));
  Sections_ila_0_0 ila_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .probe0(Net1),
        .probe1(Net),
        .probe2(zynq_ultra_ps_e_1_pl_clk1),
        .probe3(Net2),
        .probe4(Net3),
        .probe5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Net4}));
  Sections_pc_to_rom_addr_0_0 pc_to_rom_addr_0
       (.a(pc_to_rom_addr_0_a),
        .pc(pc_unit_0_pc));
  Sections_pc_unit_0_0 pc_unit_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .pc(pc_unit_0_pc),
        .pc_en(xlconstant_3_dout),
        .pc_plus4(pc_unit_0_pc_plus4),
        .pc_redirect_target(rv32i_pc_redirect_0_pc_redirect_target),
        .pc_redirect_valid(rv32i_pc_redirect_0_pc_redirect_valid),
        .rst(proc_sys_reset_0_peripheral_reset));
  Sections_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(xlconstant_0_dout),
        .ext_reset_in(zynq_ultra_ps_e_1_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset1),
        .slowest_sync_clk(zynq_ultra_ps_e_1_pl_clk0));
  Sections_rv32i_pc_redirect_0_0 rv32i_pc_redirect_0
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
  Sections_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(proc_sys_reset_0_peripheral_reset1),
        .Op2(vio_0_probe_out0),
        .Res(proc_sys_reset_0_peripheral_reset));
  Sections_vio_0_0 vio_0
       (.clk(zynq_ultra_ps_e_1_pl_clk0),
        .probe_out0(vio_0_probe_out0));
  Sections_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  Sections_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
  Sections_xlconstant_1_1 xlconstant_2
       (.dout(xlconstant_2_dout));
  Sections_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  Sections_zynq_ultra_ps_e_1_0 zynq_ultra_ps_e_1
       (.emio_can0_phy_rx(1'b0),
        .emio_gpio_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .emio_i2c0_scl_i(1'b0),
        .emio_i2c0_sda_i(1'b0),
        .maxigp0_araddr(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arready(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_arvalid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awready(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awvalid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_1_M_AXI_HPM0_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_1_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_1_pl_clk0),
        .pl_clk1(zynq_ultra_ps_e_1_pl_clk1),
        .pl_resetn0(zynq_ultra_ps_e_1_pl_resetn0));
endmodule
