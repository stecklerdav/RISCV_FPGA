-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri May 29 20:40:36 2026
-- Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/OLD/RV32I_RELESED/RV32/RV32.srcs/sources_1/bd/RV32_IF_ID/ip/RV32_IF_ID_pc_unit_0_0/RV32_IF_ID_pc_unit_0_0_stub.vhdl
-- Design      : RV32_IF_ID_pc_unit_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu5ev-sfvc784-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RV32_IF_ID_pc_unit_0_0 is
  Port ( 
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    pc_en : in STD_LOGIC;
    pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_plus4 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end RV32_IF_ID_pc_unit_0_0;

architecture stub of RV32_IF_ID_pc_unit_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,clk,pc_en,pc[31:0],pc_plus4[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pc_unit,Vivado 2020.1";
begin
end;
