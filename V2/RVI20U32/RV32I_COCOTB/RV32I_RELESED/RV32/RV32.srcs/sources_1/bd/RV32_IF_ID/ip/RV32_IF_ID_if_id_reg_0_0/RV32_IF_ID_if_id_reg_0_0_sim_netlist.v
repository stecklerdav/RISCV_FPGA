// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri May 29 20:40:36 2026
// Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/OLD/RV32I_RELESED/RV32/RV32.srcs/sources_1/bd/RV32_IF_ID/ip/RV32_IF_ID_if_id_reg_0_0/RV32_IF_ID_if_id_reg_0_0_sim_netlist.v
// Design      : RV32_IF_ID_if_id_reg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RV32_IF_ID_if_id_reg_0_0,if_id_reg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "if_id_reg,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module RV32_IF_ID_if_id_reg_0_0
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

  RV32_IF_ID_if_id_reg_0_0_if_id_reg inst
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

(* ORIG_REF_NAME = "if_id_reg" *) 
module RV32_IF_ID_if_id_reg_0_0_if_id_reg
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

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \id_instr[0]_i_1 
       (.I0(if_instr[0]),
        .I1(flush),
        .O(\id_instr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[10]_i_1 
       (.I0(if_instr[10]),
        .I1(flush),
        .O(\id_instr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[11]_i_1 
       (.I0(if_instr[11]),
        .I1(flush),
        .O(\id_instr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[12]_i_1 
       (.I0(if_instr[12]),
        .I1(flush),
        .O(\id_instr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[13]_i_1 
       (.I0(if_instr[13]),
        .I1(flush),
        .O(\id_instr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[14]_i_1 
       (.I0(if_instr[14]),
        .I1(flush),
        .O(\id_instr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[15]_i_1 
       (.I0(if_instr[15]),
        .I1(flush),
        .O(\id_instr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[16]_i_1 
       (.I0(if_instr[16]),
        .I1(flush),
        .O(\id_instr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[17]_i_1 
       (.I0(if_instr[17]),
        .I1(flush),
        .O(\id_instr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[18]_i_1 
       (.I0(if_instr[18]),
        .I1(flush),
        .O(\id_instr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[19]_i_1 
       (.I0(if_instr[19]),
        .I1(flush),
        .O(\id_instr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \id_instr[1]_i_1 
       (.I0(if_instr[1]),
        .I1(flush),
        .O(\id_instr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[20]_i_1 
       (.I0(if_instr[20]),
        .I1(flush),
        .O(\id_instr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[21]_i_1 
       (.I0(if_instr[21]),
        .I1(flush),
        .O(\id_instr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[22]_i_1 
       (.I0(if_instr[22]),
        .I1(flush),
        .O(\id_instr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[23]_i_1 
       (.I0(if_instr[23]),
        .I1(flush),
        .O(\id_instr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[24]_i_1 
       (.I0(if_instr[24]),
        .I1(flush),
        .O(\id_instr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[25]_i_1 
       (.I0(if_instr[25]),
        .I1(flush),
        .O(\id_instr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[26]_i_1 
       (.I0(if_instr[26]),
        .I1(flush),
        .O(\id_instr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[27]_i_1 
       (.I0(if_instr[27]),
        .I1(flush),
        .O(\id_instr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[28]_i_1 
       (.I0(if_instr[28]),
        .I1(flush),
        .O(\id_instr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[29]_i_1 
       (.I0(if_instr[29]),
        .I1(flush),
        .O(\id_instr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[2]_i_1 
       (.I0(if_instr[2]),
        .I1(flush),
        .O(\id_instr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[5]_i_1 
       (.I0(if_instr[5]),
        .I1(flush),
        .O(\id_instr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[6]_i_1 
       (.I0(if_instr[6]),
        .I1(flush),
        .O(\id_instr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[7]_i_1 
       (.I0(if_instr[7]),
        .I1(flush),
        .O(\id_instr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_instr[8]_i_1 
       (.I0(if_instr[8]),
        .I1(flush),
        .O(\id_instr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[0]_i_1 
       (.I0(if_pc[0]),
        .I1(flush),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[10]_i_1 
       (.I0(if_pc[10]),
        .I1(flush),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[11]_i_1 
       (.I0(if_pc[11]),
        .I1(flush),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[12]_i_1 
       (.I0(if_pc[12]),
        .I1(flush),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[13]_i_1 
       (.I0(if_pc[13]),
        .I1(flush),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[14]_i_1 
       (.I0(if_pc[14]),
        .I1(flush),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[15]_i_1 
       (.I0(if_pc[15]),
        .I1(flush),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[16]_i_1 
       (.I0(if_pc[16]),
        .I1(flush),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[17]_i_1 
       (.I0(if_pc[17]),
        .I1(flush),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[18]_i_1 
       (.I0(if_pc[18]),
        .I1(flush),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[19]_i_1 
       (.I0(if_pc[19]),
        .I1(flush),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[1]_i_1 
       (.I0(if_pc[1]),
        .I1(flush),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[20]_i_1 
       (.I0(if_pc[20]),
        .I1(flush),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[21]_i_1 
       (.I0(if_pc[21]),
        .I1(flush),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[22]_i_1 
       (.I0(if_pc[22]),
        .I1(flush),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[23]_i_1 
       (.I0(if_pc[23]),
        .I1(flush),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[24]_i_1 
       (.I0(if_pc[24]),
        .I1(flush),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[25]_i_1 
       (.I0(if_pc[25]),
        .I1(flush),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[26]_i_1 
       (.I0(if_pc[26]),
        .I1(flush),
        .O(p_0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[27]_i_1 
       (.I0(if_pc[27]),
        .I1(flush),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[28]_i_1 
       (.I0(if_pc[28]),
        .I1(flush),
        .O(p_0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[29]_i_1 
       (.I0(if_pc[29]),
        .I1(flush),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[2]_i_1 
       (.I0(if_pc[2]),
        .I1(flush),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[31]_i_2 
       (.I0(if_pc[31]),
        .I1(flush),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[3]_i_1 
       (.I0(if_pc[3]),
        .I1(flush),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[4]_i_1 
       (.I0(if_pc[4]),
        .I1(flush),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[5]_i_1 
       (.I0(if_pc[5]),
        .I1(flush),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[6]_i_1 
       (.I0(if_pc[6]),
        .I1(flush),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[7]_i_1 
       (.I0(if_pc[7]),
        .I1(flush),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[8]_i_1 
       (.I0(if_pc[8]),
        .I1(flush),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc[9]_i_1 
       (.I0(if_pc[9]),
        .I1(flush),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[0]_i_1 
       (.I0(if_pc_plus4[0]),
        .I1(flush),
        .O(\id_pc_plus4[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[10]_i_1 
       (.I0(if_pc_plus4[10]),
        .I1(flush),
        .O(\id_pc_plus4[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[11]_i_1 
       (.I0(if_pc_plus4[11]),
        .I1(flush),
        .O(\id_pc_plus4[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[12]_i_1 
       (.I0(if_pc_plus4[12]),
        .I1(flush),
        .O(\id_pc_plus4[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[13]_i_1 
       (.I0(if_pc_plus4[13]),
        .I1(flush),
        .O(\id_pc_plus4[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[14]_i_1 
       (.I0(if_pc_plus4[14]),
        .I1(flush),
        .O(\id_pc_plus4[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[15]_i_1 
       (.I0(if_pc_plus4[15]),
        .I1(flush),
        .O(\id_pc_plus4[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[16]_i_1 
       (.I0(if_pc_plus4[16]),
        .I1(flush),
        .O(\id_pc_plus4[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[17]_i_1 
       (.I0(if_pc_plus4[17]),
        .I1(flush),
        .O(\id_pc_plus4[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[18]_i_1 
       (.I0(if_pc_plus4[18]),
        .I1(flush),
        .O(\id_pc_plus4[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[19]_i_1 
       (.I0(if_pc_plus4[19]),
        .I1(flush),
        .O(\id_pc_plus4[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[1]_i_1 
       (.I0(if_pc_plus4[1]),
        .I1(flush),
        .O(\id_pc_plus4[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[20]_i_1 
       (.I0(if_pc_plus4[20]),
        .I1(flush),
        .O(\id_pc_plus4[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[21]_i_1 
       (.I0(if_pc_plus4[21]),
        .I1(flush),
        .O(\id_pc_plus4[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[22]_i_1 
       (.I0(if_pc_plus4[22]),
        .I1(flush),
        .O(\id_pc_plus4[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[23]_i_1 
       (.I0(if_pc_plus4[23]),
        .I1(flush),
        .O(\id_pc_plus4[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[24]_i_1 
       (.I0(if_pc_plus4[24]),
        .I1(flush),
        .O(\id_pc_plus4[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[25]_i_1 
       (.I0(if_pc_plus4[25]),
        .I1(flush),
        .O(\id_pc_plus4[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[26]_i_1 
       (.I0(if_pc_plus4[26]),
        .I1(flush),
        .O(\id_pc_plus4[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[27]_i_1 
       (.I0(if_pc_plus4[27]),
        .I1(flush),
        .O(\id_pc_plus4[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[28]_i_1 
       (.I0(if_pc_plus4[28]),
        .I1(flush),
        .O(\id_pc_plus4[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[29]_i_1 
       (.I0(if_pc_plus4[29]),
        .I1(flush),
        .O(\id_pc_plus4[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[2]_i_1 
       (.I0(if_pc_plus4[2]),
        .I1(flush),
        .O(\id_pc_plus4[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[30]_i_1 
       (.I0(if_pc_plus4[30]),
        .I1(flush),
        .O(\id_pc_plus4[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[31]_i_1 
       (.I0(if_pc_plus4[31]),
        .I1(flush),
        .O(\id_pc_plus4[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[3]_i_1 
       (.I0(if_pc_plus4[3]),
        .I1(flush),
        .O(\id_pc_plus4[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[4]_i_1 
       (.I0(if_pc_plus4[4]),
        .I1(flush),
        .O(\id_pc_plus4[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[5]_i_1 
       (.I0(if_pc_plus4[5]),
        .I1(flush),
        .O(\id_pc_plus4[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[6]_i_1 
       (.I0(if_pc_plus4[6]),
        .I1(flush),
        .O(\id_pc_plus4[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[7]_i_1 
       (.I0(if_pc_plus4[7]),
        .I1(flush),
        .O(\id_pc_plus4[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \id_pc_plus4[8]_i_1 
       (.I0(if_pc_plus4[8]),
        .I1(flush),
        .O(\id_pc_plus4[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
