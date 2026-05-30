// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri May 29 20:40:36 2026
// Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/OLD/RV32I_RELESED/RV32/RV32.srcs/sources_1/bd/RV32_IF_ID/ip/RV32_IF_ID_pc_unit_0_0/RV32_IF_ID_pc_unit_0_0_sim_netlist.v
// Design      : RV32_IF_ID_pc_unit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RV32_IF_ID_pc_unit_0_0,pc_unit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pc_unit,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module RV32_IF_ID_pc_unit_0_0
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
  RV32_IF_ID_pc_unit_0_0_pc_unit inst
       (.clk(clk),
        .pc(\^pc ),
        .pc_en(pc_en),
        .pc_plus4(\^pc_plus4 ),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "pc_unit" *) 
module RV32_IF_ID_pc_unit_0_0_pc_unit
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
