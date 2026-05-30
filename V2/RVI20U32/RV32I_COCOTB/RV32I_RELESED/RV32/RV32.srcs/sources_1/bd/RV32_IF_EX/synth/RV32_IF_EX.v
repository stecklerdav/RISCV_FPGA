//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Sat May 30 00:29:41 2026
//Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target RV32_IF_EX.bd
//Design      : RV32_IF_EX
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "RV32_IF_EX,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=RV32_IF_EX,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=12,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_BD}" *) (* HW_HANDOFF = "RV32_IF_EX.hwdef" *) 
module RV32_IF_EX
   (clk,
    ex_alu_op,
    ex_imm,
    ex_instr,
    ex_pc,
    ex_pc_plus4,
    ex_rd,
    ex_rd_we,
    ex_rs1,
    ex_rs1_data,
    ex_rs2,
    ex_rs2_data,
    ex_valid,
    id_instr_debug,
    id_pc_debug,
    id_pc_plus4_debug,
    if_id_enable,
    if_id_flush,
    if_instr_debug,
    if_pc_debug,
    if_pc_plus4_debug,
    rd_addr,
    rd_wdata,
    rd_we,
    rst);
  input clk;
  output [3:0]ex_alu_op;
  output [31:0]ex_imm;
  output [31:0]ex_instr;
  output [31:0]ex_pc;
  output [31:0]ex_pc_plus4;
  output [4:0]ex_rd;
  output ex_rd_we;
  output [4:0]ex_rs1;
  output [31:0]ex_rs1_data;
  output [4:0]ex_rs2;
  output [31:0]ex_rs2_data;
  output ex_valid;
  output [31:0]id_instr_debug;
  output [31:0]id_pc_debug;
  output [31:0]id_pc_plus4_debug;
  input if_id_enable;
  input if_id_flush;
  output [31:0]if_instr_debug;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IF_PC_DEBUG DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IF_PC_DEBUG, LAYERED_METADATA undef" *) output [31:0]if_pc_debug;
  output [31:0]if_pc_plus4_debug;
  input [4:0]rd_addr;
  input [31:0]rd_wdata;
  input rd_we;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rst;

  wire Net;
  wire [0:0]Net1;
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
  wire [4:0]decoder_0_rs2;
  wire [3:0]id_ex_reg_0_ex_alu_op;
  wire [31:0]id_ex_reg_0_ex_imm;
  wire [31:0]id_ex_reg_0_ex_instr;
  wire [31:0]id_ex_reg_0_ex_pc;
  wire [31:0]id_ex_reg_0_ex_pc_plus4;
  wire [4:0]id_ex_reg_0_ex_rd;
  wire id_ex_reg_0_ex_rd_we;
  wire [4:0]id_ex_reg_0_ex_rs1;
  wire [31:0]id_ex_reg_0_ex_rs1_data;
  wire [4:0]id_ex_reg_0_ex_rs2;
  wire [31:0]id_ex_reg_0_ex_rs2_data;
  wire id_ex_reg_0_ex_valid;
  wire if_id_enable_1;
  wire if_id_flush_1;
  wire [31:0]if_id_reg_0_id_instr;
  wire [31:0]if_id_reg_0_id_pc;
  wire [31:0]if_id_reg_0_id_pc_plus4;
  wire [31:0]imm_mux_0_imm_out;
  wire [10:0]pc_to_imem_addr_0_addr;
  wire [31:0]pc_unit_0_pc;
  wire [31:0]pc_unit_0_pc_plus4;
  wire [4:0]rd_addr_1;
  wire [31:0]rd_wdata_1;
  wire rd_we_1;
  wire [31:0]regfile_0_rs1_rdata;
  wire [31:0]regfile_0_rs2_rdata;
  wire [31:0]rom_memory_0_instr;
  wire rst_1;
  wire [0:0]sim_constant_1_dout;
  wire [0:0]sim_constant_2_dout;

  assign Net = clk;
  assign ex_alu_op[3:0] = id_ex_reg_0_ex_alu_op;
  assign ex_imm[31:0] = id_ex_reg_0_ex_imm;
  assign ex_instr[31:0] = id_ex_reg_0_ex_instr;
  assign ex_pc[31:0] = id_ex_reg_0_ex_pc;
  assign ex_pc_plus4[31:0] = id_ex_reg_0_ex_pc_plus4;
  assign ex_rd[4:0] = id_ex_reg_0_ex_rd;
  assign ex_rd_we = id_ex_reg_0_ex_rd_we;
  assign ex_rs1[4:0] = id_ex_reg_0_ex_rs1;
  assign ex_rs1_data[31:0] = id_ex_reg_0_ex_rs1_data;
  assign ex_rs2[4:0] = id_ex_reg_0_ex_rs2;
  assign ex_rs2_data[31:0] = id_ex_reg_0_ex_rs2_data;
  assign ex_valid = id_ex_reg_0_ex_valid;
  assign id_instr_debug[31:0] = if_id_reg_0_id_instr;
  assign id_pc_debug[31:0] = if_id_reg_0_id_pc;
  assign id_pc_plus4_debug[31:0] = if_id_reg_0_id_pc_plus4;
  assign if_id_enable_1 = if_id_enable;
  assign if_id_flush_1 = if_id_flush;
  assign if_instr_debug[31:0] = rom_memory_0_instr;
  assign if_pc_debug[31:0] = pc_unit_0_pc;
  assign if_pc_plus4_debug[31:0] = pc_unit_0_pc_plus4;
  assign rd_addr_1 = rd_addr[4:0];
  assign rd_wdata_1 = rd_wdata[31:0];
  assign rd_we_1 = rd_we;
  assign rst_1 = rst;
  RV32_IF_EX_control_0_0 control_0
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
  RV32_IF_EX_decoder_0_0 decoder_0
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
        .instr(if_id_reg_0_id_instr),
        .opcode(decoder_0_opcode),
        .rd(decoder_0_rd),
        .rs1(decoder_0_rs1),
        .rs2(decoder_0_rs2));
  RV32_IF_EX_id_ex_reg_0_0 id_ex_reg_0
       (.bubble(sim_constant_1_dout),
        .clk(Net),
        .ex_alu_op(id_ex_reg_0_ex_alu_op),
        .ex_imm(id_ex_reg_0_ex_imm),
        .ex_instr(id_ex_reg_0_ex_instr),
        .ex_pc(id_ex_reg_0_ex_pc),
        .ex_pc_plus4(id_ex_reg_0_ex_pc_plus4),
        .ex_rd(id_ex_reg_0_ex_rd),
        .ex_rd_we(id_ex_reg_0_ex_rd_we),
        .ex_rs1(id_ex_reg_0_ex_rs1),
        .ex_rs1_data(id_ex_reg_0_ex_rs1_data),
        .ex_rs2(id_ex_reg_0_ex_rs2),
        .ex_rs2_data(id_ex_reg_0_ex_rs2_data),
        .ex_valid(id_ex_reg_0_ex_valid),
        .id_alu_op(control_0_alu_op),
        .id_branch_en(control_0_branch_en),
        .id_branch_funct3(control_0_branch_funct3),
        .id_illegal_instr(decoder_0_illegal_opcode),
        .id_imm(imm_mux_0_imm_out),
        .id_imm_u(decoder_0_imm_u),
        .id_instr(if_id_reg_0_id_instr),
        .id_jal(control_0_jal),
        .id_jalr(control_0_jalr),
        .id_mem_re(control_0_mem_re),
        .id_mem_size(control_0_mem_size),
        .id_mem_unsigned(control_0_mem_unsigned),
        .id_mem_we(control_0_mem_we),
        .id_op_a_sel(control_0_op_a_sel),
        .id_op_b_sel(control_0_op_b_sel),
        .id_pc(if_id_reg_0_id_pc),
        .id_pc_plus4(if_id_reg_0_id_pc_plus4),
        .id_pred_next_pc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .id_rd(decoder_0_rd),
        .id_rd_we(control_0_rd_we),
        .id_rs1(decoder_0_rs1),
        .id_rs1_data(regfile_0_rs1_rdata),
        .id_rs2(decoder_0_rs2),
        .id_rs2_data(regfile_0_rs2_rdata),
        .id_valid(sim_constant_2_dout),
        .id_wb_sel(control_0_wb_sel),
        .rst(rst_1),
        .stall(sim_constant_1_dout));
  RV32_IF_EX_if_id_reg_0_0 if_id_reg_0
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
  RV32_IF_EX_imm_mux_0_0 imm_mux_0
       (.imm_b(decoder_0_imm_b),
        .imm_i(decoder_0_imm_i),
        .imm_j(decoder_0_imm_j),
        .imm_out(imm_mux_0_imm_out),
        .imm_s(decoder_0_imm_s),
        .imm_sel(control_0_imm_sel),
        .imm_u(decoder_0_imm_u));
  RV32_IF_EX_pc_to_imem_addr_0_0 pc_to_imem_addr_0
       (.addr(pc_to_imem_addr_0_addr),
        .pc(pc_unit_0_pc));
  RV32_IF_EX_pc_unit_0_0 pc_unit_0
       (.clk(Net),
        .pc(pc_unit_0_pc),
        .pc_en(Net1),
        .pc_plus4(pc_unit_0_pc_plus4),
        .rst(rst_1));
  RV32_IF_EX_regfile_0_0 regfile_0
       (.clk(Net),
        .rd_addr(rd_addr_1),
        .rd_wdata(rd_wdata_1),
        .rd_we(rd_we_1),
        .rs1_addr(decoder_0_rs1),
        .rs1_rdata(regfile_0_rs1_rdata),
        .rs2_addr(decoder_0_rs2),
        .rs2_rdata(regfile_0_rs2_rdata));
  RV32_IF_EX_rom_memory_0_0 rom_memory_0
       (.addr(pc_to_imem_addr_0_addr),
        .clk(Net),
        .en(Net1),
        .instr(rom_memory_0_instr));
  RV32_IF_EX_sim_constant_0_0 sim_constant_0
       (.dout(Net1));
  RV32_IF_EX_sim_constant_0_1 sim_constant_1
       (.dout(sim_constant_1_dout));
  RV32_IF_EX_sim_constant_1_0 sim_constant_2
       (.dout(sim_constant_2_dout));
endmodule
