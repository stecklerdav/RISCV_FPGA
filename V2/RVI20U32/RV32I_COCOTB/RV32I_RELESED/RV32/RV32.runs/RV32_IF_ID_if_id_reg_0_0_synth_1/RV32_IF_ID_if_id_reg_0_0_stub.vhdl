-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri May 29 20:40:35 2026
-- Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RV32_IF_ID_if_id_reg_0_0_stub.vhdl
-- Design      : RV32_IF_ID_if_id_reg_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu5ev-sfvc784-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable : in STD_LOGIC;
    flush : in STD_LOGIC;
    if_pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    if_pc_plus4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    if_instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    id_pc_plus4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    id_instr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,enable,flush,if_pc[31:0],if_pc_plus4[31:0],if_instr[31:0],id_pc[31:0],id_pc_plus4[31:0],id_instr[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "if_id_reg,Vivado 2020.1";
begin
end;
