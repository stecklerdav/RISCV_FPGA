-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri May 29 20:40:36 2026
-- Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/OLD/RV32I_RELESED/RV32/RV32.srcs/sources_1/bd/RV32_IF_ID/ip/RV32_IF_ID_if_id_reg_0_0/RV32_IF_ID_if_id_reg_0_0_sim_netlist.vhdl
-- Design      : RV32_IF_ID_if_id_reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu5ev-sfvc784-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_ID_if_id_reg_0_0_if_id_reg is
  port (
    id_pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    id_pc_plus4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    id_instr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    if_pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    flush : in STD_LOGIC;
    if_pc_plus4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    if_instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_ID_if_id_reg_0_0_if_id_reg : entity is "if_id_reg";
end RV32_IF_ID_if_id_reg_0_0_if_id_reg;

architecture STRUCTURE of RV32_IF_ID_if_id_reg_0_0_if_id_reg is
  signal \id_instr[0]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[10]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[11]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[12]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[13]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[14]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[15]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[16]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[17]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[18]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[19]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[1]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[20]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[21]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[22]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[23]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[24]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[25]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[26]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[27]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[28]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[29]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[2]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[30]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[31]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[3]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[4]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[5]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[6]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[7]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[8]_i_1_n_0\ : STD_LOGIC;
  signal \id_instr[9]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc[31]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[0]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[10]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[11]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[12]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[13]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[14]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[15]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[16]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[17]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[18]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[19]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[1]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[20]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[21]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[22]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[23]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[24]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[25]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[26]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[27]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[28]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[29]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[2]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[30]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[31]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[3]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[4]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[5]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[6]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[7]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[8]_i_1_n_0\ : STD_LOGIC;
  signal \id_pc_plus4[9]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \id_instr[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \id_instr[10]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \id_instr[11]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \id_instr[12]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \id_instr[13]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \id_instr[14]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \id_instr[15]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \id_instr[16]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \id_instr[17]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \id_instr[18]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \id_instr[19]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \id_instr[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \id_instr[20]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \id_instr[21]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \id_instr[22]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \id_instr[23]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \id_instr[24]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \id_instr[25]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \id_instr[26]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \id_instr[27]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \id_instr[28]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \id_instr[29]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \id_instr[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \id_instr[30]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \id_instr[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \id_instr[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \id_instr[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \id_instr[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \id_instr[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \id_instr[9]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \id_pc[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \id_pc[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \id_pc[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \id_pc[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \id_pc[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \id_pc[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \id_pc[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \id_pc[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \id_pc[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \id_pc[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \id_pc[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \id_pc[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \id_pc[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \id_pc[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \id_pc[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \id_pc[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \id_pc[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \id_pc[25]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \id_pc[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \id_pc[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \id_pc[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \id_pc[29]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \id_pc[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \id_pc[30]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \id_pc[31]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \id_pc[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \id_pc[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \id_pc[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \id_pc[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \id_pc[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \id_pc[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \id_pc[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \id_pc_plus4[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \id_pc_plus4[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \id_pc_plus4[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \id_pc_plus4[12]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \id_pc_plus4[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \id_pc_plus4[14]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \id_pc_plus4[15]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \id_pc_plus4[16]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \id_pc_plus4[17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \id_pc_plus4[18]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \id_pc_plus4[19]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \id_pc_plus4[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \id_pc_plus4[20]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \id_pc_plus4[21]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \id_pc_plus4[22]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \id_pc_plus4[23]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \id_pc_plus4[24]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \id_pc_plus4[25]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \id_pc_plus4[26]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \id_pc_plus4[27]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \id_pc_plus4[28]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \id_pc_plus4[29]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \id_pc_plus4[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \id_pc_plus4[30]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \id_pc_plus4[31]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \id_pc_plus4[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \id_pc_plus4[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \id_pc_plus4[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \id_pc_plus4[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \id_pc_plus4[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \id_pc_plus4[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \id_pc_plus4[9]_i_1\ : label is "soft_lutpair20";
begin
\id_instr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => if_instr(0),
      I1 => flush,
      O => \id_instr[0]_i_1_n_0\
    );
\id_instr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(10),
      I1 => flush,
      O => \id_instr[10]_i_1_n_0\
    );
\id_instr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(11),
      I1 => flush,
      O => \id_instr[11]_i_1_n_0\
    );
\id_instr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(12),
      I1 => flush,
      O => \id_instr[12]_i_1_n_0\
    );
\id_instr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(13),
      I1 => flush,
      O => \id_instr[13]_i_1_n_0\
    );
\id_instr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(14),
      I1 => flush,
      O => \id_instr[14]_i_1_n_0\
    );
\id_instr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(15),
      I1 => flush,
      O => \id_instr[15]_i_1_n_0\
    );
\id_instr[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(16),
      I1 => flush,
      O => \id_instr[16]_i_1_n_0\
    );
\id_instr[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(17),
      I1 => flush,
      O => \id_instr[17]_i_1_n_0\
    );
\id_instr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(18),
      I1 => flush,
      O => \id_instr[18]_i_1_n_0\
    );
\id_instr[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(19),
      I1 => flush,
      O => \id_instr[19]_i_1_n_0\
    );
\id_instr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => if_instr(1),
      I1 => flush,
      O => \id_instr[1]_i_1_n_0\
    );
\id_instr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(20),
      I1 => flush,
      O => \id_instr[20]_i_1_n_0\
    );
\id_instr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(21),
      I1 => flush,
      O => \id_instr[21]_i_1_n_0\
    );
\id_instr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(22),
      I1 => flush,
      O => \id_instr[22]_i_1_n_0\
    );
\id_instr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(23),
      I1 => flush,
      O => \id_instr[23]_i_1_n_0\
    );
\id_instr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(24),
      I1 => flush,
      O => \id_instr[24]_i_1_n_0\
    );
\id_instr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(25),
      I1 => flush,
      O => \id_instr[25]_i_1_n_0\
    );
\id_instr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(26),
      I1 => flush,
      O => \id_instr[26]_i_1_n_0\
    );
\id_instr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(27),
      I1 => flush,
      O => \id_instr[27]_i_1_n_0\
    );
\id_instr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(28),
      I1 => flush,
      O => \id_instr[28]_i_1_n_0\
    );
\id_instr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(29),
      I1 => flush,
      O => \id_instr[29]_i_1_n_0\
    );
\id_instr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(2),
      I1 => flush,
      O => \id_instr[2]_i_1_n_0\
    );
\id_instr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(30),
      I1 => flush,
      O => \id_instr[30]_i_1_n_0\
    );
\id_instr[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(31),
      I1 => flush,
      O => \id_instr[31]_i_1_n_0\
    );
\id_instr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(3),
      I1 => flush,
      O => \id_instr[3]_i_1_n_0\
    );
\id_instr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => if_instr(4),
      I1 => flush,
      O => \id_instr[4]_i_1_n_0\
    );
\id_instr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(5),
      I1 => flush,
      O => \id_instr[5]_i_1_n_0\
    );
\id_instr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(6),
      I1 => flush,
      O => \id_instr[6]_i_1_n_0\
    );
\id_instr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(7),
      I1 => flush,
      O => \id_instr[7]_i_1_n_0\
    );
\id_instr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(8),
      I1 => flush,
      O => \id_instr[8]_i_1_n_0\
    );
\id_instr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_instr(9),
      I1 => flush,
      O => \id_instr[9]_i_1_n_0\
    );
\id_instr_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      D => \id_instr[0]_i_1_n_0\,
      PRE => rst,
      Q => id_instr(0)
    );
\id_instr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[10]_i_1_n_0\,
      Q => id_instr(10)
    );
\id_instr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[11]_i_1_n_0\,
      Q => id_instr(11)
    );
\id_instr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[12]_i_1_n_0\,
      Q => id_instr(12)
    );
\id_instr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[13]_i_1_n_0\,
      Q => id_instr(13)
    );
\id_instr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[14]_i_1_n_0\,
      Q => id_instr(14)
    );
\id_instr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[15]_i_1_n_0\,
      Q => id_instr(15)
    );
\id_instr_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[16]_i_1_n_0\,
      Q => id_instr(16)
    );
\id_instr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[17]_i_1_n_0\,
      Q => id_instr(17)
    );
\id_instr_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[18]_i_1_n_0\,
      Q => id_instr(18)
    );
\id_instr_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[19]_i_1_n_0\,
      Q => id_instr(19)
    );
\id_instr_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      D => \id_instr[1]_i_1_n_0\,
      PRE => rst,
      Q => id_instr(1)
    );
\id_instr_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[20]_i_1_n_0\,
      Q => id_instr(20)
    );
\id_instr_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[21]_i_1_n_0\,
      Q => id_instr(21)
    );
\id_instr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[22]_i_1_n_0\,
      Q => id_instr(22)
    );
\id_instr_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[23]_i_1_n_0\,
      Q => id_instr(23)
    );
\id_instr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[24]_i_1_n_0\,
      Q => id_instr(24)
    );
\id_instr_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[25]_i_1_n_0\,
      Q => id_instr(25)
    );
\id_instr_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[26]_i_1_n_0\,
      Q => id_instr(26)
    );
\id_instr_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[27]_i_1_n_0\,
      Q => id_instr(27)
    );
\id_instr_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[28]_i_1_n_0\,
      Q => id_instr(28)
    );
\id_instr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[29]_i_1_n_0\,
      Q => id_instr(29)
    );
\id_instr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[2]_i_1_n_0\,
      Q => id_instr(2)
    );
\id_instr_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[30]_i_1_n_0\,
      Q => id_instr(30)
    );
\id_instr_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[31]_i_1_n_0\,
      Q => id_instr(31)
    );
\id_instr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[3]_i_1_n_0\,
      Q => id_instr(3)
    );
\id_instr_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      D => \id_instr[4]_i_1_n_0\,
      PRE => rst,
      Q => id_instr(4)
    );
\id_instr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[5]_i_1_n_0\,
      Q => id_instr(5)
    );
\id_instr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[6]_i_1_n_0\,
      Q => id_instr(6)
    );
\id_instr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[7]_i_1_n_0\,
      Q => id_instr(7)
    );
\id_instr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[8]_i_1_n_0\,
      Q => id_instr(8)
    );
\id_instr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_instr[9]_i_1_n_0\,
      Q => id_instr(9)
    );
\id_pc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(0),
      I1 => flush,
      O => p_0_in(0)
    );
\id_pc[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(10),
      I1 => flush,
      O => p_0_in(10)
    );
\id_pc[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(11),
      I1 => flush,
      O => p_0_in(11)
    );
\id_pc[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(12),
      I1 => flush,
      O => p_0_in(12)
    );
\id_pc[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(13),
      I1 => flush,
      O => p_0_in(13)
    );
\id_pc[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(14),
      I1 => flush,
      O => p_0_in(14)
    );
\id_pc[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(15),
      I1 => flush,
      O => p_0_in(15)
    );
\id_pc[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(16),
      I1 => flush,
      O => p_0_in(16)
    );
\id_pc[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(17),
      I1 => flush,
      O => p_0_in(17)
    );
\id_pc[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(18),
      I1 => flush,
      O => p_0_in(18)
    );
\id_pc[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(19),
      I1 => flush,
      O => p_0_in(19)
    );
\id_pc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(1),
      I1 => flush,
      O => p_0_in(1)
    );
\id_pc[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(20),
      I1 => flush,
      O => p_0_in(20)
    );
\id_pc[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(21),
      I1 => flush,
      O => p_0_in(21)
    );
\id_pc[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(22),
      I1 => flush,
      O => p_0_in(22)
    );
\id_pc[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(23),
      I1 => flush,
      O => p_0_in(23)
    );
\id_pc[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(24),
      I1 => flush,
      O => p_0_in(24)
    );
\id_pc[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(25),
      I1 => flush,
      O => p_0_in(25)
    );
\id_pc[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(26),
      I1 => flush,
      O => p_0_in(26)
    );
\id_pc[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(27),
      I1 => flush,
      O => p_0_in(27)
    );
\id_pc[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(28),
      I1 => flush,
      O => p_0_in(28)
    );
\id_pc[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(29),
      I1 => flush,
      O => p_0_in(29)
    );
\id_pc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(2),
      I1 => flush,
      O => p_0_in(2)
    );
\id_pc[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(30),
      I1 => flush,
      O => p_0_in(30)
    );
\id_pc[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => flush,
      I1 => enable,
      O => \id_pc[31]_i_1_n_0\
    );
\id_pc[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(31),
      I1 => flush,
      O => p_0_in(31)
    );
\id_pc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(3),
      I1 => flush,
      O => p_0_in(3)
    );
\id_pc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(4),
      I1 => flush,
      O => p_0_in(4)
    );
\id_pc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(5),
      I1 => flush,
      O => p_0_in(5)
    );
\id_pc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(6),
      I1 => flush,
      O => p_0_in(6)
    );
\id_pc[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(7),
      I1 => flush,
      O => p_0_in(7)
    );
\id_pc[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(8),
      I1 => flush,
      O => p_0_in(8)
    );
\id_pc[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc(9),
      I1 => flush,
      O => p_0_in(9)
    );
\id_pc_plus4[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(0),
      I1 => flush,
      O => \id_pc_plus4[0]_i_1_n_0\
    );
\id_pc_plus4[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(10),
      I1 => flush,
      O => \id_pc_plus4[10]_i_1_n_0\
    );
\id_pc_plus4[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(11),
      I1 => flush,
      O => \id_pc_plus4[11]_i_1_n_0\
    );
\id_pc_plus4[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(12),
      I1 => flush,
      O => \id_pc_plus4[12]_i_1_n_0\
    );
\id_pc_plus4[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(13),
      I1 => flush,
      O => \id_pc_plus4[13]_i_1_n_0\
    );
\id_pc_plus4[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(14),
      I1 => flush,
      O => \id_pc_plus4[14]_i_1_n_0\
    );
\id_pc_plus4[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(15),
      I1 => flush,
      O => \id_pc_plus4[15]_i_1_n_0\
    );
\id_pc_plus4[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(16),
      I1 => flush,
      O => \id_pc_plus4[16]_i_1_n_0\
    );
\id_pc_plus4[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(17),
      I1 => flush,
      O => \id_pc_plus4[17]_i_1_n_0\
    );
\id_pc_plus4[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(18),
      I1 => flush,
      O => \id_pc_plus4[18]_i_1_n_0\
    );
\id_pc_plus4[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(19),
      I1 => flush,
      O => \id_pc_plus4[19]_i_1_n_0\
    );
\id_pc_plus4[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(1),
      I1 => flush,
      O => \id_pc_plus4[1]_i_1_n_0\
    );
\id_pc_plus4[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(20),
      I1 => flush,
      O => \id_pc_plus4[20]_i_1_n_0\
    );
\id_pc_plus4[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(21),
      I1 => flush,
      O => \id_pc_plus4[21]_i_1_n_0\
    );
\id_pc_plus4[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(22),
      I1 => flush,
      O => \id_pc_plus4[22]_i_1_n_0\
    );
\id_pc_plus4[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(23),
      I1 => flush,
      O => \id_pc_plus4[23]_i_1_n_0\
    );
\id_pc_plus4[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(24),
      I1 => flush,
      O => \id_pc_plus4[24]_i_1_n_0\
    );
\id_pc_plus4[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(25),
      I1 => flush,
      O => \id_pc_plus4[25]_i_1_n_0\
    );
\id_pc_plus4[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(26),
      I1 => flush,
      O => \id_pc_plus4[26]_i_1_n_0\
    );
\id_pc_plus4[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(27),
      I1 => flush,
      O => \id_pc_plus4[27]_i_1_n_0\
    );
\id_pc_plus4[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(28),
      I1 => flush,
      O => \id_pc_plus4[28]_i_1_n_0\
    );
\id_pc_plus4[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(29),
      I1 => flush,
      O => \id_pc_plus4[29]_i_1_n_0\
    );
\id_pc_plus4[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(2),
      I1 => flush,
      O => \id_pc_plus4[2]_i_1_n_0\
    );
\id_pc_plus4[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(30),
      I1 => flush,
      O => \id_pc_plus4[30]_i_1_n_0\
    );
\id_pc_plus4[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(31),
      I1 => flush,
      O => \id_pc_plus4[31]_i_1_n_0\
    );
\id_pc_plus4[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(3),
      I1 => flush,
      O => \id_pc_plus4[3]_i_1_n_0\
    );
\id_pc_plus4[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(4),
      I1 => flush,
      O => \id_pc_plus4[4]_i_1_n_0\
    );
\id_pc_plus4[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(5),
      I1 => flush,
      O => \id_pc_plus4[5]_i_1_n_0\
    );
\id_pc_plus4[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(6),
      I1 => flush,
      O => \id_pc_plus4[6]_i_1_n_0\
    );
\id_pc_plus4[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(7),
      I1 => flush,
      O => \id_pc_plus4[7]_i_1_n_0\
    );
\id_pc_plus4[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(8),
      I1 => flush,
      O => \id_pc_plus4[8]_i_1_n_0\
    );
\id_pc_plus4[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => if_pc_plus4(9),
      I1 => flush,
      O => \id_pc_plus4[9]_i_1_n_0\
    );
\id_pc_plus4_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[0]_i_1_n_0\,
      Q => id_pc_plus4(0)
    );
\id_pc_plus4_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[10]_i_1_n_0\,
      Q => id_pc_plus4(10)
    );
\id_pc_plus4_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[11]_i_1_n_0\,
      Q => id_pc_plus4(11)
    );
\id_pc_plus4_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[12]_i_1_n_0\,
      Q => id_pc_plus4(12)
    );
\id_pc_plus4_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[13]_i_1_n_0\,
      Q => id_pc_plus4(13)
    );
\id_pc_plus4_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[14]_i_1_n_0\,
      Q => id_pc_plus4(14)
    );
\id_pc_plus4_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[15]_i_1_n_0\,
      Q => id_pc_plus4(15)
    );
\id_pc_plus4_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[16]_i_1_n_0\,
      Q => id_pc_plus4(16)
    );
\id_pc_plus4_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[17]_i_1_n_0\,
      Q => id_pc_plus4(17)
    );
\id_pc_plus4_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[18]_i_1_n_0\,
      Q => id_pc_plus4(18)
    );
\id_pc_plus4_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[19]_i_1_n_0\,
      Q => id_pc_plus4(19)
    );
\id_pc_plus4_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[1]_i_1_n_0\,
      Q => id_pc_plus4(1)
    );
\id_pc_plus4_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[20]_i_1_n_0\,
      Q => id_pc_plus4(20)
    );
\id_pc_plus4_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[21]_i_1_n_0\,
      Q => id_pc_plus4(21)
    );
\id_pc_plus4_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[22]_i_1_n_0\,
      Q => id_pc_plus4(22)
    );
\id_pc_plus4_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[23]_i_1_n_0\,
      Q => id_pc_plus4(23)
    );
\id_pc_plus4_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[24]_i_1_n_0\,
      Q => id_pc_plus4(24)
    );
\id_pc_plus4_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[25]_i_1_n_0\,
      Q => id_pc_plus4(25)
    );
\id_pc_plus4_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[26]_i_1_n_0\,
      Q => id_pc_plus4(26)
    );
\id_pc_plus4_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[27]_i_1_n_0\,
      Q => id_pc_plus4(27)
    );
\id_pc_plus4_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[28]_i_1_n_0\,
      Q => id_pc_plus4(28)
    );
\id_pc_plus4_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[29]_i_1_n_0\,
      Q => id_pc_plus4(29)
    );
\id_pc_plus4_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[2]_i_1_n_0\,
      Q => id_pc_plus4(2)
    );
\id_pc_plus4_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[30]_i_1_n_0\,
      Q => id_pc_plus4(30)
    );
\id_pc_plus4_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[31]_i_1_n_0\,
      Q => id_pc_plus4(31)
    );
\id_pc_plus4_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[3]_i_1_n_0\,
      Q => id_pc_plus4(3)
    );
\id_pc_plus4_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[4]_i_1_n_0\,
      Q => id_pc_plus4(4)
    );
\id_pc_plus4_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[5]_i_1_n_0\,
      Q => id_pc_plus4(5)
    );
\id_pc_plus4_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[6]_i_1_n_0\,
      Q => id_pc_plus4(6)
    );
\id_pc_plus4_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[7]_i_1_n_0\,
      Q => id_pc_plus4(7)
    );
\id_pc_plus4_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[8]_i_1_n_0\,
      Q => id_pc_plus4(8)
    );
\id_pc_plus4_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => \id_pc_plus4[9]_i_1_n_0\,
      Q => id_pc_plus4(9)
    );
\id_pc_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(0),
      Q => id_pc(0)
    );
\id_pc_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(10),
      Q => id_pc(10)
    );
\id_pc_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(11),
      Q => id_pc(11)
    );
\id_pc_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(12),
      Q => id_pc(12)
    );
\id_pc_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(13),
      Q => id_pc(13)
    );
\id_pc_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(14),
      Q => id_pc(14)
    );
\id_pc_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(15),
      Q => id_pc(15)
    );
\id_pc_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(16),
      Q => id_pc(16)
    );
\id_pc_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(17),
      Q => id_pc(17)
    );
\id_pc_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(18),
      Q => id_pc(18)
    );
\id_pc_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(19),
      Q => id_pc(19)
    );
\id_pc_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(1),
      Q => id_pc(1)
    );
\id_pc_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(20),
      Q => id_pc(20)
    );
\id_pc_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(21),
      Q => id_pc(21)
    );
\id_pc_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(22),
      Q => id_pc(22)
    );
\id_pc_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(23),
      Q => id_pc(23)
    );
\id_pc_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(24),
      Q => id_pc(24)
    );
\id_pc_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(25),
      Q => id_pc(25)
    );
\id_pc_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(26),
      Q => id_pc(26)
    );
\id_pc_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(27),
      Q => id_pc(27)
    );
\id_pc_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(28),
      Q => id_pc(28)
    );
\id_pc_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(29),
      Q => id_pc(29)
    );
\id_pc_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(2),
      Q => id_pc(2)
    );
\id_pc_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(30),
      Q => id_pc(30)
    );
\id_pc_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(31),
      Q => id_pc(31)
    );
\id_pc_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(3),
      Q => id_pc(3)
    );
\id_pc_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(4),
      Q => id_pc(4)
    );
\id_pc_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(5),
      Q => id_pc(5)
    );
\id_pc_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(6),
      Q => id_pc(6)
    );
\id_pc_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(7),
      Q => id_pc(7)
    );
\id_pc_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(8),
      Q => id_pc(8)
    );
\id_pc_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \id_pc[31]_i_1_n_0\,
      CLR => rst,
      D => p_0_in(9),
      Q => id_pc(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_ID_if_id_reg_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RV32_IF_ID_if_id_reg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_ID_if_id_reg_0_0 : entity is "RV32_IF_ID_if_id_reg_0_0,if_id_reg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_ID_if_id_reg_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_ID_if_id_reg_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_ID_if_id_reg_0_0 : entity is "if_id_reg,Vivado 2020.1";
end RV32_IF_ID_if_id_reg_0_0;

architecture STRUCTURE of RV32_IF_ID_if_id_reg_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.RV32_IF_ID_if_id_reg_0_0_if_id_reg
     port map (
      clk => clk,
      enable => enable,
      flush => flush,
      id_instr(31 downto 0) => id_instr(31 downto 0),
      id_pc(31 downto 0) => id_pc(31 downto 0),
      id_pc_plus4(31 downto 0) => id_pc_plus4(31 downto 0),
      if_instr(31 downto 0) => if_instr(31 downto 0),
      if_pc(31 downto 0) => if_pc(31 downto 0),
      if_pc_plus4(31 downto 0) => if_pc_plus4(31 downto 0),
      rst => rst
    );
end STRUCTURE;
