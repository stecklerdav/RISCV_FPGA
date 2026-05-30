//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Fri May 29 20:39:24 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target RV32_IF_ID.bd
//Design      : RV32_IF_ID
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "RV32_IF_ID,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=RV32_IF_ID,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "RV32_IF_ID.hwdef" *) 
module RV32_IF_ID
   (clk,
    id_instr_debug,
    id_pc_debug,
    id_pc_plus4_debug,
    if_id_enable,
    if_id_flush,
    if_instr_debug,
    if_pc_debug,
    if_pc_plus4_debug,
    rst);
  input clk;
  output [31:0]id_instr_debug;
  output [31:0]id_pc_debug;
  output [31:0]id_pc_plus4_debug;
  input if_id_enable;
  input if_id_flush;
  output [31:0]if_instr_debug;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IF_PC_DEBUG DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IF_PC_DEBUG, LAYERED_METADATA undef" *) output [31:0]if_pc_debug;
  output [31:0]if_pc_plus4_debug;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rst;

  wire Net;
  wire [0:0]Net1;
  wire if_id_enable_1;
  wire if_id_flush_1;
  wire [31:0]if_id_reg_0_id_instr;
  wire [31:0]if_id_reg_0_id_pc;
  wire [31:0]if_id_reg_0_id_pc_plus4;
  wire [10:0]pc_to_imem_addr_0_addr;
  wire [31:0]pc_unit_0_pc;
  wire [31:0]pc_unit_0_pc_plus4;
  wire [31:0]rom_memory_0_instr;
  wire rst_1;

  assign Net = clk;
  assign id_instr_debug[31:0] = if_id_reg_0_id_instr;
  assign id_pc_debug[31:0] = if_id_reg_0_id_pc;
  assign id_pc_plus4_debug[31:0] = if_id_reg_0_id_pc_plus4;
  assign if_id_enable_1 = if_id_enable;
  assign if_id_flush_1 = if_id_flush;
  assign if_instr_debug[31:0] = rom_memory_0_instr;
  assign if_pc_debug[31:0] = pc_unit_0_pc;
  assign if_pc_plus4_debug[31:0] = pc_unit_0_pc_plus4;
  assign rst_1 = rst;
  RV32_IF_ID_if_id_reg_0_0 if_id_reg_0
       (.clk(Net),
        .enable(if_id_enable_1),
        .flush(if_id_flush_1),
        .id_instr(if_id_reg_0_id_instr),
        .id_pc(if_id_reg_0_id_pc),
        .id_pc_plus4(if_id_reg_0_id_pc_plus4),
        .if_instr(rom_memory_0_instr),
        .if_pc(pc_unit_0_pc),
        .if_pc_plus4(pc_unit_0_pc_plus4),
        .rst(rst_1));
  RV32_IF_ID_pc_to_imem_addr_0_0 pc_to_imem_addr_0
       (.addr(pc_to_imem_addr_0_addr),
        .pc(pc_unit_0_pc));
  RV32_IF_ID_pc_unit_0_0 pc_unit_0
       (.clk(Net),
        .pc(pc_unit_0_pc),
        .pc_en(Net1),
        .pc_plus4(pc_unit_0_pc_plus4),
        .rst(rst_1));
  RV32_IF_ID_rom_memory_0_0 rom_memory_0
       (.addr(pc_to_imem_addr_0_addr),
        .clk(Net),
        .en(Net1),
        .instr(rom_memory_0_instr));
  RV32_IF_ID_sim_constant_0_0 sim_constant_0
       (.dout(Net1));
endmodule
