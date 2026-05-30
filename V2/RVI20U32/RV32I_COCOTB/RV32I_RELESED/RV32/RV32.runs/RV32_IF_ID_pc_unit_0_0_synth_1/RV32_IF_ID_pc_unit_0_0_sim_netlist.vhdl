-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri May 29 20:40:36 2026
-- Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RV32_IF_ID_pc_unit_0_0_sim_netlist.vhdl
-- Design      : RV32_IF_ID_pc_unit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu5ev-sfvc784-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pc_unit is
  port (
    pc : out STD_LOGIC_VECTOR ( 29 downto 0 );
    pc_plus4 : out STD_LOGIC_VECTOR ( 29 downto 0 );
    pc_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pc_unit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pc_unit is
  signal \^pc\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \pc[9]_i_2_n_0\ : STD_LOGIC;
  signal \pc_plus4[17]_INST_0_n_0\ : STD_LOGIC;
  signal \pc_plus4[17]_INST_0_n_1\ : STD_LOGIC;
  signal \pc_plus4[17]_INST_0_n_2\ : STD_LOGIC;
  signal \pc_plus4[17]_INST_0_n_3\ : STD_LOGIC;
  signal \pc_plus4[17]_INST_0_n_4\ : STD_LOGIC;
  signal \pc_plus4[17]_INST_0_n_5\ : STD_LOGIC;
  signal \pc_plus4[17]_INST_0_n_6\ : STD_LOGIC;
  signal \pc_plus4[17]_INST_0_n_7\ : STD_LOGIC;
  signal \pc_plus4[25]_INST_0_n_2\ : STD_LOGIC;
  signal \pc_plus4[25]_INST_0_n_3\ : STD_LOGIC;
  signal \pc_plus4[25]_INST_0_n_4\ : STD_LOGIC;
  signal \pc_plus4[25]_INST_0_n_5\ : STD_LOGIC;
  signal \pc_plus4[25]_INST_0_n_6\ : STD_LOGIC;
  signal \pc_plus4[25]_INST_0_n_7\ : STD_LOGIC;
  signal \pc_plus4[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \pc_plus4[2]_INST_0_n_0\ : STD_LOGIC;
  signal \pc_plus4[2]_INST_0_n_1\ : STD_LOGIC;
  signal \pc_plus4[2]_INST_0_n_2\ : STD_LOGIC;
  signal \pc_plus4[2]_INST_0_n_3\ : STD_LOGIC;
  signal \pc_plus4[2]_INST_0_n_4\ : STD_LOGIC;
  signal \pc_plus4[2]_INST_0_n_5\ : STD_LOGIC;
  signal \pc_plus4[2]_INST_0_n_6\ : STD_LOGIC;
  signal \pc_plus4[2]_INST_0_n_7\ : STD_LOGIC;
  signal \pc_plus4[9]_INST_0_n_0\ : STD_LOGIC;
  signal \pc_plus4[9]_INST_0_n_1\ : STD_LOGIC;
  signal \pc_plus4[9]_INST_0_n_2\ : STD_LOGIC;
  signal \pc_plus4[9]_INST_0_n_3\ : STD_LOGIC;
  signal \pc_plus4[9]_INST_0_n_4\ : STD_LOGIC;
  signal \pc_plus4[9]_INST_0_n_5\ : STD_LOGIC;
  signal \pc_plus4[9]_INST_0_n_6\ : STD_LOGIC;
  signal \pc_plus4[9]_INST_0_n_7\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_10\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_11\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_12\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_13\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_14\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_15\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_8\ : STD_LOGIC;
  signal \pc_reg[17]_i_1_n_9\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_10\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_11\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_12\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_13\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_14\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_15\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_8\ : STD_LOGIC;
  signal \pc_reg[25]_i_1_n_9\ : STD_LOGIC;
  signal \pc_reg[31]_i_1_n_10\ : STD_LOGIC;
  signal \pc_reg[31]_i_1_n_11\ : STD_LOGIC;
  signal \pc_reg[31]_i_1_n_12\ : STD_LOGIC;
  signal \pc_reg[31]_i_1_n_13\ : STD_LOGIC;
  signal \pc_reg[31]_i_1_n_14\ : STD_LOGIC;
  signal \pc_reg[31]_i_1_n_15\ : STD_LOGIC;
  signal \pc_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_10\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_11\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_12\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_13\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_14\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_15\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_8\ : STD_LOGIC;
  signal \pc_reg[9]_i_1_n_9\ : STD_LOGIC;
  signal \NLW_pc_plus4[25]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_pc_plus4[25]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_pc_plus4[2]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_pc_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_pc_reg[31]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pc_plus4[17]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \pc_plus4[25]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \pc_plus4[2]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \pc_plus4[9]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \pc_reg[17]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \pc_reg[25]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \pc_reg[31]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \pc_reg[9]_i_1\ : label is 16;
begin
  pc(29 downto 0) <= \^pc\(29 downto 0);
\pc[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pc\(0),
      O => \pc[9]_i_2_n_0\
    );
\pc_plus4[17]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \pc_plus4[9]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7) => \pc_plus4[17]_INST_0_n_0\,
      CO(6) => \pc_plus4[17]_INST_0_n_1\,
      CO(5) => \pc_plus4[17]_INST_0_n_2\,
      CO(4) => \pc_plus4[17]_INST_0_n_3\,
      CO(3) => \pc_plus4[17]_INST_0_n_4\,
      CO(2) => \pc_plus4[17]_INST_0_n_5\,
      CO(1) => \pc_plus4[17]_INST_0_n_6\,
      CO(0) => \pc_plus4[17]_INST_0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => pc_plus4(22 downto 15),
      S(7 downto 0) => \^pc\(22 downto 15)
    );
\pc_plus4[25]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \pc_plus4[17]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_pc_plus4[25]_INST_0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \pc_plus4[25]_INST_0_n_2\,
      CO(4) => \pc_plus4[25]_INST_0_n_3\,
      CO(3) => \pc_plus4[25]_INST_0_n_4\,
      CO(2) => \pc_plus4[25]_INST_0_n_5\,
      CO(1) => \pc_plus4[25]_INST_0_n_6\,
      CO(0) => \pc_plus4[25]_INST_0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_pc_plus4[25]_INST_0_O_UNCONNECTED\(7),
      O(6 downto 0) => pc_plus4(29 downto 23),
      S(7) => '0',
      S(6 downto 0) => \^pc\(29 downto 23)
    );
\pc_plus4[2]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \pc_plus4[2]_INST_0_n_0\,
      CO(6) => \pc_plus4[2]_INST_0_n_1\,
      CO(5) => \pc_plus4[2]_INST_0_n_2\,
      CO(4) => \pc_plus4[2]_INST_0_n_3\,
      CO(3) => \pc_plus4[2]_INST_0_n_4\,
      CO(2) => \pc_plus4[2]_INST_0_n_5\,
      CO(1) => \pc_plus4[2]_INST_0_n_6\,
      CO(0) => \pc_plus4[2]_INST_0_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \^pc\(0),
      DI(0) => '0',
      O(7 downto 1) => pc_plus4(6 downto 0),
      O(0) => \NLW_pc_plus4[2]_INST_0_O_UNCONNECTED\(0),
      S(7 downto 2) => \^pc\(6 downto 1),
      S(1) => \pc_plus4[2]_INST_0_i_1_n_0\,
      S(0) => '0'
    );
\pc_plus4[2]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pc\(0),
      O => \pc_plus4[2]_INST_0_i_1_n_0\
    );
\pc_plus4[9]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \pc_plus4[2]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7) => \pc_plus4[9]_INST_0_n_0\,
      CO(6) => \pc_plus4[9]_INST_0_n_1\,
      CO(5) => \pc_plus4[9]_INST_0_n_2\,
      CO(4) => \pc_plus4[9]_INST_0_n_3\,
      CO(3) => \pc_plus4[9]_INST_0_n_4\,
      CO(2) => \pc_plus4[9]_INST_0_n_5\,
      CO(1) => \pc_plus4[9]_INST_0_n_6\,
      CO(0) => \pc_plus4[9]_INST_0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => pc_plus4(14 downto 7),
      S(7 downto 0) => \^pc\(14 downto 7)
    );
\pc_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[17]_i_1_n_15\,
      Q => \^pc\(8)
    );
\pc_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[17]_i_1_n_14\,
      Q => \^pc\(9)
    );
\pc_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[17]_i_1_n_13\,
      Q => \^pc\(10)
    );
\pc_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[17]_i_1_n_12\,
      Q => \^pc\(11)
    );
\pc_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[17]_i_1_n_11\,
      Q => \^pc\(12)
    );
\pc_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[17]_i_1_n_10\,
      Q => \^pc\(13)
    );
\pc_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[17]_i_1_n_9\,
      Q => \^pc\(14)
    );
\pc_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[17]_i_1_n_8\,
      Q => \^pc\(15)
    );
\pc_reg[17]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \pc_reg[9]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \pc_reg[17]_i_1_n_0\,
      CO(6) => \pc_reg[17]_i_1_n_1\,
      CO(5) => \pc_reg[17]_i_1_n_2\,
      CO(4) => \pc_reg[17]_i_1_n_3\,
      CO(3) => \pc_reg[17]_i_1_n_4\,
      CO(2) => \pc_reg[17]_i_1_n_5\,
      CO(1) => \pc_reg[17]_i_1_n_6\,
      CO(0) => \pc_reg[17]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \pc_reg[17]_i_1_n_8\,
      O(6) => \pc_reg[17]_i_1_n_9\,
      O(5) => \pc_reg[17]_i_1_n_10\,
      O(4) => \pc_reg[17]_i_1_n_11\,
      O(3) => \pc_reg[17]_i_1_n_12\,
      O(2) => \pc_reg[17]_i_1_n_13\,
      O(1) => \pc_reg[17]_i_1_n_14\,
      O(0) => \pc_reg[17]_i_1_n_15\,
      S(7 downto 0) => \^pc\(15 downto 8)
    );
\pc_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[25]_i_1_n_15\,
      Q => \^pc\(16)
    );
\pc_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[25]_i_1_n_14\,
      Q => \^pc\(17)
    );
\pc_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[25]_i_1_n_13\,
      Q => \^pc\(18)
    );
\pc_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[25]_i_1_n_12\,
      Q => \^pc\(19)
    );
\pc_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[25]_i_1_n_11\,
      Q => \^pc\(20)
    );
\pc_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[25]_i_1_n_10\,
      Q => \^pc\(21)
    );
\pc_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[25]_i_1_n_9\,
      Q => \^pc\(22)
    );
\pc_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[25]_i_1_n_8\,
      Q => \^pc\(23)
    );
\pc_reg[25]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \pc_reg[17]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \pc_reg[25]_i_1_n_0\,
      CO(6) => \pc_reg[25]_i_1_n_1\,
      CO(5) => \pc_reg[25]_i_1_n_2\,
      CO(4) => \pc_reg[25]_i_1_n_3\,
      CO(3) => \pc_reg[25]_i_1_n_4\,
      CO(2) => \pc_reg[25]_i_1_n_5\,
      CO(1) => \pc_reg[25]_i_1_n_6\,
      CO(0) => \pc_reg[25]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \pc_reg[25]_i_1_n_8\,
      O(6) => \pc_reg[25]_i_1_n_9\,
      O(5) => \pc_reg[25]_i_1_n_10\,
      O(4) => \pc_reg[25]_i_1_n_11\,
      O(3) => \pc_reg[25]_i_1_n_12\,
      O(2) => \pc_reg[25]_i_1_n_13\,
      O(1) => \pc_reg[25]_i_1_n_14\,
      O(0) => \pc_reg[25]_i_1_n_15\,
      S(7 downto 0) => \^pc\(23 downto 16)
    );
\pc_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[31]_i_1_n_15\,
      Q => \^pc\(24)
    );
\pc_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[31]_i_1_n_14\,
      Q => \^pc\(25)
    );
\pc_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[31]_i_1_n_13\,
      Q => \^pc\(26)
    );
\pc_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[31]_i_1_n_12\,
      Q => \^pc\(27)
    );
\pc_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[9]_i_1_n_15\,
      Q => \^pc\(0)
    );
\pc_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[31]_i_1_n_11\,
      Q => \^pc\(28)
    );
\pc_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[31]_i_1_n_10\,
      Q => \^pc\(29)
    );
\pc_reg[31]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \pc_reg[25]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_pc_reg[31]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \pc_reg[31]_i_1_n_3\,
      CO(3) => \pc_reg[31]_i_1_n_4\,
      CO(2) => \pc_reg[31]_i_1_n_5\,
      CO(1) => \pc_reg[31]_i_1_n_6\,
      CO(0) => \pc_reg[31]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 6) => \NLW_pc_reg[31]_i_1_O_UNCONNECTED\(7 downto 6),
      O(5) => \pc_reg[31]_i_1_n_10\,
      O(4) => \pc_reg[31]_i_1_n_11\,
      O(3) => \pc_reg[31]_i_1_n_12\,
      O(2) => \pc_reg[31]_i_1_n_13\,
      O(1) => \pc_reg[31]_i_1_n_14\,
      O(0) => \pc_reg[31]_i_1_n_15\,
      S(7 downto 6) => B"00",
      S(5 downto 0) => \^pc\(29 downto 24)
    );
\pc_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[9]_i_1_n_14\,
      Q => \^pc\(1)
    );
\pc_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[9]_i_1_n_13\,
      Q => \^pc\(2)
    );
\pc_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[9]_i_1_n_12\,
      Q => \^pc\(3)
    );
\pc_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[9]_i_1_n_11\,
      Q => \^pc\(4)
    );
\pc_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[9]_i_1_n_10\,
      Q => \^pc\(5)
    );
\pc_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[9]_i_1_n_9\,
      Q => \^pc\(6)
    );
\pc_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => pc_en,
      CLR => rst,
      D => \pc_reg[9]_i_1_n_8\,
      Q => \^pc\(7)
    );
\pc_reg[9]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \pc_reg[9]_i_1_n_0\,
      CO(6) => \pc_reg[9]_i_1_n_1\,
      CO(5) => \pc_reg[9]_i_1_n_2\,
      CO(4) => \pc_reg[9]_i_1_n_3\,
      CO(3) => \pc_reg[9]_i_1_n_4\,
      CO(2) => \pc_reg[9]_i_1_n_5\,
      CO(1) => \pc_reg[9]_i_1_n_6\,
      CO(0) => \pc_reg[9]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \pc_reg[9]_i_1_n_8\,
      O(6) => \pc_reg[9]_i_1_n_9\,
      O(5) => \pc_reg[9]_i_1_n_10\,
      O(4) => \pc_reg[9]_i_1_n_11\,
      O(3) => \pc_reg[9]_i_1_n_12\,
      O(2) => \pc_reg[9]_i_1_n_13\,
      O(1) => \pc_reg[9]_i_1_n_14\,
      O(0) => \pc_reg[9]_i_1_n_15\,
      S(7 downto 1) => \^pc\(7 downto 1),
      S(0) => \pc[9]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    pc_en : in STD_LOGIC;
    pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_plus4 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "RV32_IF_ID_pc_unit_0_0,pc_unit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pc_unit,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^pc\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \^pc_plus4\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  pc(31 downto 2) <= \^pc\(31 downto 2);
  pc(1) <= \<const0>\;
  pc(0) <= \<const0>\;
  pc_plus4(31 downto 2) <= \^pc_plus4\(31 downto 2);
  pc_plus4(1) <= \<const0>\;
  pc_plus4(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pc_unit
     port map (
      clk => clk,
      pc(29 downto 0) => \^pc\(31 downto 2),
      pc_en => pc_en,
      pc_plus4(29 downto 0) => \^pc_plus4\(31 downto 2),
      rst => rst
    );
end STRUCTURE;
