// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat May 30 00:31:44 2026
// Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RV32I_RELESED/RV32/RV32.srcs/sources_1/bd/RV32_IF_EX/RV32_IF_EX_sim_netlist.v
// Design      : RV32_IF_EX
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "RV32_IF_EX.hwdef" *) 
(* NotValidForBitStream *)
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

  wire Net1;
  wire clk;
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
  wire [3:0]ex_alu_op;
  wire [31:0]ex_imm;
  wire [31:0]ex_instr;
  wire [31:0]ex_pc;
  wire [31:0]ex_pc_plus4;
  wire [4:0]ex_rd;
  wire ex_rd_we;
  wire [4:0]ex_rs1;
  wire [31:0]ex_rs1_data;
  wire [4:0]ex_rs2;
  wire [31:0]ex_rs2_data;
  wire ex_valid;
  wire [31:0]id_instr_debug;
  wire [31:0]id_pc_debug;
  wire [31:0]id_pc_plus4_debug;
  wire if_id_enable;
  wire if_id_flush;
  wire [31:0]if_instr_debug;
  wire [31:0]if_pc_debug;
  wire [31:0]if_pc_plus4_debug;
  wire [31:0]imm_mux_0_imm_out;
  wire [10:0]pc_to_imem_addr_0_addr;
  wire [4:0]rd_addr;
  wire [31:0]rd_wdata;
  wire rd_we;
  wire [31:0]regfile_0_rs1_rdata;
  wire [31:0]regfile_0_rs2_rdata;
  wire rst;
  wire sim_constant_1_dout;
  wire sim_constant_2_dout;
  wire NLW_decoder_0_rs1_used_UNCONNECTED;
  wire NLW_decoder_0_rs2_used_UNCONNECTED;
  wire NLW_id_ex_reg_0_ex_branch_en_UNCONNECTED;
  wire NLW_id_ex_reg_0_ex_illegal_instr_UNCONNECTED;
  wire NLW_id_ex_reg_0_ex_jal_UNCONNECTED;
  wire NLW_id_ex_reg_0_ex_jalr_UNCONNECTED;
  wire NLW_id_ex_reg_0_ex_mem_re_UNCONNECTED;
  wire NLW_id_ex_reg_0_ex_mem_unsigned_UNCONNECTED;
  wire NLW_id_ex_reg_0_ex_mem_we_UNCONNECTED;
  wire [2:0]NLW_id_ex_reg_0_ex_branch_funct3_UNCONNECTED;
  wire [31:0]NLW_id_ex_reg_0_ex_imm_u_UNCONNECTED;
  wire [1:0]NLW_id_ex_reg_0_ex_mem_size_UNCONNECTED;
  wire [1:0]NLW_id_ex_reg_0_ex_op_a_sel_UNCONNECTED;
  wire [1:0]NLW_id_ex_reg_0_ex_op_b_sel_UNCONNECTED;
  wire [31:0]NLW_id_ex_reg_0_ex_pred_next_pc_UNCONNECTED;
  wire [2:0]NLW_id_ex_reg_0_ex_wb_sel_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "RV32_IF_EX_control_0_0,control,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "control,Vivado 2020.1" *) 
  RV32_IF_EX_RV32_IF_EX_control_0_0 control_0
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
  (* CHECK_LICENSE_TYPE = "RV32_IF_EX_decoder_0_0,decoder,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "decoder,Vivado 2020.1" *) 
  RV32_IF_EX_RV32_IF_EX_decoder_0_0 decoder_0
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
        .instr(id_instr_debug),
        .opcode(decoder_0_opcode),
        .rd(decoder_0_rd),
        .rs1(decoder_0_rs1),
        .rs1_used(NLW_decoder_0_rs1_used_UNCONNECTED),
        .rs2(decoder_0_rs2),
        .rs2_used(NLW_decoder_0_rs2_used_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "RV32_IF_EX_id_ex_reg_0_0,id_ex_reg,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "id_ex_reg,Vivado 2020.1" *) 
  RV32_IF_EX_RV32_IF_EX_id_ex_reg_0_0 id_ex_reg_0
       (.bubble(sim_constant_1_dout),
        .clk(clk),
        .ex_alu_op(ex_alu_op),
        .ex_branch_en(NLW_id_ex_reg_0_ex_branch_en_UNCONNECTED),
        .ex_branch_funct3(NLW_id_ex_reg_0_ex_branch_funct3_UNCONNECTED[2:0]),
        .ex_illegal_instr(NLW_id_ex_reg_0_ex_illegal_instr_UNCONNECTED),
        .ex_imm(ex_imm),
        .ex_imm_u(NLW_id_ex_reg_0_ex_imm_u_UNCONNECTED[31:0]),
        .ex_instr(ex_instr),
        .ex_jal(NLW_id_ex_reg_0_ex_jal_UNCONNECTED),
        .ex_jalr(NLW_id_ex_reg_0_ex_jalr_UNCONNECTED),
        .ex_mem_re(NLW_id_ex_reg_0_ex_mem_re_UNCONNECTED),
        .ex_mem_size(NLW_id_ex_reg_0_ex_mem_size_UNCONNECTED[1:0]),
        .ex_mem_unsigned(NLW_id_ex_reg_0_ex_mem_unsigned_UNCONNECTED),
        .ex_mem_we(NLW_id_ex_reg_0_ex_mem_we_UNCONNECTED),
        .ex_op_a_sel(NLW_id_ex_reg_0_ex_op_a_sel_UNCONNECTED[1:0]),
        .ex_op_b_sel(NLW_id_ex_reg_0_ex_op_b_sel_UNCONNECTED[1:0]),
        .ex_pc(ex_pc),
        .ex_pc_plus4(ex_pc_plus4),
        .ex_pred_next_pc(NLW_id_ex_reg_0_ex_pred_next_pc_UNCONNECTED[31:0]),
        .ex_rd(ex_rd),
        .ex_rd_we(ex_rd_we),
        .ex_rs1(ex_rs1),
        .ex_rs1_data(ex_rs1_data),
        .ex_rs2(ex_rs2),
        .ex_rs2_data(ex_rs2_data),
        .ex_valid(ex_valid),
        .ex_wb_sel(NLW_id_ex_reg_0_ex_wb_sel_UNCONNECTED[2:0]),
        .id_alu_op(control_0_alu_op),
        .id_branch_en(control_0_branch_en),
        .id_branch_funct3(control_0_branch_funct3),
        .id_illegal_instr(decoder_0_illegal_opcode),
        .id_imm(imm_mux_0_imm_out),
        .id_imm_u(decoder_0_imm_u),
        .id_instr(id_instr_debug),
        .id_jal(control_0_jal),
        .id_jalr(control_0_jalr),
        .id_mem_re(control_0_mem_re),
        .id_mem_size(control_0_mem_size),
        .id_mem_unsigned(control_0_mem_unsigned),
        .id_mem_we(control_0_mem_we),
        .id_op_a_sel(control_0_op_a_sel),
        .id_op_b_sel(control_0_op_b_sel),
        .id_pc(id_pc_debug),
        .id_pc_plus4(id_pc_plus4_debug),
        .id_pred_next_pc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .id_rd(decoder_0_rd),
        .id_rd_we(control_0_rd_we),
        .id_rs1(decoder_0_rs1),
        .id_rs1_data(regfile_0_rs1_rdata),
        .id_rs2(decoder_0_rs2),
        .id_rs2_data(regfile_0_rs2_rdata),
        .id_valid(sim_constant_2_dout),
        .id_wb_sel(control_0_wb_sel),
        .rst(rst),
        .stall(sim_constant_1_dout));
  (* CHECK_LICENSE_TYPE = "RV32_IF_EX_if_id_reg_0_0,if_id_reg,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "if_id_reg,Vivado 2020.1" *) 
  RV32_IF_EX_RV32_IF_EX_if_id_reg_0_0 if_id_reg_0
       (.clk(clk),
        .enable(if_id_enable),
        .flush(if_id_flush),
        .id_instr(id_instr_debug),
        .id_pc(id_pc_debug),
        .id_pc_plus4(id_pc_plus4_debug),
        .if_instr(if_instr_debug),
        .if_pc(if_pc_debug),
        .if_pc_plus4(if_pc_plus4_debug),
        .rst(rst));
  (* CHECK_LICENSE_TYPE = "RV32_IF_EX_imm_mux_0_0,imm_mux,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "imm_mux,Vivado 2020.1" *) 
  RV32_IF_EX_RV32_IF_EX_imm_mux_0_0 imm_mux_0
       (.imm_b(decoder_0_imm_b),
        .imm_i(decoder_0_imm_i),
        .imm_j(decoder_0_imm_j),
        .imm_out(imm_mux_0_imm_out),
        .imm_s(decoder_0_imm_s),
        .imm_sel(control_0_imm_sel),
        .imm_u(decoder_0_imm_u));
  (* CHECK_LICENSE_TYPE = "RV32_IF_EX_pc_to_imem_addr_0_0,pc_to_imem_addr,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "pc_to_imem_addr,Vivado 2020.1" *) 
  RV32_IF_EX_RV32_IF_EX_pc_to_imem_addr_0_0 pc_to_imem_addr_0
       (.addr(pc_to_imem_addr_0_addr),
        .pc(if_pc_debug));
  (* CHECK_LICENSE_TYPE = "RV32_IF_EX_pc_unit_0_0,pc_unit,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "pc_unit,Vivado 2020.1" *) 
  RV32_IF_EX_RV32_IF_EX_pc_unit_0_0 pc_unit_0
       (.clk(clk),
        .pc(if_pc_debug),
        .pc_en(Net1),
        .pc_plus4(if_pc_plus4_debug),
        .rst(rst));
  (* CHECK_LICENSE_TYPE = "RV32_IF_EX_regfile_0_0,regfile,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "regfile,Vivado 2020.1" *) 
  RV32_IF_EX_RV32_IF_EX_regfile_0_0 regfile_0
       (.clk(clk),
        .rd_addr(rd_addr),
        .rd_wdata(rd_wdata),
        .rd_we(rd_we),
        .rs1_addr(decoder_0_rs1),
        .rs1_rdata(regfile_0_rs1_rdata),
        .rs2_addr(decoder_0_rs2),
        .rs2_rdata(regfile_0_rs2_rdata));
  (* CHECK_LICENSE_TYPE = "RV32_IF_EX_rom_memory_0_0,rom_memory,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "rom_memory,Vivado 2020.1" *) 
  RV32_IF_EX_RV32_IF_EX_rom_memory_0_0 rom_memory_0
       (.addr(pc_to_imem_addr_0_addr),
        .clk(clk),
        .en(Net1),
        .instr(if_instr_debug));
  (* CHECK_LICENSE_TYPE = "RV32_IF_EX_sim_constant_0_0,sim_constant,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "sim_constant,Vivado 2020.1" *) 
  RV32_IF_EX_RV32_IF_EX_sim_constant_0_0 sim_constant_0
       (.dout(Net1));
  (* CHECK_LICENSE_TYPE = "RV32_IF_EX_sim_constant_0_1,sim_constant,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "sim_constant,Vivado 2020.1" *) 
  RV32_IF_EX_RV32_IF_EX_sim_constant_0_1 sim_constant_1
       (.dout(sim_constant_1_dout));
  (* CHECK_LICENSE_TYPE = "RV32_IF_EX_sim_constant_1_0,sim_constant,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "sim_constant,Vivado 2020.1" *) 
  RV32_IF_EX_RV32_IF_EX_sim_constant_1_0 sim_constant_2
       (.dout(sim_constant_2_dout));
endmodule

(* CHECK_LICENSE_TYPE = "RV32_IF_EX_control_0_0,control,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "RV32_IF_EX_control_0_0" *) (* X_CORE_INFO = "control,Vivado 2020.1" *) 
module RV32_IF_EX_RV32_IF_EX_control_0_0
   (opcode,
    funct3,
    funct7,
    fmt,
    bit30,
    rd_we,
    wb_sel,
    op_a_sel,
    op_b_sel,
    alu_op,
    mem_re,
    mem_we,
    mem_size,
    mem_unsigned,
    branch_en,
    branch_funct3,
    jal,
    jalr,
    imm_sel);
  input [6:0]opcode;
  input [2:0]funct3;
  input [6:0]funct7;
  input [2:0]fmt;
  input bit30;
  output rd_we;
  output [2:0]wb_sel;
  output [1:0]op_a_sel;
  output [1:0]op_b_sel;
  output [3:0]alu_op;
  output mem_re;
  output mem_we;
  output [1:0]mem_size;
  output mem_unsigned;
  output branch_en;
  output [2:0]branch_funct3;
  output jal;
  output jalr;
  output [2:0]imm_sel;

  wire \<const0> ;
  wire [3:0]alu_op;
  wire \alu_op[0]_INST_0_i_1_n_0 ;
  wire \alu_op[3]_INST_0_i_1_n_0 ;
  wire bit30;
  wire branch_en;
  wire [2:0]funct3;
  wire [1:0]\^imm_sel ;
  wire jalr;
  wire mem_re;
  wire [1:0]mem_size;
  wire \mem_size[0]_INST_0_i_1_n_0 ;
  wire mem_unsigned;
  wire mem_we;
  wire [1:0]op_a_sel;
  wire [1:0]op_b_sel;
  wire [6:0]opcode;
  wire rd_we;
  wire rd_we_INST_0_i_1_n_0;
  wire [1:0]\^wb_sel ;
  wire \wb_sel[0]_INST_0_i_1_n_0 ;
  wire \wb_sel[1]_INST_0_i_1_n_0 ;

  assign branch_funct3[2:0] = funct3;
  assign imm_sel[2] = op_b_sel[1];
  assign imm_sel[1:0] = \^imm_sel [1:0];
  assign jal = op_b_sel[1];
  assign wb_sel[2] = \<const0> ;
  assign wb_sel[1:0] = \^wb_sel [1:0];
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000B888)) 
    \alu_op[0]_INST_0 
       (.I0(\alu_op[0]_INST_0_i_1_n_0 ),
        .I1(opcode[4]),
        .I2(opcode[6]),
        .I3(opcode[5]),
        .I4(\alu_op[3]_INST_0_i_1_n_0 ),
        .O(alu_op[0]));
  LUT6 #(
    .INIT(64'h000000004AF44AF0)) 
    \alu_op[0]_INST_0_i_1 
       (.I0(funct3[1]),
        .I1(bit30),
        .I2(funct3[0]),
        .I3(funct3[2]),
        .I4(opcode[5]),
        .I5(opcode[6]),
        .O(\alu_op[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010100000000000)) 
    \alu_op[1]_INST_0 
       (.I0(opcode[6]),
        .I1(\alu_op[3]_INST_0_i_1_n_0 ),
        .I2(opcode[4]),
        .I3(funct3[0]),
        .I4(funct3[1]),
        .I5(funct3[2]),
        .O(alu_op[1]));
  LUT6 #(
    .INIT(64'h0000101000001000)) 
    \alu_op[2]_INST_0 
       (.I0(opcode[6]),
        .I1(\alu_op[3]_INST_0_i_1_n_0 ),
        .I2(opcode[4]),
        .I3(funct3[2]),
        .I4(funct3[1]),
        .I5(funct3[0]),
        .O(alu_op[2]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \alu_op[3]_INST_0 
       (.I0(opcode[6]),
        .I1(\alu_op[3]_INST_0_i_1_n_0 ),
        .I2(opcode[4]),
        .I3(funct3[1]),
        .I4(funct3[2]),
        .O(alu_op[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \alu_op[3]_INST_0_i_1 
       (.I0(opcode[2]),
        .I1(opcode[0]),
        .I2(opcode[1]),
        .I3(opcode[3]),
        .O(\alu_op[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    branch_en_INST_0
       (.I0(opcode[4]),
        .I1(opcode[5]),
        .I2(opcode[6]),
        .I3(\alu_op[3]_INST_0_i_1_n_0 ),
        .O(branch_en));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44000040)) 
    \imm_sel[0]_INST_0 
       (.I0(opcode[6]),
        .I1(\wb_sel[0]_INST_0_i_1_n_0 ),
        .I2(opcode[5]),
        .I3(opcode[4]),
        .I4(opcode[2]),
        .O(\^imm_sel [0]));
  LUT6 #(
    .INIT(64'h0002000201000000)) 
    \imm_sel[1]_INST_0 
       (.I0(opcode[2]),
        .I1(rd_we_INST_0_i_1_n_0),
        .I2(opcode[3]),
        .I3(opcode[6]),
        .I4(opcode[5]),
        .I5(opcode[4]),
        .O(\^imm_sel [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \imm_sel[2]_INST_0 
       (.I0(\wb_sel[1]_INST_0_i_1_n_0 ),
        .I1(opcode[5]),
        .I2(opcode[4]),
        .I3(opcode[3]),
        .I4(opcode[6]),
        .O(op_b_sel[1]));
  LUT5 #(
    .INIT(32'h02000000)) 
    jalr_INST_0
       (.I0(\wb_sel[1]_INST_0_i_1_n_0 ),
        .I1(opcode[4]),
        .I2(opcode[3]),
        .I3(opcode[5]),
        .I4(opcode[6]),
        .O(jalr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    mem_re_INST_0
       (.I0(\alu_op[3]_INST_0_i_1_n_0 ),
        .I1(opcode[5]),
        .I2(opcode[6]),
        .I3(opcode[4]),
        .O(mem_re));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \mem_size[0]_INST_0 
       (.I0(funct3[0]),
        .I1(\mem_size[0]_INST_0_i_1_n_0 ),
        .I2(funct3[2]),
        .I3(opcode[5]),
        .I4(funct3[1]),
        .I5(\alu_op[3]_INST_0_i_1_n_0 ),
        .O(mem_size[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mem_size[0]_INST_0_i_1 
       (.I0(opcode[4]),
        .I1(opcode[6]),
        .O(\mem_size[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \mem_size[1]_INST_0 
       (.I0(\alu_op[3]_INST_0_i_1_n_0 ),
        .I1(funct3[1]),
        .I2(opcode[5]),
        .I3(funct3[2]),
        .I4(opcode[4]),
        .I5(opcode[6]),
        .O(mem_size[1]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    mem_unsigned_INST_0
       (.I0(funct3[1]),
        .I1(funct3[2]),
        .I2(opcode[4]),
        .I3(opcode[6]),
        .I4(opcode[5]),
        .I5(\alu_op[3]_INST_0_i_1_n_0 ),
        .O(mem_unsigned));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    mem_we_INST_0
       (.I0(opcode[4]),
        .I1(opcode[5]),
        .I2(\alu_op[3]_INST_0_i_1_n_0 ),
        .I3(opcode[6]),
        .O(mem_we));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40020000)) 
    \op_a_sel[0]_INST_0 
       (.I0(opcode[4]),
        .I1(opcode[5]),
        .I2(opcode[6]),
        .I3(opcode[3]),
        .I4(\wb_sel[1]_INST_0_i_1_n_0 ),
        .O(op_a_sel[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \op_a_sel[1]_INST_0 
       (.I0(opcode[5]),
        .I1(opcode[6]),
        .I2(opcode[3]),
        .I3(opcode[4]),
        .I4(\wb_sel[1]_INST_0_i_1_n_0 ),
        .O(op_a_sel[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0080A20A)) 
    \op_b_sel[0]_INST_0 
       (.I0(\wb_sel[0]_INST_0_i_1_n_0 ),
        .I1(opcode[5]),
        .I2(opcode[2]),
        .I3(opcode[4]),
        .I4(opcode[6]),
        .O(op_b_sel[0]));
  LUT6 #(
    .INIT(64'h0101500001010001)) 
    rd_we_INST_0
       (.I0(rd_we_INST_0_i_1_n_0),
        .I1(opcode[3]),
        .I2(opcode[6]),
        .I3(opcode[5]),
        .I4(opcode[4]),
        .I5(opcode[2]),
        .O(rd_we));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    rd_we_INST_0_i_1
       (.I0(opcode[0]),
        .I1(opcode[1]),
        .O(rd_we_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h40000004)) 
    \wb_sel[0]_INST_0 
       (.I0(opcode[6]),
        .I1(\wb_sel[0]_INST_0_i_1_n_0 ),
        .I2(opcode[2]),
        .I3(opcode[5]),
        .I4(opcode[4]),
        .O(\^wb_sel [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \wb_sel[0]_INST_0_i_1 
       (.I0(opcode[3]),
        .I1(opcode[1]),
        .I2(opcode[0]),
        .O(\wb_sel[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h04C00000)) 
    \wb_sel[1]_INST_0 
       (.I0(opcode[3]),
        .I1(opcode[5]),
        .I2(opcode[6]),
        .I3(opcode[4]),
        .I4(\wb_sel[1]_INST_0_i_1_n_0 ),
        .O(\^wb_sel [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \wb_sel[1]_INST_0_i_1 
       (.I0(opcode[2]),
        .I1(opcode[1]),
        .I2(opcode[0]),
        .O(\wb_sel[1]_INST_0_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "RV32_IF_EX_decoder_0_0,decoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "RV32_IF_EX_decoder_0_0" *) (* X_CORE_INFO = "decoder,Vivado 2020.1" *) 
module RV32_IF_EX_RV32_IF_EX_decoder_0_0
   (instr,
    opcode,
    funct3,
    funct7,
    fmt,
    bit30,
    imm_i,
    imm_s,
    imm_b,
    imm_u,
    imm_j,
    illegal_opcode,
    rd,
    rs1,
    rs2,
    rs1_used,
    rs2_used);
  input [31:0]instr;
  output [6:0]opcode;
  output [2:0]funct3;
  output [6:0]funct7;
  output [2:0]fmt;
  output bit30;
  output [31:0]imm_i;
  output [31:0]imm_s;
  output [31:0]imm_b;
  output [31:0]imm_u;
  output [31:0]imm_j;
  output illegal_opcode;
  output [4:0]rd;
  output [4:0]rs1;
  output [4:0]rs2;
  output rs1_used;
  output rs2_used;

  wire \<const0> ;
  wire [2:0]fmt;
  wire \fmt[1]_INST_0_i_1_n_0 ;
  wire \fmt[2]_INST_0_i_1_n_0 ;
  wire illegal_opcode;
  wire [31:0]instr;
  wire rs1_used;
  wire rs1_used_INST_0_i_1_n_0;
  wire rs2_used;

  assign bit30 = instr[30];
  assign funct3[2:0] = instr[14:12];
  assign funct7[6:0] = instr[31:25];
  assign imm_b[31] = instr[31];
  assign imm_b[30] = instr[31];
  assign imm_b[29] = instr[31];
  assign imm_b[28] = instr[31];
  assign imm_b[27] = instr[31];
  assign imm_b[26] = instr[31];
  assign imm_b[25] = instr[31];
  assign imm_b[24] = instr[31];
  assign imm_b[23] = instr[31];
  assign imm_b[22] = instr[31];
  assign imm_b[21] = instr[31];
  assign imm_b[20] = instr[31];
  assign imm_b[19] = instr[31];
  assign imm_b[18] = instr[31];
  assign imm_b[17] = instr[31];
  assign imm_b[16] = instr[31];
  assign imm_b[15] = instr[31];
  assign imm_b[14] = instr[31];
  assign imm_b[13] = instr[31];
  assign imm_b[12] = instr[31];
  assign imm_b[11] = instr[7];
  assign imm_b[10:5] = instr[30:25];
  assign imm_b[4:1] = instr[11:8];
  assign imm_b[0] = \<const0> ;
  assign imm_i[31] = instr[31];
  assign imm_i[30] = instr[31];
  assign imm_i[29] = instr[31];
  assign imm_i[28] = instr[31];
  assign imm_i[27] = instr[31];
  assign imm_i[26] = instr[31];
  assign imm_i[25] = instr[31];
  assign imm_i[24] = instr[31];
  assign imm_i[23] = instr[31];
  assign imm_i[22] = instr[31];
  assign imm_i[21] = instr[31];
  assign imm_i[20] = instr[31];
  assign imm_i[19] = instr[31];
  assign imm_i[18] = instr[31];
  assign imm_i[17] = instr[31];
  assign imm_i[16] = instr[31];
  assign imm_i[15] = instr[31];
  assign imm_i[14] = instr[31];
  assign imm_i[13] = instr[31];
  assign imm_i[12] = instr[31];
  assign imm_i[11:0] = instr[31:20];
  assign imm_j[31] = instr[31];
  assign imm_j[30] = instr[31];
  assign imm_j[29] = instr[31];
  assign imm_j[28] = instr[31];
  assign imm_j[27] = instr[31];
  assign imm_j[26] = instr[31];
  assign imm_j[25] = instr[31];
  assign imm_j[24] = instr[31];
  assign imm_j[23] = instr[31];
  assign imm_j[22] = instr[31];
  assign imm_j[21] = instr[31];
  assign imm_j[20] = instr[31];
  assign imm_j[19:12] = instr[19:12];
  assign imm_j[11] = instr[20];
  assign imm_j[10:1] = instr[30:21];
  assign imm_j[0] = \<const0> ;
  assign imm_s[31] = instr[31];
  assign imm_s[30] = instr[31];
  assign imm_s[29] = instr[31];
  assign imm_s[28] = instr[31];
  assign imm_s[27] = instr[31];
  assign imm_s[26] = instr[31];
  assign imm_s[25] = instr[31];
  assign imm_s[24] = instr[31];
  assign imm_s[23] = instr[31];
  assign imm_s[22] = instr[31];
  assign imm_s[21] = instr[31];
  assign imm_s[20] = instr[31];
  assign imm_s[19] = instr[31];
  assign imm_s[18] = instr[31];
  assign imm_s[17] = instr[31];
  assign imm_s[16] = instr[31];
  assign imm_s[15] = instr[31];
  assign imm_s[14] = instr[31];
  assign imm_s[13] = instr[31];
  assign imm_s[12] = instr[31];
  assign imm_s[11:5] = instr[31:25];
  assign imm_s[4:0] = instr[11:7];
  assign imm_u[31:12] = instr[31:12];
  assign imm_u[11] = \<const0> ;
  assign imm_u[10] = \<const0> ;
  assign imm_u[9] = \<const0> ;
  assign imm_u[8] = \<const0> ;
  assign imm_u[7] = \<const0> ;
  assign imm_u[6] = \<const0> ;
  assign imm_u[5] = \<const0> ;
  assign imm_u[4] = \<const0> ;
  assign imm_u[3] = \<const0> ;
  assign imm_u[2] = \<const0> ;
  assign imm_u[1] = \<const0> ;
  assign imm_u[0] = \<const0> ;
  assign opcode[6:0] = instr[6:0];
  assign rd[4:0] = instr[11:7];
  assign rs1[4:0] = instr[19:15];
  assign rs2[4:0] = instr[24:20];
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFAFBB)) 
    \fmt[0]_INST_0 
       (.I0(\fmt[2]_INST_0_i_1_n_0 ),
        .I1(instr[5]),
        .I2(instr[4]),
        .I3(instr[2]),
        .I4(instr[6]),
        .O(fmt[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FF870C)) 
    \fmt[1]_INST_0 
       (.I0(instr[6]),
        .I1(instr[5]),
        .I2(instr[4]),
        .I3(instr[2]),
        .I4(instr[3]),
        .I5(\fmt[1]_INST_0_i_1_n_0 ),
        .O(fmt[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4FFF)) 
    \fmt[1]_INST_0_i_1 
       (.I0(instr[5]),
        .I1(instr[6]),
        .I2(instr[1]),
        .I3(instr[0]),
        .O(\fmt[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hEAFFFAFA)) 
    \fmt[2]_INST_0 
       (.I0(\fmt[2]_INST_0_i_1_n_0 ),
        .I1(instr[4]),
        .I2(instr[2]),
        .I3(instr[5]),
        .I4(instr[6]),
        .O(fmt[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \fmt[2]_INST_0_i_1 
       (.I0(instr[1]),
        .I1(instr[0]),
        .I2(instr[3]),
        .O(\fmt[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECEEEFE)) 
    illegal_opcode_INST_0
       (.I0(instr[3]),
        .I1(\fmt[1]_INST_0_i_1_n_0 ),
        .I2(instr[2]),
        .I3(instr[4]),
        .I4(instr[6]),
        .O(illegal_opcode));
  LUT6 #(
    .INIT(64'h000008080000FF08)) 
    rs1_used_INST_0
       (.I0(instr[5]),
        .I1(instr[6]),
        .I2(instr[4]),
        .I3(rs1_used_INST_0_i_1_n_0),
        .I4(\fmt[2]_INST_0_i_1_n_0 ),
        .I5(instr[2]),
        .O(rs1_used));
  LUT5 #(
    .INIT(32'h00E0FFFF)) 
    rs1_used_INST_0_i_1
       (.I0(instr[12]),
        .I1(instr[13]),
        .I2(instr[5]),
        .I3(instr[14]),
        .I4(instr[6]),
        .O(rs1_used_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000070)) 
    rs2_used_INST_0
       (.I0(instr[4]),
        .I1(instr[6]),
        .I2(instr[5]),
        .I3(instr[2]),
        .I4(\fmt[2]_INST_0_i_1_n_0 ),
        .O(rs2_used));
endmodule

(* CHECK_LICENSE_TYPE = "RV32_IF_EX_id_ex_reg_0_0,id_ex_reg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "RV32_IF_EX_id_ex_reg_0_0" *) (* X_CORE_INFO = "id_ex_reg,Vivado 2020.1" *) 
module RV32_IF_EX_RV32_IF_EX_id_ex_reg_0_0
   (clk,
    rst,
    id_instr,
    stall,
    bubble,
    id_valid,
    id_pc,
    id_pc_plus4,
    id_pred_next_pc,
    id_rs1_data,
    id_rs2_data,
    id_imm,
    id_imm_u,
    id_rs1,
    id_rs2,
    id_rd,
    id_alu_op,
    id_op_a_sel,
    id_op_b_sel,
    id_branch_en,
    id_branch_funct3,
    id_jal,
    id_jalr,
    id_mem_re,
    id_mem_we,
    id_mem_size,
    id_mem_unsigned,
    id_rd_we,
    id_wb_sel,
    id_illegal_instr,
    ex_valid,
    ex_pc,
    ex_pc_plus4,
    ex_pred_next_pc,
    ex_rs1_data,
    ex_rs2_data,
    ex_imm,
    ex_imm_u,
    ex_rs1,
    ex_rs2,
    ex_rd,
    ex_alu_op,
    ex_op_a_sel,
    ex_op_b_sel,
    ex_branch_en,
    ex_branch_funct3,
    ex_jal,
    ex_jalr,
    ex_mem_re,
    ex_mem_we,
    ex_mem_size,
    ex_mem_unsigned,
    ex_rd_we,
    ex_instr,
    ex_illegal_instr,
    ex_wb_sel);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input [31:0]id_instr;
  input stall;
  input bubble;
  input id_valid;
  input [31:0]id_pc;
  input [31:0]id_pc_plus4;
  input [31:0]id_pred_next_pc;
  input [31:0]id_rs1_data;
  input [31:0]id_rs2_data;
  input [31:0]id_imm;
  input [31:0]id_imm_u;
  input [4:0]id_rs1;
  input [4:0]id_rs2;
  input [4:0]id_rd;
  input [3:0]id_alu_op;
  input [1:0]id_op_a_sel;
  input [1:0]id_op_b_sel;
  input id_branch_en;
  input [2:0]id_branch_funct3;
  input id_jal;
  input id_jalr;
  input id_mem_re;
  input id_mem_we;
  input [1:0]id_mem_size;
  input id_mem_unsigned;
  input id_rd_we;
  input [2:0]id_wb_sel;
  input id_illegal_instr;
  output ex_valid;
  output [31:0]ex_pc;
  output [31:0]ex_pc_plus4;
  output [31:0]ex_pred_next_pc;
  output [31:0]ex_rs1_data;
  output [31:0]ex_rs2_data;
  output [31:0]ex_imm;
  output [31:0]ex_imm_u;
  output [4:0]ex_rs1;
  output [4:0]ex_rs2;
  output [4:0]ex_rd;
  output [3:0]ex_alu_op;
  output [1:0]ex_op_a_sel;
  output [1:0]ex_op_b_sel;
  output ex_branch_en;
  output [2:0]ex_branch_funct3;
  output ex_jal;
  output ex_jalr;
  output ex_mem_re;
  output ex_mem_we;
  output [1:0]ex_mem_size;
  output ex_mem_unsigned;
  output ex_rd_we;
  output [31:0]ex_instr;
  output ex_illegal_instr;
  output [2:0]ex_wb_sel;

  wire bubble;
  wire clk;
  wire [3:0]ex_alu_op;
  wire ex_branch_en;
  wire [2:0]ex_branch_funct3;
  wire ex_illegal_instr;
  wire [31:0]ex_imm;
  wire [31:0]ex_imm_u;
  wire [31:0]ex_instr;
  wire ex_jal;
  wire ex_jalr;
  wire ex_mem_re;
  wire [1:0]ex_mem_size;
  wire ex_mem_unsigned;
  wire ex_mem_we;
  wire [1:0]ex_op_a_sel;
  wire [1:0]ex_op_b_sel;
  wire [31:0]ex_pc;
  wire [31:0]ex_pc_plus4;
  wire [31:0]ex_pred_next_pc;
  wire [4:0]ex_rd;
  wire ex_rd_we;
  wire [4:0]ex_rs1;
  wire [31:0]ex_rs1_data;
  wire [4:0]ex_rs2;
  wire [31:0]ex_rs2_data;
  wire ex_valid;
  wire [2:0]ex_wb_sel;
  wire [3:0]id_alu_op;
  wire id_branch_en;
  wire [2:0]id_branch_funct3;
  wire id_illegal_instr;
  wire [31:0]id_imm;
  wire [31:0]id_imm_u;
  wire [31:0]id_instr;
  wire id_jal;
  wire id_jalr;
  wire id_mem_re;
  wire [1:0]id_mem_size;
  wire id_mem_unsigned;
  wire id_mem_we;
  wire [1:0]id_op_a_sel;
  wire [1:0]id_op_b_sel;
  wire [31:0]id_pc;
  wire [31:0]id_pc_plus4;
  wire [31:0]id_pred_next_pc;
  wire [4:0]id_rd;
  wire id_rd_we;
  wire [4:0]id_rs1;
  wire [31:0]id_rs1_data;
  wire [4:0]id_rs2;
  wire [31:0]id_rs2_data;
  wire id_valid;
  wire [2:0]id_wb_sel;
  wire rst;
  wire stall;

  RV32_IF_EX_id_ex_reg inst
       (.bubble(bubble),
        .clk(clk),
        .ex_alu_op(ex_alu_op),
        .ex_branch_en(ex_branch_en),
        .ex_branch_funct3(ex_branch_funct3),
        .ex_illegal_instr(ex_illegal_instr),
        .ex_imm(ex_imm),
        .ex_imm_u(ex_imm_u),
        .ex_instr(ex_instr),
        .ex_jal(ex_jal),
        .ex_jalr(ex_jalr),
        .ex_mem_re(ex_mem_re),
        .ex_mem_size(ex_mem_size),
        .ex_mem_unsigned(ex_mem_unsigned),
        .ex_mem_we(ex_mem_we),
        .ex_op_a_sel(ex_op_a_sel),
        .ex_op_b_sel(ex_op_b_sel),
        .ex_pc(ex_pc),
        .ex_pc_plus4(ex_pc_plus4),
        .ex_pred_next_pc(ex_pred_next_pc),
        .ex_rd(ex_rd),
        .ex_rd_we(ex_rd_we),
        .ex_rs1(ex_rs1),
        .ex_rs1_data(ex_rs1_data),
        .ex_rs2(ex_rs2),
        .ex_rs2_data(ex_rs2_data),
        .ex_valid(ex_valid),
        .ex_wb_sel(ex_wb_sel),
        .id_alu_op(id_alu_op),
        .id_branch_en(id_branch_en),
        .id_branch_funct3(id_branch_funct3),
        .id_illegal_instr(id_illegal_instr),
        .id_imm(id_imm),
        .id_imm_u(id_imm_u),
        .id_instr(id_instr),
        .id_jal(id_jal),
        .id_jalr(id_jalr),
        .id_mem_re(id_mem_re),
        .id_mem_size(id_mem_size),
        .id_mem_unsigned(id_mem_unsigned),
        .id_mem_we(id_mem_we),
        .id_op_a_sel(id_op_a_sel),
        .id_op_b_sel(id_op_b_sel),
        .id_pc(id_pc),
        .id_pc_plus4(id_pc_plus4),
        .id_pred_next_pc(id_pred_next_pc),
        .id_rd(id_rd),
        .id_rd_we(id_rd_we),
        .id_rs1(id_rs1),
        .id_rs1_data(id_rs1_data),
        .id_rs2(id_rs2),
        .id_rs2_data(id_rs2_data),
        .id_valid(id_valid),
        .id_wb_sel(id_wb_sel),
        .rst(rst),
        .stall(stall));
endmodule

(* CHECK_LICENSE_TYPE = "RV32_IF_EX_if_id_reg_0_0,if_id_reg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "RV32_IF_EX_if_id_reg_0_0" *) (* X_CORE_INFO = "if_id_reg,Vivado 2020.1" *) 
module RV32_IF_EX_RV32_IF_EX_if_id_reg_0_0
   (clk,
    rst,
    enable,
    flush,
    if_pc,
    if_pc_plus4,
    if_instr,
    id_pc,
    id_pc_plus4,
    id_instr);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input enable;
  input flush;
  input [31:0]if_pc;
  input [31:0]if_pc_plus4;
  input [31:0]if_instr;
  output [31:0]id_pc;
  output [31:0]id_pc_plus4;
  output [31:0]id_instr;

  wire clk;
  wire enable;
  wire flush;
  wire [31:0]id_instr;
  wire [31:0]id_pc;
  wire [31:0]id_pc_plus4;
  wire [31:0]if_instr;
  wire [31:0]if_pc;
  wire [31:0]if_pc_plus4;
  wire rst;

  RV32_IF_EX_if_id_reg inst
       (.clk(clk),
        .enable(enable),
        .flush(flush),
        .id_instr(id_instr),
        .id_pc(id_pc),
        .id_pc_plus4(id_pc_plus4),
        .if_instr(if_instr),
        .if_pc(if_pc),
        .if_pc_plus4(if_pc_plus4),
        .rst(rst));
endmodule

(* CHECK_LICENSE_TYPE = "RV32_IF_EX_imm_mux_0_0,imm_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "RV32_IF_EX_imm_mux_0_0" *) (* X_CORE_INFO = "imm_mux,Vivado 2020.1" *) 
module RV32_IF_EX_RV32_IF_EX_imm_mux_0_0
   (imm_sel,
    imm_i,
    imm_s,
    imm_b,
    imm_u,
    imm_j,
    imm_out);
  input [2:0]imm_sel;
  input [31:0]imm_i;
  input [31:0]imm_s;
  input [31:0]imm_b;
  input [31:0]imm_u;
  input [31:0]imm_j;
  output [31:0]imm_out;

  wire [31:0]imm_b;
  wire [31:0]imm_i;
  wire [31:0]imm_j;
  wire [31:0]imm_out;
  wire [31:0]imm_s;
  wire [2:0]imm_sel;
  wire [31:0]imm_u;

  RV32_IF_EX_imm_mux inst
       (.imm_b(imm_b),
        .imm_i(imm_i),
        .imm_j(imm_j),
        .imm_out(imm_out),
        .imm_s(imm_s),
        .imm_sel(imm_sel),
        .imm_u(imm_u));
endmodule

(* CHECK_LICENSE_TYPE = "RV32_IF_EX_pc_to_imem_addr_0_0,pc_to_imem_addr,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "RV32_IF_EX_pc_to_imem_addr_0_0" *) (* X_CORE_INFO = "pc_to_imem_addr,Vivado 2020.1" *) 
module RV32_IF_EX_RV32_IF_EX_pc_to_imem_addr_0_0
   (pc,
    addr);
  input [31:0]pc;
  output [10:0]addr;

  wire [31:0]pc;

  assign addr[10:0] = pc[12:2];
endmodule

(* CHECK_LICENSE_TYPE = "RV32_IF_EX_pc_unit_0_0,pc_unit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "RV32_IF_EX_pc_unit_0_0" *) (* X_CORE_INFO = "pc_unit,Vivado 2020.1" *) 
module RV32_IF_EX_RV32_IF_EX_pc_unit_0_0
   (rst,
    clk,
    pc_en,
    pc,
    pc_plus4);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input pc_en;
  output [31:0]pc;
  output [31:0]pc_plus4;

  wire \<const0> ;
  wire clk;
  wire [31:2]\^pc ;
  wire pc_en;
  wire [31:2]\^pc_plus4 ;
  wire rst;

  assign pc[31:2] = \^pc [31:2];
  assign pc[1] = \<const0> ;
  assign pc[0] = \<const0> ;
  assign pc_plus4[31:2] = \^pc_plus4 [31:2];
  assign pc_plus4[1] = \<const0> ;
  assign pc_plus4[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  RV32_IF_EX_pc_unit inst
       (.clk(clk),
        .pc(\^pc ),
        .pc_en(pc_en),
        .pc_plus4(\^pc_plus4 ),
        .rst(rst));
endmodule

(* CHECK_LICENSE_TYPE = "RV32_IF_EX_regfile_0_0,regfile,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "RV32_IF_EX_regfile_0_0" *) (* X_CORE_INFO = "regfile,Vivado 2020.1" *) 
module RV32_IF_EX_RV32_IF_EX_regfile_0_0
   (clk,
    rs1_addr,
    rs2_addr,
    rs1_rdata,
    rs2_rdata,
    rd_we,
    rd_addr,
    rd_wdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [4:0]rs1_addr;
  input [4:0]rs2_addr;
  output [31:0]rs1_rdata;
  output [31:0]rs2_rdata;
  input rd_we;
  input [4:0]rd_addr;
  input [31:0]rd_wdata;

  wire clk;
  wire [4:0]rd_addr;
  wire [31:0]rd_wdata;
  wire rd_we;
  wire [4:0]rs1_addr;
  wire [31:0]rs1_rdata;
  wire \rs1_rdata[31]_INST_0_i_1_n_0 ;
  wire \rs1_rdata[31]_INST_0_i_2_n_0 ;
  wire \rs1_rdata[31]_INST_0_i_4_n_0 ;
  wire [4:0]rs2_addr;
  wire [31:0]rs2_rdata;
  wire \rs2_rdata[31]_INST_0_i_1_n_0 ;
  wire \rs2_rdata[31]_INST_0_i_2_n_0 ;
  wire \rs2_rdata[31]_INST_0_i_3_n_0 ;

  RV32_IF_EX_regfile inst
       (.clk(clk),
        .\ex_rs1_data_reg[0] (\rs1_rdata[31]_INST_0_i_1_n_0 ),
        .\ex_rs1_data_reg[0]_0 (\rs1_rdata[31]_INST_0_i_2_n_0 ),
        .\ex_rs1_data_reg[0]_1 (\rs1_rdata[31]_INST_0_i_4_n_0 ),
        .\ex_rs2_data_reg[0] (\rs2_rdata[31]_INST_0_i_1_n_0 ),
        .\ex_rs2_data_reg[0]_0 (\rs2_rdata[31]_INST_0_i_2_n_0 ),
        .\ex_rs2_data_reg[0]_1 (\rs2_rdata[31]_INST_0_i_3_n_0 ),
        .rd_addr(rd_addr),
        .rd_wdata(rd_wdata),
        .rd_we(rd_we),
        .rs1_addr(rs1_addr),
        .rs1_rdata(rs1_rdata),
        .rs2_addr(rs2_addr),
        .rs2_rdata(rs2_rdata));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rs1_rdata[31]_INST_0_i_1 
       (.I0(rs1_addr[3]),
        .I1(rs1_addr[4]),
        .I2(rs1_addr[2]),
        .I3(rs1_addr[0]),
        .I4(rs1_addr[1]),
        .O(\rs1_rdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \rs1_rdata[31]_INST_0_i_2 
       (.I0(rs1_addr[4]),
        .I1(rd_addr[4]),
        .I2(rs1_addr[3]),
        .I3(rd_addr[3]),
        .I4(rd_addr[2]),
        .I5(rs1_addr[2]),
        .O(\rs1_rdata[31]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rs1_rdata[31]_INST_0_i_4 
       (.I0(rd_addr[0]),
        .I1(rs1_addr[0]),
        .I2(rd_addr[1]),
        .I3(rs1_addr[1]),
        .O(\rs1_rdata[31]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rs2_rdata[31]_INST_0_i_1 
       (.I0(rs2_addr[3]),
        .I1(rs2_addr[4]),
        .I2(rs2_addr[2]),
        .I3(rs2_addr[0]),
        .I4(rs2_addr[1]),
        .O(\rs2_rdata[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \rs2_rdata[31]_INST_0_i_2 
       (.I0(rs2_addr[4]),
        .I1(rd_addr[4]),
        .I2(rs2_addr[3]),
        .I3(rd_addr[3]),
        .I4(rd_addr[2]),
        .I5(rs2_addr[2]),
        .O(\rs2_rdata[31]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \rs2_rdata[31]_INST_0_i_3 
       (.I0(rd_addr[0]),
        .I1(rs2_addr[0]),
        .I2(rd_addr[1]),
        .I3(rs2_addr[1]),
        .O(\rs2_rdata[31]_INST_0_i_3_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "RV32_IF_EX_rom_memory_0_0,rom_memory,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "RV32_IF_EX_rom_memory_0_0" *) (* X_CORE_INFO = "rom_memory,Vivado 2020.1" *) 
module RV32_IF_EX_RV32_IF_EX_rom_memory_0_0
   (clk,
    en,
    addr,
    instr);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input en;
  input [10:0]addr;
  output [31:0]instr;

  wire [10:0]addr;
  wire clk;
  wire en;
  wire [11:0]\^instr ;

  assign instr[31] = \^instr [11];
  assign instr[30] = \^instr [11];
  assign instr[29] = \^instr [11];
  assign instr[28] = \^instr [11];
  assign instr[27] = \^instr [11];
  assign instr[26] = \^instr [11];
  assign instr[25] = \^instr [11];
  assign instr[24:20] = \^instr [11:7];
  assign instr[19] = \^instr [11];
  assign instr[18] = \^instr [11];
  assign instr[17] = \^instr [11];
  assign instr[16] = \^instr [11];
  assign instr[15] = \^instr [11];
  assign instr[14] = \^instr [11];
  assign instr[13] = \^instr [11];
  assign instr[12] = \^instr [11];
  assign instr[11:7] = \^instr [11:7];
  assign instr[6] = \^instr [2];
  assign instr[5] = \^instr [2];
  assign instr[4] = \^instr [4];
  assign instr[3] = \^instr [2];
  assign instr[2] = \^instr [2];
  assign instr[1] = \^instr [0];
  assign instr[0] = \^instr [0];
  RV32_IF_EX_rom_memory inst
       (.addr(addr),
        .clk(clk),
        .en(en),
        .instr({\^instr [11:7],\^instr [2],\^instr [4],\^instr [0]}));
endmodule

(* CHECK_LICENSE_TYPE = "RV32_IF_EX_sim_constant_0_0,sim_constant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "RV32_IF_EX_sim_constant_0_0" *) (* X_CORE_INFO = "sim_constant,Vivado 2020.1" *) 
module RV32_IF_EX_RV32_IF_EX_sim_constant_0_0
   (dout);
  output [0:0]dout;

  wire \<const1> ;

  assign dout[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
endmodule

(* CHECK_LICENSE_TYPE = "RV32_IF_EX_sim_constant_0_1,sim_constant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "RV32_IF_EX_sim_constant_0_1" *) (* X_CORE_INFO = "sim_constant,Vivado 2020.1" *) 
module RV32_IF_EX_RV32_IF_EX_sim_constant_0_1
   (dout);
  output [0:0]dout;

  wire \<const0> ;

  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "RV32_IF_EX_sim_constant_1_0,sim_constant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "RV32_IF_EX_sim_constant_1_0" *) (* X_CORE_INFO = "sim_constant,Vivado 2020.1" *) 
module RV32_IF_EX_RV32_IF_EX_sim_constant_1_0
   (dout);
  output [0:0]dout;

  wire \<const1> ;

  assign dout[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "id_ex_reg" *) 
module RV32_IF_EX_id_ex_reg
   (ex_valid,
    ex_pc,
    ex_pc_plus4,
    ex_pred_next_pc,
    ex_rs1_data,
    ex_rs2_data,
    ex_imm,
    ex_imm_u,
    ex_rs1,
    ex_rs2,
    ex_rd,
    ex_alu_op,
    ex_op_a_sel,
    ex_op_b_sel,
    ex_branch_en,
    ex_branch_funct3,
    ex_jal,
    ex_jalr,
    ex_mem_re,
    ex_mem_we,
    ex_mem_size,
    ex_mem_unsigned,
    ex_rd_we,
    ex_instr,
    ex_illegal_instr,
    ex_wb_sel,
    id_valid,
    clk,
    id_pc,
    id_pc_plus4,
    id_pred_next_pc,
    id_rs1_data,
    id_rs2_data,
    id_imm,
    id_imm_u,
    id_rs1,
    id_rs2,
    id_rd,
    id_alu_op,
    id_op_a_sel,
    id_op_b_sel,
    id_branch_en,
    id_branch_funct3,
    id_jal,
    id_jalr,
    id_mem_re,
    id_mem_we,
    id_mem_size,
    id_mem_unsigned,
    id_instr,
    id_wb_sel,
    rst,
    stall,
    bubble,
    id_rd_we,
    id_illegal_instr);
  output ex_valid;
  output [31:0]ex_pc;
  output [31:0]ex_pc_plus4;
  output [31:0]ex_pred_next_pc;
  output [31:0]ex_rs1_data;
  output [31:0]ex_rs2_data;
  output [31:0]ex_imm;
  output [31:0]ex_imm_u;
  output [4:0]ex_rs1;
  output [4:0]ex_rs2;
  output [4:0]ex_rd;
  output [3:0]ex_alu_op;
  output [1:0]ex_op_a_sel;
  output [1:0]ex_op_b_sel;
  output ex_branch_en;
  output [2:0]ex_branch_funct3;
  output ex_jal;
  output ex_jalr;
  output ex_mem_re;
  output ex_mem_we;
  output [1:0]ex_mem_size;
  output ex_mem_unsigned;
  output ex_rd_we;
  output [31:0]ex_instr;
  output ex_illegal_instr;
  output [2:0]ex_wb_sel;
  input id_valid;
  input clk;
  input [31:0]id_pc;
  input [31:0]id_pc_plus4;
  input [31:0]id_pred_next_pc;
  input [31:0]id_rs1_data;
  input [31:0]id_rs2_data;
  input [31:0]id_imm;
  input [31:0]id_imm_u;
  input [4:0]id_rs1;
  input [4:0]id_rs2;
  input [4:0]id_rd;
  input [3:0]id_alu_op;
  input [1:0]id_op_a_sel;
  input [1:0]id_op_b_sel;
  input id_branch_en;
  input [2:0]id_branch_funct3;
  input id_jal;
  input id_jalr;
  input id_mem_re;
  input id_mem_we;
  input [1:0]id_mem_size;
  input id_mem_unsigned;
  input [31:0]id_instr;
  input [2:0]id_wb_sel;
  input rst;
  input stall;
  input bubble;
  input id_rd_we;
  input id_illegal_instr;

  wire bubble;
  wire clk;
  wire [3:0]ex_alu_op;
  wire ex_branch_en;
  wire [2:0]ex_branch_funct3;
  wire ex_illegal_instr;
  wire ex_illegal_instr0;
  wire [31:0]ex_imm;
  wire [31:0]ex_imm_u;
  wire [31:0]ex_instr;
  wire ex_jal;
  wire ex_jalr;
  wire ex_mem_re;
  wire [1:0]ex_mem_size;
  wire ex_mem_unsigned;
  wire ex_mem_we;
  wire [1:0]ex_op_a_sel;
  wire [1:0]ex_op_b_sel;
  wire [31:0]ex_pc;
  wire [31:0]ex_pc_plus4;
  wire [31:0]ex_pred_next_pc;
  wire [4:0]ex_rd;
  wire ex_rd_we;
  wire ex_rd_we0;
  wire [4:0]ex_rs1;
  wire [31:0]ex_rs1_data;
  wire [4:0]ex_rs2;
  wire [31:0]ex_rs2_data;
  wire ex_valid;
  wire ex_valid_i_1_n_0;
  wire [2:0]ex_wb_sel;
  wire [3:0]id_alu_op;
  wire id_branch_en;
  wire [2:0]id_branch_funct3;
  wire id_illegal_instr;
  wire [31:0]id_imm;
  wire [31:0]id_imm_u;
  wire [31:0]id_instr;
  wire id_jal;
  wire id_jalr;
  wire id_mem_re;
  wire [1:0]id_mem_size;
  wire id_mem_unsigned;
  wire id_mem_we;
  wire [1:0]id_op_a_sel;
  wire [1:0]id_op_b_sel;
  wire [31:0]id_pc;
  wire [31:0]id_pc_plus4;
  wire [31:0]id_pred_next_pc;
  wire [4:0]id_rd;
  wire id_rd_we;
  wire [4:0]id_rs1;
  wire [31:0]id_rs1_data;
  wire [4:0]id_rs2;
  wire [31:0]id_rs2_data;
  wire id_valid;
  wire [2:0]id_wb_sel;
  wire p_0_in;
  wire rst;
  wire stall;

  FDRE \ex_alu_op_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_alu_op[0]),
        .Q(ex_alu_op[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_alu_op_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_alu_op[1]),
        .Q(ex_alu_op[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_alu_op_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_alu_op[2]),
        .Q(ex_alu_op[2]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_alu_op_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_alu_op[3]),
        .Q(ex_alu_op[3]),
        .R(ex_valid_i_1_n_0));
  FDRE ex_branch_en_reg
       (.C(clk),
        .CE(p_0_in),
        .D(id_branch_en),
        .Q(ex_branch_en),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_branch_funct3_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_branch_funct3[0]),
        .Q(ex_branch_funct3[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_branch_funct3_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_branch_funct3[1]),
        .Q(ex_branch_funct3[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_branch_funct3_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_branch_funct3[2]),
        .Q(ex_branch_funct3[2]),
        .R(ex_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ex_illegal_instr_i_1
       (.I0(id_illegal_instr),
        .I1(id_valid),
        .O(ex_illegal_instr0));
  FDRE ex_illegal_instr_reg
       (.C(clk),
        .CE(p_0_in),
        .D(ex_illegal_instr0),
        .Q(ex_illegal_instr),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[0]),
        .Q(ex_imm[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[10]),
        .Q(ex_imm[10]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[11]),
        .Q(ex_imm[11]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[12]),
        .Q(ex_imm[12]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[13]),
        .Q(ex_imm[13]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[14]),
        .Q(ex_imm[14]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[15]),
        .Q(ex_imm[15]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[16]),
        .Q(ex_imm[16]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[17]),
        .Q(ex_imm[17]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[18]),
        .Q(ex_imm[18]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[19]),
        .Q(ex_imm[19]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[1]),
        .Q(ex_imm[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[20]),
        .Q(ex_imm[20]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[21]),
        .Q(ex_imm[21]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[22]),
        .Q(ex_imm[22]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[23]),
        .Q(ex_imm[23]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[24]),
        .Q(ex_imm[24]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[25]),
        .Q(ex_imm[25]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[26]),
        .Q(ex_imm[26]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[27]),
        .Q(ex_imm[27]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[28]),
        .Q(ex_imm[28]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[29]),
        .Q(ex_imm[29]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[2]),
        .Q(ex_imm[2]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[30]),
        .Q(ex_imm[30]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[31]),
        .Q(ex_imm[31]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[3]),
        .Q(ex_imm[3]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[4]),
        .Q(ex_imm[4]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[5]),
        .Q(ex_imm[5]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[6]),
        .Q(ex_imm[6]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[7]),
        .Q(ex_imm[7]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[8]),
        .Q(ex_imm[8]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm[9]),
        .Q(ex_imm[9]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[0]),
        .Q(ex_imm_u[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[10]),
        .Q(ex_imm_u[10]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[11]),
        .Q(ex_imm_u[11]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[12]),
        .Q(ex_imm_u[12]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[13]),
        .Q(ex_imm_u[13]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[14]),
        .Q(ex_imm_u[14]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[15]),
        .Q(ex_imm_u[15]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[16]),
        .Q(ex_imm_u[16]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[17]),
        .Q(ex_imm_u[17]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[18]),
        .Q(ex_imm_u[18]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[19]),
        .Q(ex_imm_u[19]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[1]),
        .Q(ex_imm_u[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[20]),
        .Q(ex_imm_u[20]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[21]),
        .Q(ex_imm_u[21]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[22]),
        .Q(ex_imm_u[22]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[23]),
        .Q(ex_imm_u[23]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[24]),
        .Q(ex_imm_u[24]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[25]),
        .Q(ex_imm_u[25]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[26]),
        .Q(ex_imm_u[26]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[27]),
        .Q(ex_imm_u[27]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[28]),
        .Q(ex_imm_u[28]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[29]),
        .Q(ex_imm_u[29]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[2]),
        .Q(ex_imm_u[2]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[30]),
        .Q(ex_imm_u[30]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[31]),
        .Q(ex_imm_u[31]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[3]),
        .Q(ex_imm_u[3]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[4]),
        .Q(ex_imm_u[4]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[5]),
        .Q(ex_imm_u[5]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[6]),
        .Q(ex_imm_u[6]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[7]),
        .Q(ex_imm_u[7]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[8]),
        .Q(ex_imm_u[8]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_imm_u_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_imm_u[9]),
        .Q(ex_imm_u[9]),
        .R(ex_valid_i_1_n_0));
  FDSE \ex_instr_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[0]),
        .Q(ex_instr[0]),
        .S(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[10]),
        .Q(ex_instr[10]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[11]),
        .Q(ex_instr[11]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[12]),
        .Q(ex_instr[12]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[13]),
        .Q(ex_instr[13]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[14]),
        .Q(ex_instr[14]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[15]),
        .Q(ex_instr[15]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[16]),
        .Q(ex_instr[16]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[17]),
        .Q(ex_instr[17]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[18]),
        .Q(ex_instr[18]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[19]),
        .Q(ex_instr[19]),
        .R(ex_valid_i_1_n_0));
  FDSE \ex_instr_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[1]),
        .Q(ex_instr[1]),
        .S(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[20]),
        .Q(ex_instr[20]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[21]),
        .Q(ex_instr[21]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[22]),
        .Q(ex_instr[22]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[23]),
        .Q(ex_instr[23]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[24]),
        .Q(ex_instr[24]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[25]),
        .Q(ex_instr[25]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[26]),
        .Q(ex_instr[26]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[27]),
        .Q(ex_instr[27]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[28]),
        .Q(ex_instr[28]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[29]),
        .Q(ex_instr[29]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[2]),
        .Q(ex_instr[2]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[30]),
        .Q(ex_instr[30]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[31]),
        .Q(ex_instr[31]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[3]),
        .Q(ex_instr[3]),
        .R(ex_valid_i_1_n_0));
  FDSE \ex_instr_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[4]),
        .Q(ex_instr[4]),
        .S(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[5]),
        .Q(ex_instr[5]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[6]),
        .Q(ex_instr[6]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[7]),
        .Q(ex_instr[7]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[8]),
        .Q(ex_instr[8]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_instr_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_instr[9]),
        .Q(ex_instr[9]),
        .R(ex_valid_i_1_n_0));
  FDRE ex_jal_reg
       (.C(clk),
        .CE(p_0_in),
        .D(id_jal),
        .Q(ex_jal),
        .R(ex_valid_i_1_n_0));
  FDRE ex_jalr_reg
       (.C(clk),
        .CE(p_0_in),
        .D(id_jalr),
        .Q(ex_jalr),
        .R(ex_valid_i_1_n_0));
  FDRE ex_mem_re_reg
       (.C(clk),
        .CE(p_0_in),
        .D(id_mem_re),
        .Q(ex_mem_re),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_mem_size_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_mem_size[0]),
        .Q(ex_mem_size[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_mem_size_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_mem_size[1]),
        .Q(ex_mem_size[1]),
        .R(ex_valid_i_1_n_0));
  FDRE ex_mem_unsigned_reg
       (.C(clk),
        .CE(p_0_in),
        .D(id_mem_unsigned),
        .Q(ex_mem_unsigned),
        .R(ex_valid_i_1_n_0));
  FDRE ex_mem_we_reg
       (.C(clk),
        .CE(p_0_in),
        .D(id_mem_we),
        .Q(ex_mem_we),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_op_a_sel_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_op_a_sel[0]),
        .Q(ex_op_a_sel[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_op_a_sel_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_op_a_sel[1]),
        .Q(ex_op_a_sel[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_op_b_sel_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_op_b_sel[0]),
        .Q(ex_op_b_sel[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_op_b_sel_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_op_b_sel[1]),
        .Q(ex_op_b_sel[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[0]),
        .Q(ex_pc_plus4[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[10]),
        .Q(ex_pc_plus4[10]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[11]),
        .Q(ex_pc_plus4[11]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[12]),
        .Q(ex_pc_plus4[12]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[13]),
        .Q(ex_pc_plus4[13]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[14]),
        .Q(ex_pc_plus4[14]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[15]),
        .Q(ex_pc_plus4[15]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[16]),
        .Q(ex_pc_plus4[16]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[17]),
        .Q(ex_pc_plus4[17]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[18]),
        .Q(ex_pc_plus4[18]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[19]),
        .Q(ex_pc_plus4[19]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[1]),
        .Q(ex_pc_plus4[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[20]),
        .Q(ex_pc_plus4[20]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[21]),
        .Q(ex_pc_plus4[21]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[22]),
        .Q(ex_pc_plus4[22]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[23]),
        .Q(ex_pc_plus4[23]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[24]),
        .Q(ex_pc_plus4[24]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[25]),
        .Q(ex_pc_plus4[25]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[26]),
        .Q(ex_pc_plus4[26]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[27]),
        .Q(ex_pc_plus4[27]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[28]),
        .Q(ex_pc_plus4[28]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[29]),
        .Q(ex_pc_plus4[29]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[2]),
        .Q(ex_pc_plus4[2]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[30]),
        .Q(ex_pc_plus4[30]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[31]),
        .Q(ex_pc_plus4[31]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[3]),
        .Q(ex_pc_plus4[3]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[4]),
        .Q(ex_pc_plus4[4]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[5]),
        .Q(ex_pc_plus4[5]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[6]),
        .Q(ex_pc_plus4[6]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[7]),
        .Q(ex_pc_plus4[7]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[8]),
        .Q(ex_pc_plus4[8]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_plus4_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc_plus4[9]),
        .Q(ex_pc_plus4[9]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[0]),
        .Q(ex_pc[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[10]),
        .Q(ex_pc[10]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[11]),
        .Q(ex_pc[11]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[12]),
        .Q(ex_pc[12]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[13]),
        .Q(ex_pc[13]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[14]),
        .Q(ex_pc[14]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[15]),
        .Q(ex_pc[15]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[16]),
        .Q(ex_pc[16]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[17]),
        .Q(ex_pc[17]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[18]),
        .Q(ex_pc[18]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[19]),
        .Q(ex_pc[19]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[1]),
        .Q(ex_pc[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[20]),
        .Q(ex_pc[20]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[21]),
        .Q(ex_pc[21]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[22]),
        .Q(ex_pc[22]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[23]),
        .Q(ex_pc[23]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[24]),
        .Q(ex_pc[24]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[25]),
        .Q(ex_pc[25]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[26]),
        .Q(ex_pc[26]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[27]),
        .Q(ex_pc[27]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[28]),
        .Q(ex_pc[28]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[29]),
        .Q(ex_pc[29]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[2]),
        .Q(ex_pc[2]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[30]),
        .Q(ex_pc[30]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[31]),
        .Q(ex_pc[31]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[3]),
        .Q(ex_pc[3]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[4]),
        .Q(ex_pc[4]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[5]),
        .Q(ex_pc[5]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[6]),
        .Q(ex_pc[6]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[7]),
        .Q(ex_pc[7]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[8]),
        .Q(ex_pc[8]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pc_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pc[9]),
        .Q(ex_pc[9]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[0]),
        .Q(ex_pred_next_pc[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[10]),
        .Q(ex_pred_next_pc[10]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[11]),
        .Q(ex_pred_next_pc[11]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[12]),
        .Q(ex_pred_next_pc[12]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[13]),
        .Q(ex_pred_next_pc[13]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[14]),
        .Q(ex_pred_next_pc[14]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[15]),
        .Q(ex_pred_next_pc[15]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[16]),
        .Q(ex_pred_next_pc[16]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[17]),
        .Q(ex_pred_next_pc[17]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[18]),
        .Q(ex_pred_next_pc[18]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[19]),
        .Q(ex_pred_next_pc[19]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[1]),
        .Q(ex_pred_next_pc[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[20]),
        .Q(ex_pred_next_pc[20]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[21]),
        .Q(ex_pred_next_pc[21]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[22]),
        .Q(ex_pred_next_pc[22]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[23]),
        .Q(ex_pred_next_pc[23]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[24]),
        .Q(ex_pred_next_pc[24]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[25]),
        .Q(ex_pred_next_pc[25]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[26]),
        .Q(ex_pred_next_pc[26]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[27]),
        .Q(ex_pred_next_pc[27]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[28]),
        .Q(ex_pred_next_pc[28]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[29]),
        .Q(ex_pred_next_pc[29]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[2]),
        .Q(ex_pred_next_pc[2]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[30]),
        .Q(ex_pred_next_pc[30]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[31]),
        .Q(ex_pred_next_pc[31]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[3]),
        .Q(ex_pred_next_pc[3]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[4]),
        .Q(ex_pred_next_pc[4]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[5]),
        .Q(ex_pred_next_pc[5]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[6]),
        .Q(ex_pred_next_pc[6]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[7]),
        .Q(ex_pred_next_pc[7]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[8]),
        .Q(ex_pred_next_pc[8]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_pred_next_pc_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_pred_next_pc[9]),
        .Q(ex_pred_next_pc[9]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rd_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rd[0]),
        .Q(ex_rd[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rd_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rd[1]),
        .Q(ex_rd[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rd_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rd[2]),
        .Q(ex_rd[2]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rd_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rd[3]),
        .Q(ex_rd[3]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rd_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rd[4]),
        .Q(ex_rd[4]),
        .R(ex_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ex_rd_we_i_1
       (.I0(id_rd_we),
        .I1(id_valid),
        .O(ex_rd_we0));
  FDRE ex_rd_we_reg
       (.C(clk),
        .CE(p_0_in),
        .D(ex_rd_we0),
        .Q(ex_rd_we),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[0]),
        .Q(ex_rs1_data[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[10]),
        .Q(ex_rs1_data[10]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[11]),
        .Q(ex_rs1_data[11]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[12]),
        .Q(ex_rs1_data[12]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[13]),
        .Q(ex_rs1_data[13]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[14]),
        .Q(ex_rs1_data[14]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[15]),
        .Q(ex_rs1_data[15]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[16]),
        .Q(ex_rs1_data[16]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[17]),
        .Q(ex_rs1_data[17]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[18]),
        .Q(ex_rs1_data[18]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[19]),
        .Q(ex_rs1_data[19]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[1]),
        .Q(ex_rs1_data[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[20]),
        .Q(ex_rs1_data[20]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[21]),
        .Q(ex_rs1_data[21]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[22]),
        .Q(ex_rs1_data[22]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[23]),
        .Q(ex_rs1_data[23]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[24]),
        .Q(ex_rs1_data[24]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[25]),
        .Q(ex_rs1_data[25]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[26]),
        .Q(ex_rs1_data[26]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[27]),
        .Q(ex_rs1_data[27]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[28]),
        .Q(ex_rs1_data[28]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[29]),
        .Q(ex_rs1_data[29]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[2]),
        .Q(ex_rs1_data[2]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[30]),
        .Q(ex_rs1_data[30]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[31]),
        .Q(ex_rs1_data[31]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[3]),
        .Q(ex_rs1_data[3]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[4]),
        .Q(ex_rs1_data[4]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[5]),
        .Q(ex_rs1_data[5]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[6]),
        .Q(ex_rs1_data[6]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[7]),
        .Q(ex_rs1_data[7]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[8]),
        .Q(ex_rs1_data[8]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_data_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1_data[9]),
        .Q(ex_rs1_data[9]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1[0]),
        .Q(ex_rs1[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1[1]),
        .Q(ex_rs1[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1[2]),
        .Q(ex_rs1[2]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1[3]),
        .Q(ex_rs1[3]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs1_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs1[4]),
        .Q(ex_rs1[4]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[0]),
        .Q(ex_rs2_data[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[10]),
        .Q(ex_rs2_data[10]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[11]),
        .Q(ex_rs2_data[11]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[12]),
        .Q(ex_rs2_data[12]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[13]),
        .Q(ex_rs2_data[13]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[14]),
        .Q(ex_rs2_data[14]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[15]),
        .Q(ex_rs2_data[15]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[16]),
        .Q(ex_rs2_data[16]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[17]),
        .Q(ex_rs2_data[17]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[18]),
        .Q(ex_rs2_data[18]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[19]),
        .Q(ex_rs2_data[19]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[1]),
        .Q(ex_rs2_data[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[20]),
        .Q(ex_rs2_data[20]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[21]),
        .Q(ex_rs2_data[21]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[22]),
        .Q(ex_rs2_data[22]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[23]),
        .Q(ex_rs2_data[23]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[24]),
        .Q(ex_rs2_data[24]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[25]),
        .Q(ex_rs2_data[25]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[26]),
        .Q(ex_rs2_data[26]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[27]),
        .Q(ex_rs2_data[27]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[28]),
        .Q(ex_rs2_data[28]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[29]),
        .Q(ex_rs2_data[29]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[2]),
        .Q(ex_rs2_data[2]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[30]),
        .Q(ex_rs2_data[30]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[31]),
        .Q(ex_rs2_data[31]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[3]),
        .Q(ex_rs2_data[3]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[4]),
        .Q(ex_rs2_data[4]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[5]),
        .Q(ex_rs2_data[5]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[6]),
        .Q(ex_rs2_data[6]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[7]),
        .Q(ex_rs2_data[7]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[8]),
        .Q(ex_rs2_data[8]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_data_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2_data[9]),
        .Q(ex_rs2_data[9]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2[0]),
        .Q(ex_rs2[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2[1]),
        .Q(ex_rs2[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2[2]),
        .Q(ex_rs2[2]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2[3]),
        .Q(ex_rs2[3]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_rs2_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_rs2[4]),
        .Q(ex_rs2[4]),
        .R(ex_valid_i_1_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    ex_valid_i_1
       (.I0(rst),
        .I1(stall),
        .I2(bubble),
        .O(ex_valid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ex_valid_i_2
       (.I0(stall),
        .O(p_0_in));
  FDRE ex_valid_reg
       (.C(clk),
        .CE(p_0_in),
        .D(id_valid),
        .Q(ex_valid),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_wb_sel_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_wb_sel[0]),
        .Q(ex_wb_sel[0]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_wb_sel_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_wb_sel[1]),
        .Q(ex_wb_sel[1]),
        .R(ex_valid_i_1_n_0));
  FDRE \ex_wb_sel_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(id_wb_sel[2]),
        .Q(ex_wb_sel[2]),
        .R(ex_valid_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "if_id_reg" *) 
module RV32_IF_EX_if_id_reg
   (id_pc,
    id_pc_plus4,
    id_instr,
    clk,
    rst,
    if_pc,
    flush,
    if_pc_plus4,
    if_instr,
    enable);
  output [31:0]id_pc;
  output [31:0]id_pc_plus4;
  output [31:0]id_instr;
  input clk;
  input rst;
  input [31:0]if_pc;
  input flush;
  input [31:0]if_pc_plus4;
  input [31:0]if_instr;
  input enable;

  wire clk;
  wire enable;
  wire flush;
  wire [31:0]id_instr;
  wire \id_instr[0]_i_1_n_0 ;
  wire \id_instr[10]_i_1_n_0 ;
  wire \id_instr[11]_i_1_n_0 ;
  wire \id_instr[12]_i_1_n_0 ;
  wire \id_instr[13]_i_1_n_0 ;
  wire \id_instr[14]_i_1_n_0 ;
  wire \id_instr[15]_i_1_n_0 ;
  wire \id_instr[16]_i_1_n_0 ;
  wire \id_instr[17]_i_1_n_0 ;
  wire \id_instr[18]_i_1_n_0 ;
  wire \id_instr[19]_i_1_n_0 ;
  wire \id_instr[1]_i_1_n_0 ;
  wire \id_instr[20]_i_1_n_0 ;
  wire \id_instr[21]_i_1_n_0 ;
  wire \id_instr[22]_i_1_n_0 ;
  wire \id_instr[23]_i_1_n_0 ;
  wire \id_instr[24]_i_1_n_0 ;
  wire \id_instr[25]_i_1_n_0 ;
  wire \id_instr[26]_i_1_n_0 ;
  wire \id_instr[27]_i_1_n_0 ;
  wire \id_instr[28]_i_1_n_0 ;
  wire \id_instr[29]_i_1_n_0 ;
  wire \id_instr[2]_i_1_n_0 ;
  wire \id_instr[30]_i_1_n_0 ;
  wire \id_instr[31]_i_1_n_0 ;
  wire \id_instr[3]_i_1_n_0 ;
  wire \id_instr[4]_i_1_n_0 ;
  wire \id_instr[5]_i_1_n_0 ;
  wire \id_instr[6]_i_1_n_0 ;
  wire \id_instr[7]_i_1_n_0 ;
  wire \id_instr[8]_i_1_n_0 ;
  wire \id_instr[9]_i_1_n_0 ;
  wire [31:0]id_pc;
  wire \id_pc[31]_i_1_n_0 ;
  wire [31:0]id_pc_plus4;
  wire \id_pc_plus4[0]_i_1_n_0 ;
  wire \id_pc_plus4[10]_i_1_n_0 ;
  wire \id_pc_plus4[11]_i_1_n_0 ;
  wire \id_pc_plus4[12]_i_1_n_0 ;
  wire \id_pc_plus4[13]_i_1_n_0 ;
  wire \id_pc_plus4[14]_i_1_n_0 ;
  wire \id_pc_plus4[15]_i_1_n_0 ;
  wire \id_pc_plus4[16]_i_1_n_0 ;
  wire \id_pc_plus4[17]_i_1_n_0 ;
  wire \id_pc_plus4[18]_i_1_n_0 ;
  wire \id_pc_plus4[19]_i_1_n_0 ;
  wire \id_pc_plus4[1]_i_1_n_0 ;
  wire \id_pc_plus4[20]_i_1_n_0 ;
  wire \id_pc_plus4[21]_i_1_n_0 ;
  wire \id_pc_plus4[22]_i_1_n_0 ;
  wire \id_pc_plus4[23]_i_1_n_0 ;
  wire \id_pc_plus4[24]_i_1_n_0 ;
  wire \id_pc_plus4[25]_i_1_n_0 ;
  wire \id_pc_plus4[26]_i_1_n_0 ;
  wire \id_pc_plus4[27]_i_1_n_0 ;
  wire \id_pc_plus4[28]_i_1_n_0 ;
  wire \id_pc_plus4[29]_i_1_n_0 ;
  wire \id_pc_plus4[2]_i_1_n_0 ;
  wire \id_pc_plus4[30]_i_1_n_0 ;
  wire \id_pc_plus4[31]_i_1_n_0 ;
  wire \id_pc_plus4[3]_i_1_n_0 ;
  wire \id_pc_plus4[4]_i_1_n_0 ;
  wire \id_pc_plus4[5]_i_1_n_0 ;
  wire \id_pc_plus4[6]_i_1_n_0 ;
  wire \id_pc_plus4[7]_i_1_n_0 ;
  wire \id_pc_plus4[8]_i_1_n_0 ;
  wire \id_pc_plus4[9]_i_1_n_0 ;
  wire [31:0]if_instr;
  wire [31:0]if_pc;
  wire [31:0]if_pc_plus4;
  wire [31:0]p_0_in;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \id_instr[0]_i_1 
       (.I0(if_instr[0]),
        .I1(flush),
        .O(\id_instr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[10]_i_1 
       (.I0(if_instr[10]),
        .I1(flush),
        .O(\id_instr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[11]_i_1 
       (.I0(if_instr[11]),
        .I1(flush),
        .O(\id_instr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[12]_i_1 
       (.I0(if_instr[12]),
        .I1(flush),
        .O(\id_instr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[13]_i_1 
       (.I0(if_instr[13]),
        .I1(flush),
        .O(\id_instr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[14]_i_1 
       (.I0(if_instr[14]),
        .I1(flush),
        .O(\id_instr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[15]_i_1 
       (.I0(if_instr[15]),
        .I1(flush),
        .O(\id_instr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[16]_i_1 
       (.I0(if_instr[16]),
        .I1(flush),
        .O(\id_instr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[17]_i_1 
       (.I0(if_instr[17]),
        .I1(flush),
        .O(\id_instr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[18]_i_1 
       (.I0(if_instr[18]),
        .I1(flush),
        .O(\id_instr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[19]_i_1 
       (.I0(if_instr[19]),
        .I1(flush),
        .O(\id_instr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \id_instr[1]_i_1 
       (.I0(if_instr[1]),
        .I1(flush),
        .O(\id_instr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[20]_i_1 
       (.I0(if_instr[20]),
        .I1(flush),
        .O(\id_instr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[21]_i_1 
       (.I0(if_instr[21]),
        .I1(flush),
        .O(\id_instr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[22]_i_1 
       (.I0(if_instr[22]),
        .I1(flush),
        .O(\id_instr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[23]_i_1 
       (.I0(if_instr[23]),
        .I1(flush),
        .O(\id_instr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[24]_i_1 
       (.I0(if_instr[24]),
        .I1(flush),
        .O(\id_instr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[25]_i_1 
       (.I0(if_instr[25]),
        .I1(flush),
        .O(\id_instr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[26]_i_1 
       (.I0(if_instr[26]),
        .I1(flush),
        .O(\id_instr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[27]_i_1 
       (.I0(if_instr[27]),
        .I1(flush),
        .O(\id_instr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[28]_i_1 
       (.I0(if_instr[28]),
        .I1(flush),
        .O(\id_instr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[29]_i_1 
       (.I0(if_instr[29]),
        .I1(flush),
        .O(\id_instr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[2]_i_1 
       (.I0(if_instr[2]),
        .I1(flush),
        .O(\id_instr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[30]_i_1 
       (.I0(if_instr[30]),
        .I1(flush),
        .O(\id_instr[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[31]_i_1 
       (.I0(if_instr[31]),
        .I1(flush),
        .O(\id_instr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[3]_i_1 
       (.I0(if_instr[3]),
        .I1(flush),
        .O(\id_instr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \id_instr[4]_i_1 
       (.I0(if_instr[4]),
        .I1(flush),
        .O(\id_instr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[5]_i_1 
       (.I0(if_instr[5]),
        .I1(flush),
        .O(\id_instr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[6]_i_1 
       (.I0(if_instr[6]),
        .I1(flush),
        .O(\id_instr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[7]_i_1 
       (.I0(if_instr[7]),
        .I1(flush),
        .O(\id_instr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[8]_i_1 
       (.I0(if_instr[8]),
        .I1(flush),
        .O(\id_instr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[9]_i_1 
       (.I0(if_instr[9]),
        .I1(flush),
        .O(\id_instr[9]_i_1_n_0 ));
  FDPE \id_instr_reg[0] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .D(\id_instr[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(id_instr[0]));
  FDCE \id_instr_reg[10] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[10]_i_1_n_0 ),
        .Q(id_instr[10]));
  FDCE \id_instr_reg[11] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[11]_i_1_n_0 ),
        .Q(id_instr[11]));
  FDCE \id_instr_reg[12] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[12]_i_1_n_0 ),
        .Q(id_instr[12]));
  FDCE \id_instr_reg[13] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[13]_i_1_n_0 ),
        .Q(id_instr[13]));
  FDCE \id_instr_reg[14] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[14]_i_1_n_0 ),
        .Q(id_instr[14]));
  FDCE \id_instr_reg[15] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[15]_i_1_n_0 ),
        .Q(id_instr[15]));
  FDCE \id_instr_reg[16] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[16]_i_1_n_0 ),
        .Q(id_instr[16]));
  FDCE \id_instr_reg[17] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[17]_i_1_n_0 ),
        .Q(id_instr[17]));
  FDCE \id_instr_reg[18] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[18]_i_1_n_0 ),
        .Q(id_instr[18]));
  FDCE \id_instr_reg[19] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[19]_i_1_n_0 ),
        .Q(id_instr[19]));
  FDPE \id_instr_reg[1] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .D(\id_instr[1]_i_1_n_0 ),
        .PRE(rst),
        .Q(id_instr[1]));
  FDCE \id_instr_reg[20] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[20]_i_1_n_0 ),
        .Q(id_instr[20]));
  FDCE \id_instr_reg[21] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[21]_i_1_n_0 ),
        .Q(id_instr[21]));
  FDCE \id_instr_reg[22] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[22]_i_1_n_0 ),
        .Q(id_instr[22]));
  FDCE \id_instr_reg[23] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[23]_i_1_n_0 ),
        .Q(id_instr[23]));
  FDCE \id_instr_reg[24] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[24]_i_1_n_0 ),
        .Q(id_instr[24]));
  FDCE \id_instr_reg[25] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[25]_i_1_n_0 ),
        .Q(id_instr[25]));
  FDCE \id_instr_reg[26] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[26]_i_1_n_0 ),
        .Q(id_instr[26]));
  FDCE \id_instr_reg[27] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[27]_i_1_n_0 ),
        .Q(id_instr[27]));
  FDCE \id_instr_reg[28] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[28]_i_1_n_0 ),
        .Q(id_instr[28]));
  FDCE \id_instr_reg[29] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[29]_i_1_n_0 ),
        .Q(id_instr[29]));
  FDCE \id_instr_reg[2] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[2]_i_1_n_0 ),
        .Q(id_instr[2]));
  FDCE \id_instr_reg[30] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[30]_i_1_n_0 ),
        .Q(id_instr[30]));
  FDCE \id_instr_reg[31] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[31]_i_1_n_0 ),
        .Q(id_instr[31]));
  FDCE \id_instr_reg[3] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[3]_i_1_n_0 ),
        .Q(id_instr[3]));
  FDPE \id_instr_reg[4] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .D(\id_instr[4]_i_1_n_0 ),
        .PRE(rst),
        .Q(id_instr[4]));
  FDCE \id_instr_reg[5] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[5]_i_1_n_0 ),
        .Q(id_instr[5]));
  FDCE \id_instr_reg[6] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[6]_i_1_n_0 ),
        .Q(id_instr[6]));
  FDCE \id_instr_reg[7] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[7]_i_1_n_0 ),
        .Q(id_instr[7]));
  FDCE \id_instr_reg[8] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[8]_i_1_n_0 ),
        .Q(id_instr[8]));
  FDCE \id_instr_reg[9] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_instr[9]_i_1_n_0 ),
        .Q(id_instr[9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[0]_i_1 
       (.I0(if_pc[0]),
        .I1(flush),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[10]_i_1 
       (.I0(if_pc[10]),
        .I1(flush),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[11]_i_1 
       (.I0(if_pc[11]),
        .I1(flush),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[12]_i_1 
       (.I0(if_pc[12]),
        .I1(flush),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[13]_i_1 
       (.I0(if_pc[13]),
        .I1(flush),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[14]_i_1 
       (.I0(if_pc[14]),
        .I1(flush),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[15]_i_1 
       (.I0(if_pc[15]),
        .I1(flush),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[16]_i_1 
       (.I0(if_pc[16]),
        .I1(flush),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[17]_i_1 
       (.I0(if_pc[17]),
        .I1(flush),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[18]_i_1 
       (.I0(if_pc[18]),
        .I1(flush),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[19]_i_1 
       (.I0(if_pc[19]),
        .I1(flush),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[1]_i_1 
       (.I0(if_pc[1]),
        .I1(flush),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[20]_i_1 
       (.I0(if_pc[20]),
        .I1(flush),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[21]_i_1 
       (.I0(if_pc[21]),
        .I1(flush),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[22]_i_1 
       (.I0(if_pc[22]),
        .I1(flush),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[23]_i_1 
       (.I0(if_pc[23]),
        .I1(flush),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[24]_i_1 
       (.I0(if_pc[24]),
        .I1(flush),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[25]_i_1 
       (.I0(if_pc[25]),
        .I1(flush),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[26]_i_1 
       (.I0(if_pc[26]),
        .I1(flush),
        .O(p_0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[27]_i_1 
       (.I0(if_pc[27]),
        .I1(flush),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[28]_i_1 
       (.I0(if_pc[28]),
        .I1(flush),
        .O(p_0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[29]_i_1 
       (.I0(if_pc[29]),
        .I1(flush),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[2]_i_1 
       (.I0(if_pc[2]),
        .I1(flush),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[30]_i_1 
       (.I0(if_pc[30]),
        .I1(flush),
        .O(p_0_in[30]));
  LUT2 #(
    .INIT(4'hE)) 
    \id_pc[31]_i_1 
       (.I0(flush),
        .I1(enable),
        .O(\id_pc[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[31]_i_2 
       (.I0(if_pc[31]),
        .I1(flush),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[3]_i_1 
       (.I0(if_pc[3]),
        .I1(flush),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[4]_i_1 
       (.I0(if_pc[4]),
        .I1(flush),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[5]_i_1 
       (.I0(if_pc[5]),
        .I1(flush),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[6]_i_1 
       (.I0(if_pc[6]),
        .I1(flush),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[7]_i_1 
       (.I0(if_pc[7]),
        .I1(flush),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[8]_i_1 
       (.I0(if_pc[8]),
        .I1(flush),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[9]_i_1 
       (.I0(if_pc[9]),
        .I1(flush),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[0]_i_1 
       (.I0(if_pc_plus4[0]),
        .I1(flush),
        .O(\id_pc_plus4[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[10]_i_1 
       (.I0(if_pc_plus4[10]),
        .I1(flush),
        .O(\id_pc_plus4[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[11]_i_1 
       (.I0(if_pc_plus4[11]),
        .I1(flush),
        .O(\id_pc_plus4[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[12]_i_1 
       (.I0(if_pc_plus4[12]),
        .I1(flush),
        .O(\id_pc_plus4[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[13]_i_1 
       (.I0(if_pc_plus4[13]),
        .I1(flush),
        .O(\id_pc_plus4[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[14]_i_1 
       (.I0(if_pc_plus4[14]),
        .I1(flush),
        .O(\id_pc_plus4[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[15]_i_1 
       (.I0(if_pc_plus4[15]),
        .I1(flush),
        .O(\id_pc_plus4[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[16]_i_1 
       (.I0(if_pc_plus4[16]),
        .I1(flush),
        .O(\id_pc_plus4[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[17]_i_1 
       (.I0(if_pc_plus4[17]),
        .I1(flush),
        .O(\id_pc_plus4[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[18]_i_1 
       (.I0(if_pc_plus4[18]),
        .I1(flush),
        .O(\id_pc_plus4[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[19]_i_1 
       (.I0(if_pc_plus4[19]),
        .I1(flush),
        .O(\id_pc_plus4[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[1]_i_1 
       (.I0(if_pc_plus4[1]),
        .I1(flush),
        .O(\id_pc_plus4[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[20]_i_1 
       (.I0(if_pc_plus4[20]),
        .I1(flush),
        .O(\id_pc_plus4[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[21]_i_1 
       (.I0(if_pc_plus4[21]),
        .I1(flush),
        .O(\id_pc_plus4[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[22]_i_1 
       (.I0(if_pc_plus4[22]),
        .I1(flush),
        .O(\id_pc_plus4[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[23]_i_1 
       (.I0(if_pc_plus4[23]),
        .I1(flush),
        .O(\id_pc_plus4[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[24]_i_1 
       (.I0(if_pc_plus4[24]),
        .I1(flush),
        .O(\id_pc_plus4[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[25]_i_1 
       (.I0(if_pc_plus4[25]),
        .I1(flush),
        .O(\id_pc_plus4[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[26]_i_1 
       (.I0(if_pc_plus4[26]),
        .I1(flush),
        .O(\id_pc_plus4[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[27]_i_1 
       (.I0(if_pc_plus4[27]),
        .I1(flush),
        .O(\id_pc_plus4[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[28]_i_1 
       (.I0(if_pc_plus4[28]),
        .I1(flush),
        .O(\id_pc_plus4[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[29]_i_1 
       (.I0(if_pc_plus4[29]),
        .I1(flush),
        .O(\id_pc_plus4[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[2]_i_1 
       (.I0(if_pc_plus4[2]),
        .I1(flush),
        .O(\id_pc_plus4[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[30]_i_1 
       (.I0(if_pc_plus4[30]),
        .I1(flush),
        .O(\id_pc_plus4[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[31]_i_1 
       (.I0(if_pc_plus4[31]),
        .I1(flush),
        .O(\id_pc_plus4[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[3]_i_1 
       (.I0(if_pc_plus4[3]),
        .I1(flush),
        .O(\id_pc_plus4[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[4]_i_1 
       (.I0(if_pc_plus4[4]),
        .I1(flush),
        .O(\id_pc_plus4[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[5]_i_1 
       (.I0(if_pc_plus4[5]),
        .I1(flush),
        .O(\id_pc_plus4[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[6]_i_1 
       (.I0(if_pc_plus4[6]),
        .I1(flush),
        .O(\id_pc_plus4[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[7]_i_1 
       (.I0(if_pc_plus4[7]),
        .I1(flush),
        .O(\id_pc_plus4[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[8]_i_1 
       (.I0(if_pc_plus4[8]),
        .I1(flush),
        .O(\id_pc_plus4[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[9]_i_1 
       (.I0(if_pc_plus4[9]),
        .I1(flush),
        .O(\id_pc_plus4[9]_i_1_n_0 ));
  FDCE \id_pc_plus4_reg[0] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[0]_i_1_n_0 ),
        .Q(id_pc_plus4[0]));
  FDCE \id_pc_plus4_reg[10] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[10]_i_1_n_0 ),
        .Q(id_pc_plus4[10]));
  FDCE \id_pc_plus4_reg[11] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[11]_i_1_n_0 ),
        .Q(id_pc_plus4[11]));
  FDCE \id_pc_plus4_reg[12] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[12]_i_1_n_0 ),
        .Q(id_pc_plus4[12]));
  FDCE \id_pc_plus4_reg[13] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[13]_i_1_n_0 ),
        .Q(id_pc_plus4[13]));
  FDCE \id_pc_plus4_reg[14] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[14]_i_1_n_0 ),
        .Q(id_pc_plus4[14]));
  FDCE \id_pc_plus4_reg[15] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[15]_i_1_n_0 ),
        .Q(id_pc_plus4[15]));
  FDCE \id_pc_plus4_reg[16] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[16]_i_1_n_0 ),
        .Q(id_pc_plus4[16]));
  FDCE \id_pc_plus4_reg[17] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[17]_i_1_n_0 ),
        .Q(id_pc_plus4[17]));
  FDCE \id_pc_plus4_reg[18] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[18]_i_1_n_0 ),
        .Q(id_pc_plus4[18]));
  FDCE \id_pc_plus4_reg[19] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[19]_i_1_n_0 ),
        .Q(id_pc_plus4[19]));
  FDCE \id_pc_plus4_reg[1] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[1]_i_1_n_0 ),
        .Q(id_pc_plus4[1]));
  FDCE \id_pc_plus4_reg[20] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[20]_i_1_n_0 ),
        .Q(id_pc_plus4[20]));
  FDCE \id_pc_plus4_reg[21] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[21]_i_1_n_0 ),
        .Q(id_pc_plus4[21]));
  FDCE \id_pc_plus4_reg[22] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[22]_i_1_n_0 ),
        .Q(id_pc_plus4[22]));
  FDCE \id_pc_plus4_reg[23] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[23]_i_1_n_0 ),
        .Q(id_pc_plus4[23]));
  FDCE \id_pc_plus4_reg[24] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[24]_i_1_n_0 ),
        .Q(id_pc_plus4[24]));
  FDCE \id_pc_plus4_reg[25] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[25]_i_1_n_0 ),
        .Q(id_pc_plus4[25]));
  FDCE \id_pc_plus4_reg[26] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[26]_i_1_n_0 ),
        .Q(id_pc_plus4[26]));
  FDCE \id_pc_plus4_reg[27] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[27]_i_1_n_0 ),
        .Q(id_pc_plus4[27]));
  FDCE \id_pc_plus4_reg[28] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[28]_i_1_n_0 ),
        .Q(id_pc_plus4[28]));
  FDCE \id_pc_plus4_reg[29] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[29]_i_1_n_0 ),
        .Q(id_pc_plus4[29]));
  FDCE \id_pc_plus4_reg[2] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[2]_i_1_n_0 ),
        .Q(id_pc_plus4[2]));
  FDCE \id_pc_plus4_reg[30] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[30]_i_1_n_0 ),
        .Q(id_pc_plus4[30]));
  FDCE \id_pc_plus4_reg[31] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[31]_i_1_n_0 ),
        .Q(id_pc_plus4[31]));
  FDCE \id_pc_plus4_reg[3] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[3]_i_1_n_0 ),
        .Q(id_pc_plus4[3]));
  FDCE \id_pc_plus4_reg[4] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[4]_i_1_n_0 ),
        .Q(id_pc_plus4[4]));
  FDCE \id_pc_plus4_reg[5] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[5]_i_1_n_0 ),
        .Q(id_pc_plus4[5]));
  FDCE \id_pc_plus4_reg[6] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[6]_i_1_n_0 ),
        .Q(id_pc_plus4[6]));
  FDCE \id_pc_plus4_reg[7] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[7]_i_1_n_0 ),
        .Q(id_pc_plus4[7]));
  FDCE \id_pc_plus4_reg[8] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[8]_i_1_n_0 ),
        .Q(id_pc_plus4[8]));
  FDCE \id_pc_plus4_reg[9] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\id_pc_plus4[9]_i_1_n_0 ),
        .Q(id_pc_plus4[9]));
  FDCE \id_pc_reg[0] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[0]),
        .Q(id_pc[0]));
  FDCE \id_pc_reg[10] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[10]),
        .Q(id_pc[10]));
  FDCE \id_pc_reg[11] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[11]),
        .Q(id_pc[11]));
  FDCE \id_pc_reg[12] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[12]),
        .Q(id_pc[12]));
  FDCE \id_pc_reg[13] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[13]),
        .Q(id_pc[13]));
  FDCE \id_pc_reg[14] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[14]),
        .Q(id_pc[14]));
  FDCE \id_pc_reg[15] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[15]),
        .Q(id_pc[15]));
  FDCE \id_pc_reg[16] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[16]),
        .Q(id_pc[16]));
  FDCE \id_pc_reg[17] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[17]),
        .Q(id_pc[17]));
  FDCE \id_pc_reg[18] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[18]),
        .Q(id_pc[18]));
  FDCE \id_pc_reg[19] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[19]),
        .Q(id_pc[19]));
  FDCE \id_pc_reg[1] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(id_pc[1]));
  FDCE \id_pc_reg[20] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[20]),
        .Q(id_pc[20]));
  FDCE \id_pc_reg[21] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[21]),
        .Q(id_pc[21]));
  FDCE \id_pc_reg[22] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[22]),
        .Q(id_pc[22]));
  FDCE \id_pc_reg[23] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[23]),
        .Q(id_pc[23]));
  FDCE \id_pc_reg[24] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[24]),
        .Q(id_pc[24]));
  FDCE \id_pc_reg[25] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[25]),
        .Q(id_pc[25]));
  FDCE \id_pc_reg[26] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[26]),
        .Q(id_pc[26]));
  FDCE \id_pc_reg[27] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[27]),
        .Q(id_pc[27]));
  FDCE \id_pc_reg[28] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[28]),
        .Q(id_pc[28]));
  FDCE \id_pc_reg[29] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[29]),
        .Q(id_pc[29]));
  FDCE \id_pc_reg[2] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(id_pc[2]));
  FDCE \id_pc_reg[30] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[30]),
        .Q(id_pc[30]));
  FDCE \id_pc_reg[31] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[31]),
        .Q(id_pc[31]));
  FDCE \id_pc_reg[3] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(id_pc[3]));
  FDCE \id_pc_reg[4] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(id_pc[4]));
  FDCE \id_pc_reg[5] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[5]),
        .Q(id_pc[5]));
  FDCE \id_pc_reg[6] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[6]),
        .Q(id_pc[6]));
  FDCE \id_pc_reg[7] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[7]),
        .Q(id_pc[7]));
  FDCE \id_pc_reg[8] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[8]),
        .Q(id_pc[8]));
  FDCE \id_pc_reg[9] 
       (.C(clk),
        .CE(\id_pc[31]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_in[9]),
        .Q(id_pc[9]));
endmodule

(* ORIG_REF_NAME = "imm_mux" *) 
module RV32_IF_EX_imm_mux
   (imm_out,
    imm_sel,
    imm_i,
    imm_j,
    imm_u,
    imm_b,
    imm_s);
  output [31:0]imm_out;
  input [2:0]imm_sel;
  input [31:0]imm_i;
  input [31:0]imm_j;
  input [31:0]imm_u;
  input [31:0]imm_b;
  input [31:0]imm_s;

  wire [31:0]imm_b;
  wire [31:0]imm_i;
  wire [31:0]imm_j;
  wire [31:0]imm_out;
  wire \imm_out[0]_INST_0_i_1_n_0 ;
  wire \imm_out[10]_INST_0_i_1_n_0 ;
  wire \imm_out[11]_INST_0_i_1_n_0 ;
  wire \imm_out[12]_INST_0_i_1_n_0 ;
  wire \imm_out[13]_INST_0_i_1_n_0 ;
  wire \imm_out[14]_INST_0_i_1_n_0 ;
  wire \imm_out[15]_INST_0_i_1_n_0 ;
  wire \imm_out[16]_INST_0_i_1_n_0 ;
  wire \imm_out[17]_INST_0_i_1_n_0 ;
  wire \imm_out[18]_INST_0_i_1_n_0 ;
  wire \imm_out[19]_INST_0_i_1_n_0 ;
  wire \imm_out[1]_INST_0_i_1_n_0 ;
  wire \imm_out[20]_INST_0_i_1_n_0 ;
  wire \imm_out[21]_INST_0_i_1_n_0 ;
  wire \imm_out[22]_INST_0_i_1_n_0 ;
  wire \imm_out[23]_INST_0_i_1_n_0 ;
  wire \imm_out[24]_INST_0_i_1_n_0 ;
  wire \imm_out[25]_INST_0_i_1_n_0 ;
  wire \imm_out[26]_INST_0_i_1_n_0 ;
  wire \imm_out[27]_INST_0_i_1_n_0 ;
  wire \imm_out[28]_INST_0_i_1_n_0 ;
  wire \imm_out[29]_INST_0_i_1_n_0 ;
  wire \imm_out[2]_INST_0_i_1_n_0 ;
  wire \imm_out[30]_INST_0_i_1_n_0 ;
  wire \imm_out[31]_INST_0_i_1_n_0 ;
  wire \imm_out[3]_INST_0_i_1_n_0 ;
  wire \imm_out[4]_INST_0_i_1_n_0 ;
  wire \imm_out[5]_INST_0_i_1_n_0 ;
  wire \imm_out[6]_INST_0_i_1_n_0 ;
  wire \imm_out[7]_INST_0_i_1_n_0 ;
  wire \imm_out[8]_INST_0_i_1_n_0 ;
  wire \imm_out[9]_INST_0_i_1_n_0 ;
  wire [31:0]imm_s;
  wire [2:0]imm_sel;
  wire [31:0]imm_u;

  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[0]_INST_0 
       (.I0(\imm_out[0]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[0]),
        .I4(imm_sel[0]),
        .I5(imm_j[0]),
        .O(imm_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[0]_INST_0_i_1 
       (.I0(imm_u[0]),
        .I1(imm_b[0]),
        .I2(imm_sel[1]),
        .I3(imm_s[0]),
        .I4(imm_sel[0]),
        .I5(imm_i[0]),
        .O(\imm_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[10]_INST_0 
       (.I0(\imm_out[10]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[10]),
        .I4(imm_sel[0]),
        .I5(imm_j[10]),
        .O(imm_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[10]_INST_0_i_1 
       (.I0(imm_u[10]),
        .I1(imm_b[10]),
        .I2(imm_sel[1]),
        .I3(imm_s[10]),
        .I4(imm_sel[0]),
        .I5(imm_i[10]),
        .O(\imm_out[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[11]_INST_0 
       (.I0(\imm_out[11]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[11]),
        .I4(imm_sel[0]),
        .I5(imm_j[11]),
        .O(imm_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[11]_INST_0_i_1 
       (.I0(imm_u[11]),
        .I1(imm_b[11]),
        .I2(imm_sel[1]),
        .I3(imm_s[11]),
        .I4(imm_sel[0]),
        .I5(imm_i[11]),
        .O(\imm_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[12]_INST_0 
       (.I0(\imm_out[12]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[12]),
        .I4(imm_sel[0]),
        .I5(imm_j[12]),
        .O(imm_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[12]_INST_0_i_1 
       (.I0(imm_u[12]),
        .I1(imm_b[12]),
        .I2(imm_sel[1]),
        .I3(imm_s[12]),
        .I4(imm_sel[0]),
        .I5(imm_i[12]),
        .O(\imm_out[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[13]_INST_0 
       (.I0(\imm_out[13]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[13]),
        .I4(imm_sel[0]),
        .I5(imm_j[13]),
        .O(imm_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[13]_INST_0_i_1 
       (.I0(imm_u[13]),
        .I1(imm_b[13]),
        .I2(imm_sel[1]),
        .I3(imm_s[13]),
        .I4(imm_sel[0]),
        .I5(imm_i[13]),
        .O(\imm_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[14]_INST_0 
       (.I0(\imm_out[14]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[14]),
        .I4(imm_sel[0]),
        .I5(imm_j[14]),
        .O(imm_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[14]_INST_0_i_1 
       (.I0(imm_u[14]),
        .I1(imm_b[14]),
        .I2(imm_sel[1]),
        .I3(imm_s[14]),
        .I4(imm_sel[0]),
        .I5(imm_i[14]),
        .O(\imm_out[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[15]_INST_0 
       (.I0(\imm_out[15]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[15]),
        .I4(imm_sel[0]),
        .I5(imm_j[15]),
        .O(imm_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[15]_INST_0_i_1 
       (.I0(imm_u[15]),
        .I1(imm_b[15]),
        .I2(imm_sel[1]),
        .I3(imm_s[15]),
        .I4(imm_sel[0]),
        .I5(imm_i[15]),
        .O(\imm_out[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[16]_INST_0 
       (.I0(\imm_out[16]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[16]),
        .I4(imm_sel[0]),
        .I5(imm_j[16]),
        .O(imm_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[16]_INST_0_i_1 
       (.I0(imm_u[16]),
        .I1(imm_b[16]),
        .I2(imm_sel[1]),
        .I3(imm_s[16]),
        .I4(imm_sel[0]),
        .I5(imm_i[16]),
        .O(\imm_out[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[17]_INST_0 
       (.I0(\imm_out[17]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[17]),
        .I4(imm_sel[0]),
        .I5(imm_j[17]),
        .O(imm_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[17]_INST_0_i_1 
       (.I0(imm_u[17]),
        .I1(imm_b[17]),
        .I2(imm_sel[1]),
        .I3(imm_s[17]),
        .I4(imm_sel[0]),
        .I5(imm_i[17]),
        .O(\imm_out[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[18]_INST_0 
       (.I0(\imm_out[18]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[18]),
        .I4(imm_sel[0]),
        .I5(imm_j[18]),
        .O(imm_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[18]_INST_0_i_1 
       (.I0(imm_u[18]),
        .I1(imm_b[18]),
        .I2(imm_sel[1]),
        .I3(imm_s[18]),
        .I4(imm_sel[0]),
        .I5(imm_i[18]),
        .O(\imm_out[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[19]_INST_0 
       (.I0(\imm_out[19]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[19]),
        .I4(imm_sel[0]),
        .I5(imm_j[19]),
        .O(imm_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[19]_INST_0_i_1 
       (.I0(imm_u[19]),
        .I1(imm_b[19]),
        .I2(imm_sel[1]),
        .I3(imm_s[19]),
        .I4(imm_sel[0]),
        .I5(imm_i[19]),
        .O(\imm_out[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[1]_INST_0 
       (.I0(\imm_out[1]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[1]),
        .I4(imm_sel[0]),
        .I5(imm_j[1]),
        .O(imm_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[1]_INST_0_i_1 
       (.I0(imm_u[1]),
        .I1(imm_b[1]),
        .I2(imm_sel[1]),
        .I3(imm_s[1]),
        .I4(imm_sel[0]),
        .I5(imm_i[1]),
        .O(\imm_out[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[20]_INST_0 
       (.I0(\imm_out[20]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[20]),
        .I4(imm_sel[0]),
        .I5(imm_j[20]),
        .O(imm_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[20]_INST_0_i_1 
       (.I0(imm_u[20]),
        .I1(imm_b[20]),
        .I2(imm_sel[1]),
        .I3(imm_s[20]),
        .I4(imm_sel[0]),
        .I5(imm_i[20]),
        .O(\imm_out[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[21]_INST_0 
       (.I0(\imm_out[21]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[21]),
        .I4(imm_sel[0]),
        .I5(imm_j[21]),
        .O(imm_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[21]_INST_0_i_1 
       (.I0(imm_u[21]),
        .I1(imm_b[21]),
        .I2(imm_sel[1]),
        .I3(imm_s[21]),
        .I4(imm_sel[0]),
        .I5(imm_i[21]),
        .O(\imm_out[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[22]_INST_0 
       (.I0(\imm_out[22]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[22]),
        .I4(imm_sel[0]),
        .I5(imm_j[22]),
        .O(imm_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[22]_INST_0_i_1 
       (.I0(imm_u[22]),
        .I1(imm_b[22]),
        .I2(imm_sel[1]),
        .I3(imm_s[22]),
        .I4(imm_sel[0]),
        .I5(imm_i[22]),
        .O(\imm_out[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[23]_INST_0 
       (.I0(\imm_out[23]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[23]),
        .I4(imm_sel[0]),
        .I5(imm_j[23]),
        .O(imm_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[23]_INST_0_i_1 
       (.I0(imm_u[23]),
        .I1(imm_b[23]),
        .I2(imm_sel[1]),
        .I3(imm_s[23]),
        .I4(imm_sel[0]),
        .I5(imm_i[23]),
        .O(\imm_out[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[24]_INST_0 
       (.I0(\imm_out[24]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[24]),
        .I4(imm_sel[0]),
        .I5(imm_j[24]),
        .O(imm_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[24]_INST_0_i_1 
       (.I0(imm_u[24]),
        .I1(imm_b[24]),
        .I2(imm_sel[1]),
        .I3(imm_s[24]),
        .I4(imm_sel[0]),
        .I5(imm_i[24]),
        .O(\imm_out[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[25]_INST_0 
       (.I0(\imm_out[25]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[25]),
        .I4(imm_sel[0]),
        .I5(imm_j[25]),
        .O(imm_out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[25]_INST_0_i_1 
       (.I0(imm_u[25]),
        .I1(imm_b[25]),
        .I2(imm_sel[1]),
        .I3(imm_s[25]),
        .I4(imm_sel[0]),
        .I5(imm_i[25]),
        .O(\imm_out[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[26]_INST_0 
       (.I0(\imm_out[26]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[26]),
        .I4(imm_sel[0]),
        .I5(imm_j[26]),
        .O(imm_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[26]_INST_0_i_1 
       (.I0(imm_u[26]),
        .I1(imm_b[26]),
        .I2(imm_sel[1]),
        .I3(imm_s[26]),
        .I4(imm_sel[0]),
        .I5(imm_i[26]),
        .O(\imm_out[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[27]_INST_0 
       (.I0(\imm_out[27]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[27]),
        .I4(imm_sel[0]),
        .I5(imm_j[27]),
        .O(imm_out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[27]_INST_0_i_1 
       (.I0(imm_u[27]),
        .I1(imm_b[27]),
        .I2(imm_sel[1]),
        .I3(imm_s[27]),
        .I4(imm_sel[0]),
        .I5(imm_i[27]),
        .O(\imm_out[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[28]_INST_0 
       (.I0(\imm_out[28]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[28]),
        .I4(imm_sel[0]),
        .I5(imm_j[28]),
        .O(imm_out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[28]_INST_0_i_1 
       (.I0(imm_u[28]),
        .I1(imm_b[28]),
        .I2(imm_sel[1]),
        .I3(imm_s[28]),
        .I4(imm_sel[0]),
        .I5(imm_i[28]),
        .O(\imm_out[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[29]_INST_0 
       (.I0(\imm_out[29]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[29]),
        .I4(imm_sel[0]),
        .I5(imm_j[29]),
        .O(imm_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[29]_INST_0_i_1 
       (.I0(imm_u[29]),
        .I1(imm_b[29]),
        .I2(imm_sel[1]),
        .I3(imm_s[29]),
        .I4(imm_sel[0]),
        .I5(imm_i[29]),
        .O(\imm_out[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[2]_INST_0 
       (.I0(\imm_out[2]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[2]),
        .I4(imm_sel[0]),
        .I5(imm_j[2]),
        .O(imm_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[2]_INST_0_i_1 
       (.I0(imm_u[2]),
        .I1(imm_b[2]),
        .I2(imm_sel[1]),
        .I3(imm_s[2]),
        .I4(imm_sel[0]),
        .I5(imm_i[2]),
        .O(\imm_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[30]_INST_0 
       (.I0(\imm_out[30]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[30]),
        .I4(imm_sel[0]),
        .I5(imm_j[30]),
        .O(imm_out[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[30]_INST_0_i_1 
       (.I0(imm_u[30]),
        .I1(imm_b[30]),
        .I2(imm_sel[1]),
        .I3(imm_s[30]),
        .I4(imm_sel[0]),
        .I5(imm_i[30]),
        .O(\imm_out[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[31]_INST_0 
       (.I0(\imm_out[31]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[31]),
        .I4(imm_sel[0]),
        .I5(imm_j[31]),
        .O(imm_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[31]_INST_0_i_1 
       (.I0(imm_u[31]),
        .I1(imm_b[31]),
        .I2(imm_sel[1]),
        .I3(imm_s[31]),
        .I4(imm_sel[0]),
        .I5(imm_i[31]),
        .O(\imm_out[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[3]_INST_0 
       (.I0(\imm_out[3]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[3]),
        .I4(imm_sel[0]),
        .I5(imm_j[3]),
        .O(imm_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[3]_INST_0_i_1 
       (.I0(imm_u[3]),
        .I1(imm_b[3]),
        .I2(imm_sel[1]),
        .I3(imm_s[3]),
        .I4(imm_sel[0]),
        .I5(imm_i[3]),
        .O(\imm_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[4]_INST_0 
       (.I0(\imm_out[4]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[4]),
        .I4(imm_sel[0]),
        .I5(imm_j[4]),
        .O(imm_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[4]_INST_0_i_1 
       (.I0(imm_u[4]),
        .I1(imm_b[4]),
        .I2(imm_sel[1]),
        .I3(imm_s[4]),
        .I4(imm_sel[0]),
        .I5(imm_i[4]),
        .O(\imm_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[5]_INST_0 
       (.I0(\imm_out[5]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[5]),
        .I4(imm_sel[0]),
        .I5(imm_j[5]),
        .O(imm_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[5]_INST_0_i_1 
       (.I0(imm_u[5]),
        .I1(imm_b[5]),
        .I2(imm_sel[1]),
        .I3(imm_s[5]),
        .I4(imm_sel[0]),
        .I5(imm_i[5]),
        .O(\imm_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[6]_INST_0 
       (.I0(\imm_out[6]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[6]),
        .I4(imm_sel[0]),
        .I5(imm_j[6]),
        .O(imm_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[6]_INST_0_i_1 
       (.I0(imm_u[6]),
        .I1(imm_b[6]),
        .I2(imm_sel[1]),
        .I3(imm_s[6]),
        .I4(imm_sel[0]),
        .I5(imm_i[6]),
        .O(\imm_out[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[7]_INST_0 
       (.I0(\imm_out[7]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[7]),
        .I4(imm_sel[0]),
        .I5(imm_j[7]),
        .O(imm_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[7]_INST_0_i_1 
       (.I0(imm_u[7]),
        .I1(imm_b[7]),
        .I2(imm_sel[1]),
        .I3(imm_s[7]),
        .I4(imm_sel[0]),
        .I5(imm_i[7]),
        .O(\imm_out[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[8]_INST_0 
       (.I0(\imm_out[8]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[8]),
        .I4(imm_sel[0]),
        .I5(imm_j[8]),
        .O(imm_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[8]_INST_0_i_1 
       (.I0(imm_u[8]),
        .I1(imm_b[8]),
        .I2(imm_sel[1]),
        .I3(imm_s[8]),
        .I4(imm_sel[0]),
        .I5(imm_i[8]),
        .O(\imm_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFA3AFA0ACA0A)) 
    \imm_out[9]_INST_0 
       (.I0(\imm_out[9]_INST_0_i_1_n_0 ),
        .I1(imm_sel[1]),
        .I2(imm_sel[2]),
        .I3(imm_i[9]),
        .I4(imm_sel[0]),
        .I5(imm_j[9]),
        .O(imm_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \imm_out[9]_INST_0_i_1 
       (.I0(imm_u[9]),
        .I1(imm_b[9]),
        .I2(imm_sel[1]),
        .I3(imm_s[9]),
        .I4(imm_sel[0]),
        .I5(imm_i[9]),
        .O(\imm_out[9]_INST_0_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "pc_unit" *) 
module RV32_IF_EX_pc_unit
   (pc,
    pc_plus4,
    pc_en,
    clk,
    rst);
  output [29:0]pc;
  output [29:0]pc_plus4;
  input pc_en;
  input clk;
  input rst;

  wire clk;
  wire [29:0]pc;
  wire \pc[9]_i_2_n_0 ;
  wire pc_en;
  wire [29:0]pc_plus4;
  wire \pc_plus4[17]_INST_0_n_0 ;
  wire \pc_plus4[17]_INST_0_n_1 ;
  wire \pc_plus4[17]_INST_0_n_2 ;
  wire \pc_plus4[17]_INST_0_n_3 ;
  wire \pc_plus4[17]_INST_0_n_4 ;
  wire \pc_plus4[17]_INST_0_n_5 ;
  wire \pc_plus4[17]_INST_0_n_6 ;
  wire \pc_plus4[17]_INST_0_n_7 ;
  wire \pc_plus4[25]_INST_0_n_2 ;
  wire \pc_plus4[25]_INST_0_n_3 ;
  wire \pc_plus4[25]_INST_0_n_4 ;
  wire \pc_plus4[25]_INST_0_n_5 ;
  wire \pc_plus4[25]_INST_0_n_6 ;
  wire \pc_plus4[25]_INST_0_n_7 ;
  wire \pc_plus4[2]_INST_0_i_1_n_0 ;
  wire \pc_plus4[2]_INST_0_n_0 ;
  wire \pc_plus4[2]_INST_0_n_1 ;
  wire \pc_plus4[2]_INST_0_n_2 ;
  wire \pc_plus4[2]_INST_0_n_3 ;
  wire \pc_plus4[2]_INST_0_n_4 ;
  wire \pc_plus4[2]_INST_0_n_5 ;
  wire \pc_plus4[2]_INST_0_n_6 ;
  wire \pc_plus4[2]_INST_0_n_7 ;
  wire \pc_plus4[9]_INST_0_n_0 ;
  wire \pc_plus4[9]_INST_0_n_1 ;
  wire \pc_plus4[9]_INST_0_n_2 ;
  wire \pc_plus4[9]_INST_0_n_3 ;
  wire \pc_plus4[9]_INST_0_n_4 ;
  wire \pc_plus4[9]_INST_0_n_5 ;
  wire \pc_plus4[9]_INST_0_n_6 ;
  wire \pc_plus4[9]_INST_0_n_7 ;
  wire \pc_reg[17]_i_1_n_0 ;
  wire \pc_reg[17]_i_1_n_1 ;
  wire \pc_reg[17]_i_1_n_10 ;
  wire \pc_reg[17]_i_1_n_11 ;
  wire \pc_reg[17]_i_1_n_12 ;
  wire \pc_reg[17]_i_1_n_13 ;
  wire \pc_reg[17]_i_1_n_14 ;
  wire \pc_reg[17]_i_1_n_15 ;
  wire \pc_reg[17]_i_1_n_2 ;
  wire \pc_reg[17]_i_1_n_3 ;
  wire \pc_reg[17]_i_1_n_4 ;
  wire \pc_reg[17]_i_1_n_5 ;
  wire \pc_reg[17]_i_1_n_6 ;
  wire \pc_reg[17]_i_1_n_7 ;
  wire \pc_reg[17]_i_1_n_8 ;
  wire \pc_reg[17]_i_1_n_9 ;
  wire \pc_reg[25]_i_1_n_0 ;
  wire \pc_reg[25]_i_1_n_1 ;
  wire \pc_reg[25]_i_1_n_10 ;
  wire \pc_reg[25]_i_1_n_11 ;
  wire \pc_reg[25]_i_1_n_12 ;
  wire \pc_reg[25]_i_1_n_13 ;
  wire \pc_reg[25]_i_1_n_14 ;
  wire \pc_reg[25]_i_1_n_15 ;
  wire \pc_reg[25]_i_1_n_2 ;
  wire \pc_reg[25]_i_1_n_3 ;
  wire \pc_reg[25]_i_1_n_4 ;
  wire \pc_reg[25]_i_1_n_5 ;
  wire \pc_reg[25]_i_1_n_6 ;
  wire \pc_reg[25]_i_1_n_7 ;
  wire \pc_reg[25]_i_1_n_8 ;
  wire \pc_reg[25]_i_1_n_9 ;
  wire \pc_reg[31]_i_1_n_10 ;
  wire \pc_reg[31]_i_1_n_11 ;
  wire \pc_reg[31]_i_1_n_12 ;
  wire \pc_reg[31]_i_1_n_13 ;
  wire \pc_reg[31]_i_1_n_14 ;
  wire \pc_reg[31]_i_1_n_15 ;
  wire \pc_reg[31]_i_1_n_3 ;
  wire \pc_reg[31]_i_1_n_4 ;
  wire \pc_reg[31]_i_1_n_5 ;
  wire \pc_reg[31]_i_1_n_6 ;
  wire \pc_reg[31]_i_1_n_7 ;
  wire \pc_reg[9]_i_1_n_0 ;
  wire \pc_reg[9]_i_1_n_1 ;
  wire \pc_reg[9]_i_1_n_10 ;
  wire \pc_reg[9]_i_1_n_11 ;
  wire \pc_reg[9]_i_1_n_12 ;
  wire \pc_reg[9]_i_1_n_13 ;
  wire \pc_reg[9]_i_1_n_14 ;
  wire \pc_reg[9]_i_1_n_15 ;
  wire \pc_reg[9]_i_1_n_2 ;
  wire \pc_reg[9]_i_1_n_3 ;
  wire \pc_reg[9]_i_1_n_4 ;
  wire \pc_reg[9]_i_1_n_5 ;
  wire \pc_reg[9]_i_1_n_6 ;
  wire \pc_reg[9]_i_1_n_7 ;
  wire \pc_reg[9]_i_1_n_8 ;
  wire \pc_reg[9]_i_1_n_9 ;
  wire rst;
  wire [7:6]\NLW_pc_plus4[25]_INST_0_CO_UNCONNECTED ;
  wire [7:7]\NLW_pc_plus4[25]_INST_0_O_UNCONNECTED ;
  wire [0:0]\NLW_pc_plus4[2]_INST_0_O_UNCONNECTED ;
  wire [7:5]\NLW_pc_reg[31]_i_1_CO_UNCONNECTED ;
  wire [7:6]\NLW_pc_reg[31]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \pc[9]_i_2 
       (.I0(pc[0]),
        .O(\pc[9]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \pc_plus4[17]_INST_0 
       (.CI(\pc_plus4[9]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\pc_plus4[17]_INST_0_n_0 ,\pc_plus4[17]_INST_0_n_1 ,\pc_plus4[17]_INST_0_n_2 ,\pc_plus4[17]_INST_0_n_3 ,\pc_plus4[17]_INST_0_n_4 ,\pc_plus4[17]_INST_0_n_5 ,\pc_plus4[17]_INST_0_n_6 ,\pc_plus4[17]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[22:15]),
        .S(pc[22:15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \pc_plus4[25]_INST_0 
       (.CI(\pc_plus4[17]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_pc_plus4[25]_INST_0_CO_UNCONNECTED [7:6],\pc_plus4[25]_INST_0_n_2 ,\pc_plus4[25]_INST_0_n_3 ,\pc_plus4[25]_INST_0_n_4 ,\pc_plus4[25]_INST_0_n_5 ,\pc_plus4[25]_INST_0_n_6 ,\pc_plus4[25]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_plus4[25]_INST_0_O_UNCONNECTED [7],pc_plus4[29:23]}),
        .S({1'b0,pc[29:23]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \pc_plus4[2]_INST_0 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\pc_plus4[2]_INST_0_n_0 ,\pc_plus4[2]_INST_0_n_1 ,\pc_plus4[2]_INST_0_n_2 ,\pc_plus4[2]_INST_0_n_3 ,\pc_plus4[2]_INST_0_n_4 ,\pc_plus4[2]_INST_0_n_5 ,\pc_plus4[2]_INST_0_n_6 ,\pc_plus4[2]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pc[0],1'b0}),
        .O({pc_plus4[6:0],\NLW_pc_plus4[2]_INST_0_O_UNCONNECTED [0]}),
        .S({pc[6:1],\pc_plus4[2]_INST_0_i_1_n_0 ,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    \pc_plus4[2]_INST_0_i_1 
       (.I0(pc[0]),
        .O(\pc_plus4[2]_INST_0_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \pc_plus4[9]_INST_0 
       (.CI(\pc_plus4[2]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\pc_plus4[9]_INST_0_n_0 ,\pc_plus4[9]_INST_0_n_1 ,\pc_plus4[9]_INST_0_n_2 ,\pc_plus4[9]_INST_0_n_3 ,\pc_plus4[9]_INST_0_n_4 ,\pc_plus4[9]_INST_0_n_5 ,\pc_plus4[9]_INST_0_n_6 ,\pc_plus4[9]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(pc_plus4[14:7]),
        .S(pc[14:7]));
  FDCE \pc_reg[10] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[17]_i_1_n_15 ),
        .Q(pc[8]));
  FDCE \pc_reg[11] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[17]_i_1_n_14 ),
        .Q(pc[9]));
  FDCE \pc_reg[12] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[17]_i_1_n_13 ),
        .Q(pc[10]));
  FDCE \pc_reg[13] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[17]_i_1_n_12 ),
        .Q(pc[11]));
  FDCE \pc_reg[14] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[17]_i_1_n_11 ),
        .Q(pc[12]));
  FDCE \pc_reg[15] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[17]_i_1_n_10 ),
        .Q(pc[13]));
  FDCE \pc_reg[16] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[17]_i_1_n_9 ),
        .Q(pc[14]));
  FDCE \pc_reg[17] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[17]_i_1_n_8 ),
        .Q(pc[15]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \pc_reg[17]_i_1 
       (.CI(\pc_reg[9]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\pc_reg[17]_i_1_n_0 ,\pc_reg[17]_i_1_n_1 ,\pc_reg[17]_i_1_n_2 ,\pc_reg[17]_i_1_n_3 ,\pc_reg[17]_i_1_n_4 ,\pc_reg[17]_i_1_n_5 ,\pc_reg[17]_i_1_n_6 ,\pc_reg[17]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[17]_i_1_n_8 ,\pc_reg[17]_i_1_n_9 ,\pc_reg[17]_i_1_n_10 ,\pc_reg[17]_i_1_n_11 ,\pc_reg[17]_i_1_n_12 ,\pc_reg[17]_i_1_n_13 ,\pc_reg[17]_i_1_n_14 ,\pc_reg[17]_i_1_n_15 }),
        .S(pc[15:8]));
  FDCE \pc_reg[18] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[25]_i_1_n_15 ),
        .Q(pc[16]));
  FDCE \pc_reg[19] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[25]_i_1_n_14 ),
        .Q(pc[17]));
  FDCE \pc_reg[20] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[25]_i_1_n_13 ),
        .Q(pc[18]));
  FDCE \pc_reg[21] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[25]_i_1_n_12 ),
        .Q(pc[19]));
  FDCE \pc_reg[22] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[25]_i_1_n_11 ),
        .Q(pc[20]));
  FDCE \pc_reg[23] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[25]_i_1_n_10 ),
        .Q(pc[21]));
  FDCE \pc_reg[24] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[25]_i_1_n_9 ),
        .Q(pc[22]));
  FDCE \pc_reg[25] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[25]_i_1_n_8 ),
        .Q(pc[23]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \pc_reg[25]_i_1 
       (.CI(\pc_reg[17]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\pc_reg[25]_i_1_n_0 ,\pc_reg[25]_i_1_n_1 ,\pc_reg[25]_i_1_n_2 ,\pc_reg[25]_i_1_n_3 ,\pc_reg[25]_i_1_n_4 ,\pc_reg[25]_i_1_n_5 ,\pc_reg[25]_i_1_n_6 ,\pc_reg[25]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\pc_reg[25]_i_1_n_8 ,\pc_reg[25]_i_1_n_9 ,\pc_reg[25]_i_1_n_10 ,\pc_reg[25]_i_1_n_11 ,\pc_reg[25]_i_1_n_12 ,\pc_reg[25]_i_1_n_13 ,\pc_reg[25]_i_1_n_14 ,\pc_reg[25]_i_1_n_15 }),
        .S(pc[23:16]));
  FDCE \pc_reg[26] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[31]_i_1_n_15 ),
        .Q(pc[24]));
  FDCE \pc_reg[27] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[31]_i_1_n_14 ),
        .Q(pc[25]));
  FDCE \pc_reg[28] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[31]_i_1_n_13 ),
        .Q(pc[26]));
  FDCE \pc_reg[29] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[31]_i_1_n_12 ),
        .Q(pc[27]));
  FDCE \pc_reg[2] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[9]_i_1_n_15 ),
        .Q(pc[0]));
  FDCE \pc_reg[30] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[31]_i_1_n_11 ),
        .Q(pc[28]));
  FDCE \pc_reg[31] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[31]_i_1_n_10 ),
        .Q(pc[29]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \pc_reg[31]_i_1 
       (.CI(\pc_reg[25]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_pc_reg[31]_i_1_CO_UNCONNECTED [7:5],\pc_reg[31]_i_1_n_3 ,\pc_reg[31]_i_1_n_4 ,\pc_reg[31]_i_1_n_5 ,\pc_reg[31]_i_1_n_6 ,\pc_reg[31]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_reg[31]_i_1_O_UNCONNECTED [7:6],\pc_reg[31]_i_1_n_10 ,\pc_reg[31]_i_1_n_11 ,\pc_reg[31]_i_1_n_12 ,\pc_reg[31]_i_1_n_13 ,\pc_reg[31]_i_1_n_14 ,\pc_reg[31]_i_1_n_15 }),
        .S({1'b0,1'b0,pc[29:24]}));
  FDCE \pc_reg[3] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[9]_i_1_n_14 ),
        .Q(pc[1]));
  FDCE \pc_reg[4] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[9]_i_1_n_13 ),
        .Q(pc[2]));
  FDCE \pc_reg[5] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[9]_i_1_n_12 ),
        .Q(pc[3]));
  FDCE \pc_reg[6] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[9]_i_1_n_11 ),
        .Q(pc[4]));
  FDCE \pc_reg[7] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[9]_i_1_n_10 ),
        .Q(pc[5]));
  FDCE \pc_reg[8] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[9]_i_1_n_9 ),
        .Q(pc[6]));
  FDCE \pc_reg[9] 
       (.C(clk),
        .CE(pc_en),
        .CLR(rst),
        .D(\pc_reg[9]_i_1_n_8 ),
        .Q(pc[7]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \pc_reg[9]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\pc_reg[9]_i_1_n_0 ,\pc_reg[9]_i_1_n_1 ,\pc_reg[9]_i_1_n_2 ,\pc_reg[9]_i_1_n_3 ,\pc_reg[9]_i_1_n_4 ,\pc_reg[9]_i_1_n_5 ,\pc_reg[9]_i_1_n_6 ,\pc_reg[9]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\pc_reg[9]_i_1_n_8 ,\pc_reg[9]_i_1_n_9 ,\pc_reg[9]_i_1_n_10 ,\pc_reg[9]_i_1_n_11 ,\pc_reg[9]_i_1_n_12 ,\pc_reg[9]_i_1_n_13 ,\pc_reg[9]_i_1_n_14 ,\pc_reg[9]_i_1_n_15 }),
        .S({pc[7:1],\pc[9]_i_2_n_0 }));
endmodule

(* ORIG_REF_NAME = "regfile" *) 
module RV32_IF_EX_regfile
   (rs2_rdata,
    rs1_rdata,
    rd_wdata,
    \ex_rs2_data_reg[0] ,
    \ex_rs2_data_reg[0]_0 ,
    \ex_rs2_data_reg[0]_1 ,
    \ex_rs1_data_reg[0] ,
    \ex_rs1_data_reg[0]_0 ,
    \ex_rs1_data_reg[0]_1 ,
    rd_we,
    rd_addr,
    clk,
    rs1_addr,
    rs2_addr);
  output [31:0]rs2_rdata;
  output [31:0]rs1_rdata;
  input [31:0]rd_wdata;
  input \ex_rs2_data_reg[0] ;
  input \ex_rs2_data_reg[0]_0 ;
  input \ex_rs2_data_reg[0]_1 ;
  input \ex_rs1_data_reg[0] ;
  input \ex_rs1_data_reg[0]_0 ;
  input \ex_rs1_data_reg[0]_1 ;
  input rd_we;
  input [4:0]rd_addr;
  input clk;
  input [4:0]rs1_addr;
  input [4:0]rs2_addr;

  wire clk;
  wire \ex_rs1_data_reg[0] ;
  wire \ex_rs1_data_reg[0]_0 ;
  wire \ex_rs1_data_reg[0]_1 ;
  wire \ex_rs2_data_reg[0] ;
  wire \ex_rs2_data_reg[0]_0 ;
  wire \ex_rs2_data_reg[0]_1 ;
  wire p_2_in;
  wire [4:0]rd_addr;
  wire [31:0]rd_wdata;
  wire rd_we;
  wire [4:0]rs1_addr;
  wire [31:0]rs1_rdata;
  wire [31:0]rs1_rdata_r0;
  wire [4:0]rs2_addr;
  wire [31:0]rs2_rdata;
  wire [31:0]rs2_rdata_r0;
  wire [1:0]NLW_regs_reg_r1_0_31_0_13_DOH_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_14_27_DOH_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_28_31_DOC_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_28_31_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_28_31_DOE_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_28_31_DOF_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_28_31_DOG_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_28_31_DOH_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_0_13_DOH_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_14_27_DOH_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_28_31_DOC_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_28_31_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_28_31_DOE_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_28_31_DOF_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_28_31_DOG_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_28_31_DOH_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/regs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    regs_reg_r1_0_31_0_13
       (.ADDRA(rs1_addr),
        .ADDRB(rs1_addr),
        .ADDRC(rs1_addr),
        .ADDRD(rs1_addr),
        .ADDRE(rs1_addr),
        .ADDRF(rs1_addr),
        .ADDRG(rs1_addr),
        .ADDRH(rd_addr),
        .DIA(rd_wdata[1:0]),
        .DIB(rd_wdata[3:2]),
        .DIC(rd_wdata[5:4]),
        .DID(rd_wdata[7:6]),
        .DIE(rd_wdata[9:8]),
        .DIF(rd_wdata[11:10]),
        .DIG(rd_wdata[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(rs1_rdata_r0[1:0]),
        .DOB(rs1_rdata_r0[3:2]),
        .DOC(rs1_rdata_r0[5:4]),
        .DOD(rs1_rdata_r0[7:6]),
        .DOE(rs1_rdata_r0[9:8]),
        .DOF(rs1_rdata_r0[11:10]),
        .DOG(rs1_rdata_r0[13:12]),
        .DOH(NLW_regs_reg_r1_0_31_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_2_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/regs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "27" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    regs_reg_r1_0_31_14_27
       (.ADDRA(rs1_addr),
        .ADDRB(rs1_addr),
        .ADDRC(rs1_addr),
        .ADDRD(rs1_addr),
        .ADDRE(rs1_addr),
        .ADDRF(rs1_addr),
        .ADDRG(rs1_addr),
        .ADDRH(rd_addr),
        .DIA(rd_wdata[15:14]),
        .DIB(rd_wdata[17:16]),
        .DIC(rd_wdata[19:18]),
        .DID(rd_wdata[21:20]),
        .DIE(rd_wdata[23:22]),
        .DIF(rd_wdata[25:24]),
        .DIG(rd_wdata[27:26]),
        .DIH({1'b0,1'b0}),
        .DOA(rs1_rdata_r0[15:14]),
        .DOB(rs1_rdata_r0[17:16]),
        .DOC(rs1_rdata_r0[19:18]),
        .DOD(rs1_rdata_r0[21:20]),
        .DOE(rs1_rdata_r0[23:22]),
        .DOF(rs1_rdata_r0[25:24]),
        .DOG(rs1_rdata_r0[27:26]),
        .DOH(NLW_regs_reg_r1_0_31_14_27_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_2_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/regs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    regs_reg_r1_0_31_28_31
       (.ADDRA(rs1_addr),
        .ADDRB(rs1_addr),
        .ADDRC(rs1_addr),
        .ADDRD(rs1_addr),
        .ADDRE(rs1_addr),
        .ADDRF(rs1_addr),
        .ADDRG(rs1_addr),
        .ADDRH(rd_addr),
        .DIA(rd_wdata[29:28]),
        .DIB(rd_wdata[31:30]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(rs1_rdata_r0[29:28]),
        .DOB(rs1_rdata_r0[31:30]),
        .DOC(NLW_regs_reg_r1_0_31_28_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_regs_reg_r1_0_31_28_31_DOD_UNCONNECTED[1:0]),
        .DOE(NLW_regs_reg_r1_0_31_28_31_DOE_UNCONNECTED[1:0]),
        .DOF(NLW_regs_reg_r1_0_31_28_31_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_regs_reg_r1_0_31_28_31_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_regs_reg_r1_0_31_28_31_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_2_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/regs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    regs_reg_r2_0_31_0_13
       (.ADDRA(rs2_addr),
        .ADDRB(rs2_addr),
        .ADDRC(rs2_addr),
        .ADDRD(rs2_addr),
        .ADDRE(rs2_addr),
        .ADDRF(rs2_addr),
        .ADDRG(rs2_addr),
        .ADDRH(rd_addr),
        .DIA(rd_wdata[1:0]),
        .DIB(rd_wdata[3:2]),
        .DIC(rd_wdata[5:4]),
        .DID(rd_wdata[7:6]),
        .DIE(rd_wdata[9:8]),
        .DIF(rd_wdata[11:10]),
        .DIG(rd_wdata[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(rs2_rdata_r0[1:0]),
        .DOB(rs2_rdata_r0[3:2]),
        .DOC(rs2_rdata_r0[5:4]),
        .DOD(rs2_rdata_r0[7:6]),
        .DOE(rs2_rdata_r0[9:8]),
        .DOF(rs2_rdata_r0[11:10]),
        .DOG(rs2_rdata_r0[13:12]),
        .DOH(NLW_regs_reg_r2_0_31_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_2_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/regs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "27" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    regs_reg_r2_0_31_14_27
       (.ADDRA(rs2_addr),
        .ADDRB(rs2_addr),
        .ADDRC(rs2_addr),
        .ADDRD(rs2_addr),
        .ADDRE(rs2_addr),
        .ADDRF(rs2_addr),
        .ADDRG(rs2_addr),
        .ADDRH(rd_addr),
        .DIA(rd_wdata[15:14]),
        .DIB(rd_wdata[17:16]),
        .DIC(rd_wdata[19:18]),
        .DID(rd_wdata[21:20]),
        .DIE(rd_wdata[23:22]),
        .DIF(rd_wdata[25:24]),
        .DIG(rd_wdata[27:26]),
        .DIH({1'b0,1'b0}),
        .DOA(rs2_rdata_r0[15:14]),
        .DOB(rs2_rdata_r0[17:16]),
        .DOC(rs2_rdata_r0[19:18]),
        .DOD(rs2_rdata_r0[21:20]),
        .DOE(rs2_rdata_r0[23:22]),
        .DOF(rs2_rdata_r0[25:24]),
        .DOG(rs2_rdata_r0[27:26]),
        .DOH(NLW_regs_reg_r2_0_31_14_27_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_2_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/regs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    regs_reg_r2_0_31_28_31
       (.ADDRA(rs2_addr),
        .ADDRB(rs2_addr),
        .ADDRC(rs2_addr),
        .ADDRD(rs2_addr),
        .ADDRE(rs2_addr),
        .ADDRF(rs2_addr),
        .ADDRG(rs2_addr),
        .ADDRH(rd_addr),
        .DIA(rd_wdata[29:28]),
        .DIB(rd_wdata[31:30]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(rs2_rdata_r0[29:28]),
        .DOB(rs2_rdata_r0[31:30]),
        .DOC(NLW_regs_reg_r2_0_31_28_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_regs_reg_r2_0_31_28_31_DOD_UNCONNECTED[1:0]),
        .DOE(NLW_regs_reg_r2_0_31_28_31_DOE_UNCONNECTED[1:0]),
        .DOF(NLW_regs_reg_r2_0_31_28_31_DOF_UNCONNECTED[1:0]),
        .DOG(NLW_regs_reg_r2_0_31_28_31_DOG_UNCONNECTED[1:0]),
        .DOH(NLW_regs_reg_r2_0_31_28_31_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_2_in));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[0]_INST_0 
       (.I0(rd_wdata[0]),
        .I1(rs1_rdata_r0[0]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[0]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[10]_INST_0 
       (.I0(rd_wdata[10]),
        .I1(rs1_rdata_r0[10]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[10]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[11]_INST_0 
       (.I0(rd_wdata[11]),
        .I1(rs1_rdata_r0[11]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[11]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[12]_INST_0 
       (.I0(rd_wdata[12]),
        .I1(rs1_rdata_r0[12]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[12]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[13]_INST_0 
       (.I0(rd_wdata[13]),
        .I1(rs1_rdata_r0[13]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[13]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[14]_INST_0 
       (.I0(rd_wdata[14]),
        .I1(rs1_rdata_r0[14]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[14]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[15]_INST_0 
       (.I0(rd_wdata[15]),
        .I1(rs1_rdata_r0[15]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[15]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[16]_INST_0 
       (.I0(rd_wdata[16]),
        .I1(rs1_rdata_r0[16]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[16]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[17]_INST_0 
       (.I0(rd_wdata[17]),
        .I1(rs1_rdata_r0[17]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[17]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[18]_INST_0 
       (.I0(rd_wdata[18]),
        .I1(rs1_rdata_r0[18]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[18]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[19]_INST_0 
       (.I0(rd_wdata[19]),
        .I1(rs1_rdata_r0[19]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[19]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[1]_INST_0 
       (.I0(rd_wdata[1]),
        .I1(rs1_rdata_r0[1]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[1]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[20]_INST_0 
       (.I0(rd_wdata[20]),
        .I1(rs1_rdata_r0[20]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[20]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[21]_INST_0 
       (.I0(rd_wdata[21]),
        .I1(rs1_rdata_r0[21]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[21]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[22]_INST_0 
       (.I0(rd_wdata[22]),
        .I1(rs1_rdata_r0[22]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[22]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[23]_INST_0 
       (.I0(rd_wdata[23]),
        .I1(rs1_rdata_r0[23]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[23]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[24]_INST_0 
       (.I0(rd_wdata[24]),
        .I1(rs1_rdata_r0[24]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[24]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[25]_INST_0 
       (.I0(rd_wdata[25]),
        .I1(rs1_rdata_r0[25]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[25]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[26]_INST_0 
       (.I0(rd_wdata[26]),
        .I1(rs1_rdata_r0[26]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[26]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[27]_INST_0 
       (.I0(rd_wdata[27]),
        .I1(rs1_rdata_r0[27]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[27]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[28]_INST_0 
       (.I0(rd_wdata[28]),
        .I1(rs1_rdata_r0[28]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[28]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[29]_INST_0 
       (.I0(rd_wdata[29]),
        .I1(rs1_rdata_r0[29]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[29]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[2]_INST_0 
       (.I0(rd_wdata[2]),
        .I1(rs1_rdata_r0[2]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[2]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[30]_INST_0 
       (.I0(rd_wdata[30]),
        .I1(rs1_rdata_r0[30]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[30]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[31]_INST_0 
       (.I0(rd_wdata[31]),
        .I1(rs1_rdata_r0[31]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[31]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \rs1_rdata[31]_INST_0_i_3 
       (.I0(rd_we),
        .I1(rd_addr[3]),
        .I2(rd_addr[2]),
        .I3(rd_addr[1]),
        .I4(rd_addr[0]),
        .I5(rd_addr[4]),
        .O(p_2_in));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[3]_INST_0 
       (.I0(rd_wdata[3]),
        .I1(rs1_rdata_r0[3]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[3]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[4]_INST_0 
       (.I0(rd_wdata[4]),
        .I1(rs1_rdata_r0[4]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[4]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[5]_INST_0 
       (.I0(rd_wdata[5]),
        .I1(rs1_rdata_r0[5]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[5]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[6]_INST_0 
       (.I0(rd_wdata[6]),
        .I1(rs1_rdata_r0[6]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[6]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[7]_INST_0 
       (.I0(rd_wdata[7]),
        .I1(rs1_rdata_r0[7]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[7]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[8]_INST_0 
       (.I0(rd_wdata[8]),
        .I1(rs1_rdata_r0[8]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[8]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs1_rdata[9]_INST_0 
       (.I0(rd_wdata[9]),
        .I1(rs1_rdata_r0[9]),
        .I2(\ex_rs1_data_reg[0] ),
        .I3(\ex_rs1_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs1_data_reg[0]_1 ),
        .O(rs1_rdata[9]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[0]_INST_0 
       (.I0(rd_wdata[0]),
        .I1(rs2_rdata_r0[0]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[0]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[10]_INST_0 
       (.I0(rd_wdata[10]),
        .I1(rs2_rdata_r0[10]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[10]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[11]_INST_0 
       (.I0(rd_wdata[11]),
        .I1(rs2_rdata_r0[11]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[11]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[12]_INST_0 
       (.I0(rd_wdata[12]),
        .I1(rs2_rdata_r0[12]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[12]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[13]_INST_0 
       (.I0(rd_wdata[13]),
        .I1(rs2_rdata_r0[13]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[13]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[14]_INST_0 
       (.I0(rd_wdata[14]),
        .I1(rs2_rdata_r0[14]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[14]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[15]_INST_0 
       (.I0(rd_wdata[15]),
        .I1(rs2_rdata_r0[15]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[15]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[16]_INST_0 
       (.I0(rd_wdata[16]),
        .I1(rs2_rdata_r0[16]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[16]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[17]_INST_0 
       (.I0(rd_wdata[17]),
        .I1(rs2_rdata_r0[17]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[17]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[18]_INST_0 
       (.I0(rd_wdata[18]),
        .I1(rs2_rdata_r0[18]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[18]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[19]_INST_0 
       (.I0(rd_wdata[19]),
        .I1(rs2_rdata_r0[19]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[19]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[1]_INST_0 
       (.I0(rd_wdata[1]),
        .I1(rs2_rdata_r0[1]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[1]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[20]_INST_0 
       (.I0(rd_wdata[20]),
        .I1(rs2_rdata_r0[20]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[20]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[21]_INST_0 
       (.I0(rd_wdata[21]),
        .I1(rs2_rdata_r0[21]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[21]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[22]_INST_0 
       (.I0(rd_wdata[22]),
        .I1(rs2_rdata_r0[22]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[22]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[23]_INST_0 
       (.I0(rd_wdata[23]),
        .I1(rs2_rdata_r0[23]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[23]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[24]_INST_0 
       (.I0(rd_wdata[24]),
        .I1(rs2_rdata_r0[24]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[24]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[25]_INST_0 
       (.I0(rd_wdata[25]),
        .I1(rs2_rdata_r0[25]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[25]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[26]_INST_0 
       (.I0(rd_wdata[26]),
        .I1(rs2_rdata_r0[26]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[26]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[27]_INST_0 
       (.I0(rd_wdata[27]),
        .I1(rs2_rdata_r0[27]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[27]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[28]_INST_0 
       (.I0(rd_wdata[28]),
        .I1(rs2_rdata_r0[28]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[28]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[29]_INST_0 
       (.I0(rd_wdata[29]),
        .I1(rs2_rdata_r0[29]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[29]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[2]_INST_0 
       (.I0(rd_wdata[2]),
        .I1(rs2_rdata_r0[2]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[2]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[30]_INST_0 
       (.I0(rd_wdata[30]),
        .I1(rs2_rdata_r0[30]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[30]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[31]_INST_0 
       (.I0(rd_wdata[31]),
        .I1(rs2_rdata_r0[31]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[31]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[3]_INST_0 
       (.I0(rd_wdata[3]),
        .I1(rs2_rdata_r0[3]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[3]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[4]_INST_0 
       (.I0(rd_wdata[4]),
        .I1(rs2_rdata_r0[4]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[4]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[5]_INST_0 
       (.I0(rd_wdata[5]),
        .I1(rs2_rdata_r0[5]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[5]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[6]_INST_0 
       (.I0(rd_wdata[6]),
        .I1(rs2_rdata_r0[6]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[6]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[7]_INST_0 
       (.I0(rd_wdata[7]),
        .I1(rs2_rdata_r0[7]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[7]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[8]_INST_0 
       (.I0(rd_wdata[8]),
        .I1(rs2_rdata_r0[8]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[8]));
  LUT6 #(
    .INIT(64'hA0C0C0C0C0C0C0C0)) 
    \rs2_rdata[9]_INST_0 
       (.I0(rd_wdata[9]),
        .I1(rs2_rdata_r0[9]),
        .I2(\ex_rs2_data_reg[0] ),
        .I3(\ex_rs2_data_reg[0]_0 ),
        .I4(p_2_in),
        .I5(\ex_rs2_data_reg[0]_1 ),
        .O(rs2_rdata[9]));
endmodule

(* ORIG_REF_NAME = "rom_memory" *) 
module RV32_IF_EX_rom_memory
   (instr,
    clk,
    en,
    addr);
  output [7:0]instr;
  input clk;
  input en;
  input [10:0]addr;

  wire [10:0]addr;
  wire clk;
  wire en;
  wire [7:0]instr;
  wire [15:0]NLW_instr_reg_CASDOUTA_UNCONNECTED;
  wire [15:0]NLW_instr_reg_CASDOUTB_UNCONNECTED;
  wire [1:0]NLW_instr_reg_CASDOUTPA_UNCONNECTED;
  wire [1:0]NLW_instr_reg_CASDOUTPB_UNCONNECTED;
  wire [15:8]NLW_instr_reg_DOUTADOUT_UNCONNECTED;
  wire [15:0]NLW_instr_reg_DOUTBDOUT_UNCONNECTED;
  wire [1:0]NLW_instr_reg_DOUTPADOUTP_UNCONNECTED;
  wire [1:0]NLW_instr_reg_DOUTPBDOUTP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "inst/instr" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "2047" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0303030303030303030303030303030305030303635B534B433B332B231B130B),
    .INIT_01(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_02(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_03(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_04(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_05(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_06(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_07(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_08(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_09(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_0F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_10(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_11(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_12(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_13(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_14(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_15(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_16(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_17(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_18(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_19(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_1F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_20(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_21(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_22(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_23(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_24(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_25(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_26(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_27(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_28(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_29(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_2F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_30(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_31(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_32(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_33(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_34(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_35(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_36(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_37(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_38(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_39(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_3A(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_3B(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_3C(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_3D(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_3E(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_3F(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    instr_reg
       (.ADDRARDADDR({addr,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_instr_reg_CASDOUTA_UNCONNECTED[15:0]),
        .CASDOUTB(NLW_instr_reg_CASDOUTB_UNCONNECTED[15:0]),
        .CASDOUTPA(NLW_instr_reg_CASDOUTPA_UNCONNECTED[1:0]),
        .CASDOUTPB(NLW_instr_reg_CASDOUTPB_UNCONNECTED[1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b1,1'b1}),
        .DOUTADOUT({NLW_instr_reg_DOUTADOUT_UNCONNECTED[15:8],instr}),
        .DOUTBDOUT(NLW_instr_reg_DOUTBDOUT_UNCONNECTED[15:0]),
        .DOUTPADOUTP(NLW_instr_reg_DOUTPADOUTP_UNCONNECTED[1:0]),
        .DOUTPBDOUTP(NLW_instr_reg_DOUTPBDOUTP_UNCONNECTED[1:0]),
        .ENARDEN(en),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
