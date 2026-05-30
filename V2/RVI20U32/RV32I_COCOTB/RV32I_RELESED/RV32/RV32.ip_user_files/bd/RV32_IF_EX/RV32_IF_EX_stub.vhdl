-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sat May 30 00:31:44 2026
-- Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RV32I_RELESED/RV32/RV32.srcs/sources_1/bd/RV32_IF_EX/RV32_IF_EX_stub.vhdl
-- Design      : RV32_IF_EX
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu5ev-sfvc784-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RV32_IF_EX is
  Port ( 
    clk : in STD_LOGIC;
    ex_alu_op : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ex_imm : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_instr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_pc_plus4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_rd : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ex_rd_we : out STD_LOGIC;
    ex_rs1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ex_rs1_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_rs2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ex_rs2_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_valid : out STD_LOGIC;
    id_instr_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    id_pc_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    id_pc_plus4_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    if_id_enable : in STD_LOGIC;
    if_id_flush : in STD_LOGIC;
    if_instr_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    if_pc_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    if_pc_plus4_debug : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rd_we : in STD_LOGIC;
    rst : in STD_LOGIC
  );

end RV32_IF_EX;

architecture stub of RV32_IF_EX is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,ex_alu_op[3:0],ex_imm[31:0],ex_instr[31:0],ex_pc[31:0],ex_pc_plus4[31:0],ex_rd[4:0],ex_rd_we,ex_rs1[4:0],ex_rs1_data[31:0],ex_rs2[4:0],ex_rs2_data[31:0],ex_valid,id_instr_debug[31:0],id_pc_debug[31:0],id_pc_plus4_debug[31:0],if_id_enable,if_id_flush,if_instr_debug[31:0],if_pc_debug[31:0],if_pc_plus4_debug[31:0],rd_addr[4:0],rd_wdata[31:0],rd_we,rst";
begin
end;
