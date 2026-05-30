-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sat May 30 00:31:45 2026
-- Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RV32I_RELESED/RV32/RV32.srcs/sources_1/bd/RV32_IF_EX/RV32_IF_EX_sim_netlist.vhdl
-- Design      : RV32_IF_EX
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu5ev-sfvc784-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_RV32_IF_EX_control_0_0 is
  port (
    opcode : in STD_LOGIC_VECTOR ( 6 downto 0 );
    funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    funct7 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    fmt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bit30 : in STD_LOGIC;
    rd_we : out STD_LOGIC;
    wb_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    op_a_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    op_b_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    alu_op : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_re : out STD_LOGIC;
    mem_we : out STD_LOGIC;
    mem_size : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_unsigned : out STD_LOGIC;
    branch_en : out STD_LOGIC;
    branch_funct3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    jal : out STD_LOGIC;
    jalr : out STD_LOGIC;
    imm_sel : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_EX_RV32_IF_EX_control_0_0 : entity is "RV32_IF_EX_control_0_0,control,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_EX_RV32_IF_EX_control_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_EX_RV32_IF_EX_control_0_0 : entity is "module_ref";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_RV32_IF_EX_control_0_0 : entity is "RV32_IF_EX_control_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_EX_RV32_IF_EX_control_0_0 : entity is "control,Vivado 2020.1";
end RV32_IF_EX_RV32_IF_EX_control_0_0;

architecture STRUCTURE of RV32_IF_EX_RV32_IF_EX_control_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \alu_op[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_op[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^funct3\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^imm_sel\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mem_size[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^op_b_sel\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rd_we_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^wb_sel\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wb_sel[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \wb_sel[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \alu_op[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \alu_op[3]_INST_0_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of branch_en_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \imm_sel[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \imm_sel[2]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of mem_re_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mem_size[0]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of mem_we_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \op_a_sel[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \op_a_sel[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \op_b_sel[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of rd_we_INST_0_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wb_sel[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wb_sel[0]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wb_sel[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wb_sel[1]_INST_0_i_1\ : label is "soft_lutpair6";
begin
  \^funct3\(2 downto 0) <= funct3(2 downto 0);
  branch_funct3(2 downto 0) <= \^funct3\(2 downto 0);
  imm_sel(2) <= \^op_b_sel\(1);
  imm_sel(1 downto 0) <= \^imm_sel\(1 downto 0);
  jal <= \^op_b_sel\(1);
  op_b_sel(1 downto 0) <= \^op_b_sel\(1 downto 0);
  wb_sel(2) <= \<const0>\;
  wb_sel(1 downto 0) <= \^wb_sel\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\alu_op[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B888"
    )
        port map (
      I0 => \alu_op[0]_INST_0_i_1_n_0\,
      I1 => opcode(4),
      I2 => opcode(6),
      I3 => opcode(5),
      I4 => \alu_op[3]_INST_0_i_1_n_0\,
      O => alu_op(0)
    );
\alu_op[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004AF44AF0"
    )
        port map (
      I0 => \^funct3\(1),
      I1 => bit30,
      I2 => \^funct3\(0),
      I3 => \^funct3\(2),
      I4 => opcode(5),
      I5 => opcode(6),
      O => \alu_op[0]_INST_0_i_1_n_0\
    );
\alu_op[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100000000000"
    )
        port map (
      I0 => opcode(6),
      I1 => \alu_op[3]_INST_0_i_1_n_0\,
      I2 => opcode(4),
      I3 => \^funct3\(0),
      I4 => \^funct3\(1),
      I5 => \^funct3\(2),
      O => alu_op(1)
    );
\alu_op[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000101000001000"
    )
        port map (
      I0 => opcode(6),
      I1 => \alu_op[3]_INST_0_i_1_n_0\,
      I2 => opcode(4),
      I3 => \^funct3\(2),
      I4 => \^funct3\(1),
      I5 => \^funct3\(0),
      O => alu_op(2)
    );
\alu_op[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => opcode(6),
      I1 => \alu_op[3]_INST_0_i_1_n_0\,
      I2 => opcode(4),
      I3 => \^funct3\(1),
      I4 => \^funct3\(2),
      O => alu_op(3)
    );
\alu_op[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(0),
      I2 => opcode(1),
      I3 => opcode(3),
      O => \alu_op[3]_INST_0_i_1_n_0\
    );
branch_en_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => opcode(4),
      I1 => opcode(5),
      I2 => opcode(6),
      I3 => \alu_op[3]_INST_0_i_1_n_0\,
      O => branch_en
    );
\imm_sel[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44000040"
    )
        port map (
      I0 => opcode(6),
      I1 => \wb_sel[0]_INST_0_i_1_n_0\,
      I2 => opcode(5),
      I3 => opcode(4),
      I4 => opcode(2),
      O => \^imm_sel\(0)
    );
\imm_sel[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000201000000"
    )
        port map (
      I0 => opcode(2),
      I1 => rd_we_INST_0_i_1_n_0,
      I2 => opcode(3),
      I3 => opcode(6),
      I4 => opcode(5),
      I5 => opcode(4),
      O => \^imm_sel\(1)
    );
\imm_sel[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \wb_sel[1]_INST_0_i_1_n_0\,
      I1 => opcode(5),
      I2 => opcode(4),
      I3 => opcode(3),
      I4 => opcode(6),
      O => \^op_b_sel\(1)
    );
jalr_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \wb_sel[1]_INST_0_i_1_n_0\,
      I1 => opcode(4),
      I2 => opcode(3),
      I3 => opcode(5),
      I4 => opcode(6),
      O => jalr
    );
mem_re_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \alu_op[3]_INST_0_i_1_n_0\,
      I1 => opcode(5),
      I2 => opcode(6),
      I3 => opcode(4),
      O => mem_re
    );
\mem_size[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => \^funct3\(0),
      I1 => \mem_size[0]_INST_0_i_1_n_0\,
      I2 => \^funct3\(2),
      I3 => opcode(5),
      I4 => \^funct3\(1),
      I5 => \alu_op[3]_INST_0_i_1_n_0\,
      O => mem_size(0)
    );
\mem_size[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => opcode(4),
      I1 => opcode(6),
      O => \mem_size[0]_INST_0_i_1_n_0\
    );
\mem_size[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \alu_op[3]_INST_0_i_1_n_0\,
      I1 => \^funct3\(1),
      I2 => opcode(5),
      I3 => \^funct3\(2),
      I4 => opcode(4),
      I5 => opcode(6),
      O => mem_size(1)
    );
mem_unsigned_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \^funct3\(1),
      I1 => \^funct3\(2),
      I2 => opcode(4),
      I3 => opcode(6),
      I4 => opcode(5),
      I5 => \alu_op[3]_INST_0_i_1_n_0\,
      O => mem_unsigned
    );
mem_we_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => opcode(4),
      I1 => opcode(5),
      I2 => \alu_op[3]_INST_0_i_1_n_0\,
      I3 => opcode(6),
      O => mem_we
    );
\op_a_sel[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40020000"
    )
        port map (
      I0 => opcode(4),
      I1 => opcode(5),
      I2 => opcode(6),
      I3 => opcode(3),
      I4 => \wb_sel[1]_INST_0_i_1_n_0\,
      O => op_a_sel(0)
    );
\op_a_sel[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => opcode(5),
      I1 => opcode(6),
      I2 => opcode(3),
      I3 => opcode(4),
      I4 => \wb_sel[1]_INST_0_i_1_n_0\,
      O => op_a_sel(1)
    );
\op_b_sel[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080A20A"
    )
        port map (
      I0 => \wb_sel[0]_INST_0_i_1_n_0\,
      I1 => opcode(5),
      I2 => opcode(2),
      I3 => opcode(4),
      I4 => opcode(6),
      O => \^op_b_sel\(0)
    );
rd_we_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101500001010001"
    )
        port map (
      I0 => rd_we_INST_0_i_1_n_0,
      I1 => opcode(3),
      I2 => opcode(6),
      I3 => opcode(5),
      I4 => opcode(4),
      I5 => opcode(2),
      O => rd_we
    );
rd_we_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => opcode(0),
      I1 => opcode(1),
      O => rd_we_INST_0_i_1_n_0
    );
\wb_sel[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000004"
    )
        port map (
      I0 => opcode(6),
      I1 => \wb_sel[0]_INST_0_i_1_n_0\,
      I2 => opcode(2),
      I3 => opcode(5),
      I4 => opcode(4),
      O => \^wb_sel\(0)
    );
\wb_sel[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => opcode(3),
      I1 => opcode(1),
      I2 => opcode(0),
      O => \wb_sel[0]_INST_0_i_1_n_0\
    );
\wb_sel[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04C00000"
    )
        port map (
      I0 => opcode(3),
      I1 => opcode(5),
      I2 => opcode(6),
      I3 => opcode(4),
      I4 => \wb_sel[1]_INST_0_i_1_n_0\,
      O => \^wb_sel\(1)
    );
\wb_sel[1]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => opcode(2),
      I1 => opcode(1),
      I2 => opcode(0),
      O => \wb_sel[1]_INST_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_RV32_IF_EX_decoder_0_0 is
  port (
    instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    opcode : out STD_LOGIC_VECTOR ( 6 downto 0 );
    funct3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    funct7 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    fmt : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bit30 : out STD_LOGIC;
    imm_i : out STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_s : out STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_u : out STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_j : out STD_LOGIC_VECTOR ( 31 downto 0 );
    illegal_opcode : out STD_LOGIC;
    rd : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rs1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rs2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rs1_used : out STD_LOGIC;
    rs2_used : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_EX_RV32_IF_EX_decoder_0_0 : entity is "RV32_IF_EX_decoder_0_0,decoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_EX_RV32_IF_EX_decoder_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_EX_RV32_IF_EX_decoder_0_0 : entity is "module_ref";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_RV32_IF_EX_decoder_0_0 : entity is "RV32_IF_EX_decoder_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_EX_RV32_IF_EX_decoder_0_0 : entity is "decoder,Vivado 2020.1";
end RV32_IF_EX_RV32_IF_EX_decoder_0_0;

architecture STRUCTURE of RV32_IF_EX_RV32_IF_EX_decoder_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \fmt[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \fmt[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^instr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rs1_used_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fmt[0]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fmt[1]_INST_0_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \fmt[2]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fmt[2]_INST_0_i_1\ : label is "soft_lutpair9";
begin
  \^instr\(31 downto 0) <= instr(31 downto 0);
  bit30 <= \^instr\(30);
  funct3(2 downto 0) <= \^instr\(14 downto 12);
  funct7(6 downto 0) <= \^instr\(31 downto 25);
  imm_b(31) <= \^instr\(31);
  imm_b(30) <= \^instr\(31);
  imm_b(29) <= \^instr\(31);
  imm_b(28) <= \^instr\(31);
  imm_b(27) <= \^instr\(31);
  imm_b(26) <= \^instr\(31);
  imm_b(25) <= \^instr\(31);
  imm_b(24) <= \^instr\(31);
  imm_b(23) <= \^instr\(31);
  imm_b(22) <= \^instr\(31);
  imm_b(21) <= \^instr\(31);
  imm_b(20) <= \^instr\(31);
  imm_b(19) <= \^instr\(31);
  imm_b(18) <= \^instr\(31);
  imm_b(17) <= \^instr\(31);
  imm_b(16) <= \^instr\(31);
  imm_b(15) <= \^instr\(31);
  imm_b(14) <= \^instr\(31);
  imm_b(13) <= \^instr\(31);
  imm_b(12) <= \^instr\(31);
  imm_b(11) <= \^instr\(7);
  imm_b(10 downto 5) <= \^instr\(30 downto 25);
  imm_b(4 downto 1) <= \^instr\(11 downto 8);
  imm_b(0) <= \<const0>\;
  imm_i(31) <= \^instr\(31);
  imm_i(30) <= \^instr\(31);
  imm_i(29) <= \^instr\(31);
  imm_i(28) <= \^instr\(31);
  imm_i(27) <= \^instr\(31);
  imm_i(26) <= \^instr\(31);
  imm_i(25) <= \^instr\(31);
  imm_i(24) <= \^instr\(31);
  imm_i(23) <= \^instr\(31);
  imm_i(22) <= \^instr\(31);
  imm_i(21) <= \^instr\(31);
  imm_i(20) <= \^instr\(31);
  imm_i(19) <= \^instr\(31);
  imm_i(18) <= \^instr\(31);
  imm_i(17) <= \^instr\(31);
  imm_i(16) <= \^instr\(31);
  imm_i(15) <= \^instr\(31);
  imm_i(14) <= \^instr\(31);
  imm_i(13) <= \^instr\(31);
  imm_i(12) <= \^instr\(31);
  imm_i(11 downto 0) <= \^instr\(31 downto 20);
  imm_j(31) <= \^instr\(31);
  imm_j(30) <= \^instr\(31);
  imm_j(29) <= \^instr\(31);
  imm_j(28) <= \^instr\(31);
  imm_j(27) <= \^instr\(31);
  imm_j(26) <= \^instr\(31);
  imm_j(25) <= \^instr\(31);
  imm_j(24) <= \^instr\(31);
  imm_j(23) <= \^instr\(31);
  imm_j(22) <= \^instr\(31);
  imm_j(21) <= \^instr\(31);
  imm_j(20) <= \^instr\(31);
  imm_j(19 downto 12) <= \^instr\(19 downto 12);
  imm_j(11) <= \^instr\(20);
  imm_j(10 downto 1) <= \^instr\(30 downto 21);
  imm_j(0) <= \<const0>\;
  imm_s(31) <= \^instr\(31);
  imm_s(30) <= \^instr\(31);
  imm_s(29) <= \^instr\(31);
  imm_s(28) <= \^instr\(31);
  imm_s(27) <= \^instr\(31);
  imm_s(26) <= \^instr\(31);
  imm_s(25) <= \^instr\(31);
  imm_s(24) <= \^instr\(31);
  imm_s(23) <= \^instr\(31);
  imm_s(22) <= \^instr\(31);
  imm_s(21) <= \^instr\(31);
  imm_s(20) <= \^instr\(31);
  imm_s(19) <= \^instr\(31);
  imm_s(18) <= \^instr\(31);
  imm_s(17) <= \^instr\(31);
  imm_s(16) <= \^instr\(31);
  imm_s(15) <= \^instr\(31);
  imm_s(14) <= \^instr\(31);
  imm_s(13) <= \^instr\(31);
  imm_s(12) <= \^instr\(31);
  imm_s(11 downto 5) <= \^instr\(31 downto 25);
  imm_s(4 downto 0) <= \^instr\(11 downto 7);
  imm_u(31 downto 12) <= \^instr\(31 downto 12);
  imm_u(11) <= \<const0>\;
  imm_u(10) <= \<const0>\;
  imm_u(9) <= \<const0>\;
  imm_u(8) <= \<const0>\;
  imm_u(7) <= \<const0>\;
  imm_u(6) <= \<const0>\;
  imm_u(5) <= \<const0>\;
  imm_u(4) <= \<const0>\;
  imm_u(3) <= \<const0>\;
  imm_u(2) <= \<const0>\;
  imm_u(1) <= \<const0>\;
  imm_u(0) <= \<const0>\;
  opcode(6 downto 0) <= \^instr\(6 downto 0);
  rd(4 downto 0) <= \^instr\(11 downto 7);
  rs1(4 downto 0) <= \^instr\(19 downto 15);
  rs2(4 downto 0) <= \^instr\(24 downto 20);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\fmt[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAFBB"
    )
        port map (
      I0 => \fmt[2]_INST_0_i_1_n_0\,
      I1 => \^instr\(5),
      I2 => \^instr\(4),
      I3 => \^instr\(2),
      I4 => \^instr\(6),
      O => fmt(0)
    );
\fmt[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7FF870C"
    )
        port map (
      I0 => \^instr\(6),
      I1 => \^instr\(5),
      I2 => \^instr\(4),
      I3 => \^instr\(2),
      I4 => \^instr\(3),
      I5 => \fmt[1]_INST_0_i_1_n_0\,
      O => fmt(1)
    );
\fmt[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FFF"
    )
        port map (
      I0 => \^instr\(5),
      I1 => \^instr\(6),
      I2 => \^instr\(1),
      I3 => \^instr\(0),
      O => \fmt[1]_INST_0_i_1_n_0\
    );
\fmt[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFFAFA"
    )
        port map (
      I0 => \fmt[2]_INST_0_i_1_n_0\,
      I1 => \^instr\(4),
      I2 => \^instr\(2),
      I3 => \^instr\(5),
      I4 => \^instr\(6),
      O => fmt(2)
    );
\fmt[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^instr\(1),
      I1 => \^instr\(0),
      I2 => \^instr\(3),
      O => \fmt[2]_INST_0_i_1_n_0\
    );
illegal_opcode_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEEEFE"
    )
        port map (
      I0 => \^instr\(3),
      I1 => \fmt[1]_INST_0_i_1_n_0\,
      I2 => \^instr\(2),
      I3 => \^instr\(4),
      I4 => \^instr\(6),
      O => illegal_opcode
    );
rs1_used_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000008080000FF08"
    )
        port map (
      I0 => \^instr\(5),
      I1 => \^instr\(6),
      I2 => \^instr\(4),
      I3 => rs1_used_INST_0_i_1_n_0,
      I4 => \fmt[2]_INST_0_i_1_n_0\,
      I5 => \^instr\(2),
      O => rs1_used
    );
rs1_used_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0FFFF"
    )
        port map (
      I0 => \^instr\(12),
      I1 => \^instr\(13),
      I2 => \^instr\(5),
      I3 => \^instr\(14),
      I4 => \^instr\(6),
      O => rs1_used_INST_0_i_1_n_0
    );
rs2_used_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000070"
    )
        port map (
      I0 => \^instr\(4),
      I1 => \^instr\(6),
      I2 => \^instr\(5),
      I3 => \^instr\(2),
      I4 => \fmt[2]_INST_0_i_1_n_0\,
      O => rs2_used
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_RV32_IF_EX_pc_to_imem_addr_0_0 is
  port (
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_EX_RV32_IF_EX_pc_to_imem_addr_0_0 : entity is "RV32_IF_EX_pc_to_imem_addr_0_0,pc_to_imem_addr,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_EX_RV32_IF_EX_pc_to_imem_addr_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_EX_RV32_IF_EX_pc_to_imem_addr_0_0 : entity is "module_ref";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_RV32_IF_EX_pc_to_imem_addr_0_0 : entity is "RV32_IF_EX_pc_to_imem_addr_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_EX_RV32_IF_EX_pc_to_imem_addr_0_0 : entity is "pc_to_imem_addr,Vivado 2020.1";
end RV32_IF_EX_RV32_IF_EX_pc_to_imem_addr_0_0;

architecture STRUCTURE of RV32_IF_EX_RV32_IF_EX_pc_to_imem_addr_0_0 is
  signal \^pc\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^pc\(12 downto 2) <= pc(12 downto 2);
  addr(10 downto 0) <= \^pc\(12 downto 2);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_RV32_IF_EX_sim_constant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_EX_RV32_IF_EX_sim_constant_0_0 : entity is "RV32_IF_EX_sim_constant_0_0,sim_constant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_EX_RV32_IF_EX_sim_constant_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_EX_RV32_IF_EX_sim_constant_0_0 : entity is "module_ref";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_RV32_IF_EX_sim_constant_0_0 : entity is "RV32_IF_EX_sim_constant_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_EX_RV32_IF_EX_sim_constant_0_0 : entity is "sim_constant,Vivado 2020.1";
end RV32_IF_EX_RV32_IF_EX_sim_constant_0_0;

architecture STRUCTURE of RV32_IF_EX_RV32_IF_EX_sim_constant_0_0 is
  signal \<const1>\ : STD_LOGIC;
begin
  dout(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_RV32_IF_EX_sim_constant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_EX_RV32_IF_EX_sim_constant_0_1 : entity is "RV32_IF_EX_sim_constant_0_1,sim_constant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_EX_RV32_IF_EX_sim_constant_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_EX_RV32_IF_EX_sim_constant_0_1 : entity is "module_ref";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_RV32_IF_EX_sim_constant_0_1 : entity is "RV32_IF_EX_sim_constant_0_1";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_EX_RV32_IF_EX_sim_constant_0_1 : entity is "sim_constant,Vivado 2020.1";
end RV32_IF_EX_RV32_IF_EX_sim_constant_0_1;

architecture STRUCTURE of RV32_IF_EX_RV32_IF_EX_sim_constant_0_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_RV32_IF_EX_sim_constant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_EX_RV32_IF_EX_sim_constant_1_0 : entity is "RV32_IF_EX_sim_constant_1_0,sim_constant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_EX_RV32_IF_EX_sim_constant_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_EX_RV32_IF_EX_sim_constant_1_0 : entity is "module_ref";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_RV32_IF_EX_sim_constant_1_0 : entity is "RV32_IF_EX_sim_constant_1_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_EX_RV32_IF_EX_sim_constant_1_0 : entity is "sim_constant,Vivado 2020.1";
end RV32_IF_EX_RV32_IF_EX_sim_constant_1_0;

architecture STRUCTURE of RV32_IF_EX_RV32_IF_EX_sim_constant_1_0 is
  signal \<const1>\ : STD_LOGIC;
begin
  dout(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_id_ex_reg is
  port (
    ex_valid : out STD_LOGIC;
    ex_pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_pc_plus4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_pred_next_pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_rs1_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_rs2_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_imm : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_imm_u : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_rs1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ex_rs2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ex_rd : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ex_alu_op : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ex_op_a_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ex_op_b_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ex_branch_en : out STD_LOGIC;
    ex_branch_funct3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ex_jal : out STD_LOGIC;
    ex_jalr : out STD_LOGIC;
    ex_mem_re : out STD_LOGIC;
    ex_mem_we : out STD_LOGIC;
    ex_mem_size : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ex_mem_unsigned : out STD_LOGIC;
    ex_rd_we : out STD_LOGIC;
    ex_instr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_illegal_instr : out STD_LOGIC;
    ex_wb_sel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    id_valid : in STD_LOGIC;
    clk : in STD_LOGIC;
    id_pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_pc_plus4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_pred_next_pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_rs1_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_rs2_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_imm : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_imm_u : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_rs1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    id_rs2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    id_rd : in STD_LOGIC_VECTOR ( 4 downto 0 );
    id_alu_op : in STD_LOGIC_VECTOR ( 3 downto 0 );
    id_op_a_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    id_op_b_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    id_branch_en : in STD_LOGIC;
    id_branch_funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    id_jal : in STD_LOGIC;
    id_jalr : in STD_LOGIC;
    id_mem_re : in STD_LOGIC;
    id_mem_we : in STD_LOGIC;
    id_mem_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    id_mem_unsigned : in STD_LOGIC;
    id_instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_wb_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst : in STD_LOGIC;
    stall : in STD_LOGIC;
    bubble : in STD_LOGIC;
    id_rd_we : in STD_LOGIC;
    id_illegal_instr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_id_ex_reg : entity is "id_ex_reg";
end RV32_IF_EX_id_ex_reg;

architecture STRUCTURE of RV32_IF_EX_id_ex_reg is
  signal ex_illegal_instr0 : STD_LOGIC;
  signal ex_rd_we0 : STD_LOGIC;
  signal ex_valid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ex_illegal_instr_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of ex_rd_we_i_1 : label is "soft_lutpair10";
begin
\ex_alu_op_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_alu_op(0),
      Q => ex_alu_op(0),
      R => ex_valid_i_1_n_0
    );
\ex_alu_op_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_alu_op(1),
      Q => ex_alu_op(1),
      R => ex_valid_i_1_n_0
    );
\ex_alu_op_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_alu_op(2),
      Q => ex_alu_op(2),
      R => ex_valid_i_1_n_0
    );
\ex_alu_op_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_alu_op(3),
      Q => ex_alu_op(3),
      R => ex_valid_i_1_n_0
    );
ex_branch_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_branch_en,
      Q => ex_branch_en,
      R => ex_valid_i_1_n_0
    );
\ex_branch_funct3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_branch_funct3(0),
      Q => ex_branch_funct3(0),
      R => ex_valid_i_1_n_0
    );
\ex_branch_funct3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_branch_funct3(1),
      Q => ex_branch_funct3(1),
      R => ex_valid_i_1_n_0
    );
\ex_branch_funct3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_branch_funct3(2),
      Q => ex_branch_funct3(2),
      R => ex_valid_i_1_n_0
    );
ex_illegal_instr_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => id_illegal_instr,
      I1 => id_valid,
      O => ex_illegal_instr0
    );
ex_illegal_instr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => ex_illegal_instr0,
      Q => ex_illegal_instr,
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(0),
      Q => ex_imm(0),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(10),
      Q => ex_imm(10),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(11),
      Q => ex_imm(11),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(12),
      Q => ex_imm(12),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(13),
      Q => ex_imm(13),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(14),
      Q => ex_imm(14),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(15),
      Q => ex_imm(15),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(16),
      Q => ex_imm(16),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(17),
      Q => ex_imm(17),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(18),
      Q => ex_imm(18),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(19),
      Q => ex_imm(19),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(1),
      Q => ex_imm(1),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(20),
      Q => ex_imm(20),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(21),
      Q => ex_imm(21),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(22),
      Q => ex_imm(22),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(23),
      Q => ex_imm(23),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(24),
      Q => ex_imm(24),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(25),
      Q => ex_imm(25),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(26),
      Q => ex_imm(26),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(27),
      Q => ex_imm(27),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(28),
      Q => ex_imm(28),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(29),
      Q => ex_imm(29),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(2),
      Q => ex_imm(2),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(30),
      Q => ex_imm(30),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(31),
      Q => ex_imm(31),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(3),
      Q => ex_imm(3),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(4),
      Q => ex_imm(4),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(5),
      Q => ex_imm(5),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(6),
      Q => ex_imm(6),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(7),
      Q => ex_imm(7),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(8),
      Q => ex_imm(8),
      R => ex_valid_i_1_n_0
    );
\ex_imm_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm(9),
      Q => ex_imm(9),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(0),
      Q => ex_imm_u(0),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(10),
      Q => ex_imm_u(10),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(11),
      Q => ex_imm_u(11),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(12),
      Q => ex_imm_u(12),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(13),
      Q => ex_imm_u(13),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(14),
      Q => ex_imm_u(14),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(15),
      Q => ex_imm_u(15),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(16),
      Q => ex_imm_u(16),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(17),
      Q => ex_imm_u(17),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(18),
      Q => ex_imm_u(18),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(19),
      Q => ex_imm_u(19),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(1),
      Q => ex_imm_u(1),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(20),
      Q => ex_imm_u(20),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(21),
      Q => ex_imm_u(21),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(22),
      Q => ex_imm_u(22),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(23),
      Q => ex_imm_u(23),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(24),
      Q => ex_imm_u(24),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(25),
      Q => ex_imm_u(25),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(26),
      Q => ex_imm_u(26),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(27),
      Q => ex_imm_u(27),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(28),
      Q => ex_imm_u(28),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(29),
      Q => ex_imm_u(29),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(2),
      Q => ex_imm_u(2),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(30),
      Q => ex_imm_u(30),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(31),
      Q => ex_imm_u(31),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(3),
      Q => ex_imm_u(3),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(4),
      Q => ex_imm_u(4),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(5),
      Q => ex_imm_u(5),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(6),
      Q => ex_imm_u(6),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(7),
      Q => ex_imm_u(7),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(8),
      Q => ex_imm_u(8),
      R => ex_valid_i_1_n_0
    );
\ex_imm_u_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_imm_u(9),
      Q => ex_imm_u(9),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(0),
      Q => ex_instr(0),
      S => ex_valid_i_1_n_0
    );
\ex_instr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(10),
      Q => ex_instr(10),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(11),
      Q => ex_instr(11),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(12),
      Q => ex_instr(12),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(13),
      Q => ex_instr(13),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(14),
      Q => ex_instr(14),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(15),
      Q => ex_instr(15),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(16),
      Q => ex_instr(16),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(17),
      Q => ex_instr(17),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(18),
      Q => ex_instr(18),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(19),
      Q => ex_instr(19),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(1),
      Q => ex_instr(1),
      S => ex_valid_i_1_n_0
    );
\ex_instr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(20),
      Q => ex_instr(20),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(21),
      Q => ex_instr(21),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(22),
      Q => ex_instr(22),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(23),
      Q => ex_instr(23),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(24),
      Q => ex_instr(24),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(25),
      Q => ex_instr(25),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(26),
      Q => ex_instr(26),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(27),
      Q => ex_instr(27),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(28),
      Q => ex_instr(28),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(29),
      Q => ex_instr(29),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(2),
      Q => ex_instr(2),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(30),
      Q => ex_instr(30),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(31),
      Q => ex_instr(31),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(3),
      Q => ex_instr(3),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(4),
      Q => ex_instr(4),
      S => ex_valid_i_1_n_0
    );
\ex_instr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(5),
      Q => ex_instr(5),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(6),
      Q => ex_instr(6),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(7),
      Q => ex_instr(7),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(8),
      Q => ex_instr(8),
      R => ex_valid_i_1_n_0
    );
\ex_instr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_instr(9),
      Q => ex_instr(9),
      R => ex_valid_i_1_n_0
    );
ex_jal_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_jal,
      Q => ex_jal,
      R => ex_valid_i_1_n_0
    );
ex_jalr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_jalr,
      Q => ex_jalr,
      R => ex_valid_i_1_n_0
    );
ex_mem_re_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_mem_re,
      Q => ex_mem_re,
      R => ex_valid_i_1_n_0
    );
\ex_mem_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_mem_size(0),
      Q => ex_mem_size(0),
      R => ex_valid_i_1_n_0
    );
\ex_mem_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_mem_size(1),
      Q => ex_mem_size(1),
      R => ex_valid_i_1_n_0
    );
ex_mem_unsigned_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_mem_unsigned,
      Q => ex_mem_unsigned,
      R => ex_valid_i_1_n_0
    );
ex_mem_we_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_mem_we,
      Q => ex_mem_we,
      R => ex_valid_i_1_n_0
    );
\ex_op_a_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_op_a_sel(0),
      Q => ex_op_a_sel(0),
      R => ex_valid_i_1_n_0
    );
\ex_op_a_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_op_a_sel(1),
      Q => ex_op_a_sel(1),
      R => ex_valid_i_1_n_0
    );
\ex_op_b_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_op_b_sel(0),
      Q => ex_op_b_sel(0),
      R => ex_valid_i_1_n_0
    );
\ex_op_b_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_op_b_sel(1),
      Q => ex_op_b_sel(1),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(0),
      Q => ex_pc_plus4(0),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(10),
      Q => ex_pc_plus4(10),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(11),
      Q => ex_pc_plus4(11),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(12),
      Q => ex_pc_plus4(12),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(13),
      Q => ex_pc_plus4(13),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(14),
      Q => ex_pc_plus4(14),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(15),
      Q => ex_pc_plus4(15),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(16),
      Q => ex_pc_plus4(16),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(17),
      Q => ex_pc_plus4(17),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(18),
      Q => ex_pc_plus4(18),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(19),
      Q => ex_pc_plus4(19),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(1),
      Q => ex_pc_plus4(1),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(20),
      Q => ex_pc_plus4(20),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(21),
      Q => ex_pc_plus4(21),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(22),
      Q => ex_pc_plus4(22),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(23),
      Q => ex_pc_plus4(23),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(24),
      Q => ex_pc_plus4(24),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(25),
      Q => ex_pc_plus4(25),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(26),
      Q => ex_pc_plus4(26),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(27),
      Q => ex_pc_plus4(27),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(28),
      Q => ex_pc_plus4(28),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(29),
      Q => ex_pc_plus4(29),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(2),
      Q => ex_pc_plus4(2),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(30),
      Q => ex_pc_plus4(30),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(31),
      Q => ex_pc_plus4(31),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(3),
      Q => ex_pc_plus4(3),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(4),
      Q => ex_pc_plus4(4),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(5),
      Q => ex_pc_plus4(5),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(6),
      Q => ex_pc_plus4(6),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(7),
      Q => ex_pc_plus4(7),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(8),
      Q => ex_pc_plus4(8),
      R => ex_valid_i_1_n_0
    );
\ex_pc_plus4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc_plus4(9),
      Q => ex_pc_plus4(9),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(0),
      Q => ex_pc(0),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(10),
      Q => ex_pc(10),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(11),
      Q => ex_pc(11),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(12),
      Q => ex_pc(12),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(13),
      Q => ex_pc(13),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(14),
      Q => ex_pc(14),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(15),
      Q => ex_pc(15),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(16),
      Q => ex_pc(16),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(17),
      Q => ex_pc(17),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(18),
      Q => ex_pc(18),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(19),
      Q => ex_pc(19),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(1),
      Q => ex_pc(1),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(20),
      Q => ex_pc(20),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(21),
      Q => ex_pc(21),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(22),
      Q => ex_pc(22),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(23),
      Q => ex_pc(23),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(24),
      Q => ex_pc(24),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(25),
      Q => ex_pc(25),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(26),
      Q => ex_pc(26),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(27),
      Q => ex_pc(27),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(28),
      Q => ex_pc(28),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(29),
      Q => ex_pc(29),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(2),
      Q => ex_pc(2),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(30),
      Q => ex_pc(30),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(31),
      Q => ex_pc(31),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(3),
      Q => ex_pc(3),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(4),
      Q => ex_pc(4),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(5),
      Q => ex_pc(5),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(6),
      Q => ex_pc(6),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(7),
      Q => ex_pc(7),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(8),
      Q => ex_pc(8),
      R => ex_valid_i_1_n_0
    );
\ex_pc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pc(9),
      Q => ex_pc(9),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(0),
      Q => ex_pred_next_pc(0),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(10),
      Q => ex_pred_next_pc(10),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(11),
      Q => ex_pred_next_pc(11),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(12),
      Q => ex_pred_next_pc(12),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(13),
      Q => ex_pred_next_pc(13),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(14),
      Q => ex_pred_next_pc(14),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(15),
      Q => ex_pred_next_pc(15),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(16),
      Q => ex_pred_next_pc(16),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(17),
      Q => ex_pred_next_pc(17),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(18),
      Q => ex_pred_next_pc(18),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(19),
      Q => ex_pred_next_pc(19),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(1),
      Q => ex_pred_next_pc(1),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(20),
      Q => ex_pred_next_pc(20),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(21),
      Q => ex_pred_next_pc(21),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(22),
      Q => ex_pred_next_pc(22),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(23),
      Q => ex_pred_next_pc(23),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(24),
      Q => ex_pred_next_pc(24),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(25),
      Q => ex_pred_next_pc(25),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(26),
      Q => ex_pred_next_pc(26),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(27),
      Q => ex_pred_next_pc(27),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(28),
      Q => ex_pred_next_pc(28),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(29),
      Q => ex_pred_next_pc(29),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(2),
      Q => ex_pred_next_pc(2),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(30),
      Q => ex_pred_next_pc(30),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(31),
      Q => ex_pred_next_pc(31),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(3),
      Q => ex_pred_next_pc(3),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(4),
      Q => ex_pred_next_pc(4),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(5),
      Q => ex_pred_next_pc(5),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(6),
      Q => ex_pred_next_pc(6),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(7),
      Q => ex_pred_next_pc(7),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(8),
      Q => ex_pred_next_pc(8),
      R => ex_valid_i_1_n_0
    );
\ex_pred_next_pc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_pred_next_pc(9),
      Q => ex_pred_next_pc(9),
      R => ex_valid_i_1_n_0
    );
\ex_rd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rd(0),
      Q => ex_rd(0),
      R => ex_valid_i_1_n_0
    );
\ex_rd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rd(1),
      Q => ex_rd(1),
      R => ex_valid_i_1_n_0
    );
\ex_rd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rd(2),
      Q => ex_rd(2),
      R => ex_valid_i_1_n_0
    );
\ex_rd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rd(3),
      Q => ex_rd(3),
      R => ex_valid_i_1_n_0
    );
\ex_rd_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rd(4),
      Q => ex_rd(4),
      R => ex_valid_i_1_n_0
    );
ex_rd_we_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => id_rd_we,
      I1 => id_valid,
      O => ex_rd_we0
    );
ex_rd_we_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => ex_rd_we0,
      Q => ex_rd_we,
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(0),
      Q => ex_rs1_data(0),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(10),
      Q => ex_rs1_data(10),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(11),
      Q => ex_rs1_data(11),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(12),
      Q => ex_rs1_data(12),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(13),
      Q => ex_rs1_data(13),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(14),
      Q => ex_rs1_data(14),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(15),
      Q => ex_rs1_data(15),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(16),
      Q => ex_rs1_data(16),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(17),
      Q => ex_rs1_data(17),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(18),
      Q => ex_rs1_data(18),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(19),
      Q => ex_rs1_data(19),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(1),
      Q => ex_rs1_data(1),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(20),
      Q => ex_rs1_data(20),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(21),
      Q => ex_rs1_data(21),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(22),
      Q => ex_rs1_data(22),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(23),
      Q => ex_rs1_data(23),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(24),
      Q => ex_rs1_data(24),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(25),
      Q => ex_rs1_data(25),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(26),
      Q => ex_rs1_data(26),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(27),
      Q => ex_rs1_data(27),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(28),
      Q => ex_rs1_data(28),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(29),
      Q => ex_rs1_data(29),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(2),
      Q => ex_rs1_data(2),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(30),
      Q => ex_rs1_data(30),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(31),
      Q => ex_rs1_data(31),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(3),
      Q => ex_rs1_data(3),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(4),
      Q => ex_rs1_data(4),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(5),
      Q => ex_rs1_data(5),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(6),
      Q => ex_rs1_data(6),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(7),
      Q => ex_rs1_data(7),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(8),
      Q => ex_rs1_data(8),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1_data(9),
      Q => ex_rs1_data(9),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1(0),
      Q => ex_rs1(0),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1(1),
      Q => ex_rs1(1),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1(2),
      Q => ex_rs1(2),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1(3),
      Q => ex_rs1(3),
      R => ex_valid_i_1_n_0
    );
\ex_rs1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs1(4),
      Q => ex_rs1(4),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(0),
      Q => ex_rs2_data(0),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(10),
      Q => ex_rs2_data(10),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(11),
      Q => ex_rs2_data(11),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(12),
      Q => ex_rs2_data(12),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(13),
      Q => ex_rs2_data(13),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(14),
      Q => ex_rs2_data(14),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(15),
      Q => ex_rs2_data(15),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(16),
      Q => ex_rs2_data(16),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(17),
      Q => ex_rs2_data(17),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(18),
      Q => ex_rs2_data(18),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(19),
      Q => ex_rs2_data(19),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(1),
      Q => ex_rs2_data(1),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(20),
      Q => ex_rs2_data(20),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(21),
      Q => ex_rs2_data(21),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(22),
      Q => ex_rs2_data(22),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(23),
      Q => ex_rs2_data(23),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(24),
      Q => ex_rs2_data(24),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(25),
      Q => ex_rs2_data(25),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(26),
      Q => ex_rs2_data(26),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(27),
      Q => ex_rs2_data(27),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(28),
      Q => ex_rs2_data(28),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(29),
      Q => ex_rs2_data(29),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(2),
      Q => ex_rs2_data(2),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(30),
      Q => ex_rs2_data(30),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(31),
      Q => ex_rs2_data(31),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(3),
      Q => ex_rs2_data(3),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(4),
      Q => ex_rs2_data(4),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(5),
      Q => ex_rs2_data(5),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(6),
      Q => ex_rs2_data(6),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(7),
      Q => ex_rs2_data(7),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(8),
      Q => ex_rs2_data(8),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2_data(9),
      Q => ex_rs2_data(9),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2(0),
      Q => ex_rs2(0),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2(1),
      Q => ex_rs2(1),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2(2),
      Q => ex_rs2(2),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2(3),
      Q => ex_rs2(3),
      R => ex_valid_i_1_n_0
    );
\ex_rs2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_rs2(4),
      Q => ex_rs2(4),
      R => ex_valid_i_1_n_0
    );
ex_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rst,
      I1 => stall,
      I2 => bubble,
      O => ex_valid_i_1_n_0
    );
ex_valid_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => stall,
      O => p_0_in
    );
ex_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_valid,
      Q => ex_valid,
      R => ex_valid_i_1_n_0
    );
\ex_wb_sel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_wb_sel(0),
      Q => ex_wb_sel(0),
      R => ex_valid_i_1_n_0
    );
\ex_wb_sel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_wb_sel(1),
      Q => ex_wb_sel(1),
      R => ex_valid_i_1_n_0
    );
\ex_wb_sel_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => p_0_in,
      D => id_wb_sel(2),
      Q => ex_wb_sel(2),
      R => ex_valid_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_if_id_reg is
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
  attribute ORIG_REF_NAME of RV32_IF_EX_if_id_reg : entity is "if_id_reg";
end RV32_IF_EX_if_id_reg;

architecture STRUCTURE of RV32_IF_EX_if_id_reg is
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
  attribute SOFT_HLUTNM of \id_instr[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \id_instr[10]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \id_instr[11]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \id_instr[12]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \id_instr[13]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \id_instr[14]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \id_instr[15]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \id_instr[16]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \id_instr[17]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \id_instr[18]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \id_instr[19]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \id_instr[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \id_instr[20]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \id_instr[21]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \id_instr[22]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \id_instr[23]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \id_instr[24]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \id_instr[25]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \id_instr[26]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \id_instr[27]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \id_instr[28]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \id_instr[29]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \id_instr[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \id_instr[30]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \id_instr[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \id_instr[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \id_instr[6]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \id_instr[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \id_instr[8]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \id_instr[9]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \id_pc[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \id_pc[10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \id_pc[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \id_pc[12]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \id_pc[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \id_pc[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \id_pc[15]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \id_pc[16]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \id_pc[17]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \id_pc[18]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \id_pc[19]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \id_pc[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \id_pc[20]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \id_pc[21]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \id_pc[22]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \id_pc[23]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \id_pc[24]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \id_pc[25]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \id_pc[26]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \id_pc[27]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \id_pc[28]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \id_pc[29]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \id_pc[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \id_pc[30]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \id_pc[31]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \id_pc[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \id_pc[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \id_pc[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \id_pc[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \id_pc[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \id_pc[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \id_pc[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \id_pc_plus4[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \id_pc_plus4[10]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \id_pc_plus4[11]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \id_pc_plus4[12]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \id_pc_plus4[13]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \id_pc_plus4[14]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \id_pc_plus4[15]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \id_pc_plus4[16]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \id_pc_plus4[17]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \id_pc_plus4[18]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \id_pc_plus4[19]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \id_pc_plus4[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \id_pc_plus4[20]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \id_pc_plus4[21]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \id_pc_plus4[22]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \id_pc_plus4[23]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \id_pc_plus4[24]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \id_pc_plus4[25]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \id_pc_plus4[26]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \id_pc_plus4[27]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \id_pc_plus4[28]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \id_pc_plus4[29]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \id_pc_plus4[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \id_pc_plus4[30]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \id_pc_plus4[31]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \id_pc_plus4[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \id_pc_plus4[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \id_pc_plus4[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \id_pc_plus4[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \id_pc_plus4[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \id_pc_plus4[8]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \id_pc_plus4[9]_i_1\ : label is "soft_lutpair31";
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
entity RV32_IF_EX_imm_mux is
  port (
    imm_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    imm_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_j : in STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_u : in STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_s : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_imm_mux : entity is "imm_mux";
end RV32_IF_EX_imm_mux;

architecture STRUCTURE of RV32_IF_EX_imm_mux is
  signal \imm_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \imm_out[9]_INST_0_i_1_n_0\ : STD_LOGIC;
begin
\imm_out[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[0]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(0),
      I4 => imm_sel(0),
      I5 => imm_j(0),
      O => imm_out(0)
    );
\imm_out[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(0),
      I1 => imm_b(0),
      I2 => imm_sel(1),
      I3 => imm_s(0),
      I4 => imm_sel(0),
      I5 => imm_i(0),
      O => \imm_out[0]_INST_0_i_1_n_0\
    );
\imm_out[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[10]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(10),
      I4 => imm_sel(0),
      I5 => imm_j(10),
      O => imm_out(10)
    );
\imm_out[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(10),
      I1 => imm_b(10),
      I2 => imm_sel(1),
      I3 => imm_s(10),
      I4 => imm_sel(0),
      I5 => imm_i(10),
      O => \imm_out[10]_INST_0_i_1_n_0\
    );
\imm_out[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[11]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(11),
      I4 => imm_sel(0),
      I5 => imm_j(11),
      O => imm_out(11)
    );
\imm_out[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(11),
      I1 => imm_b(11),
      I2 => imm_sel(1),
      I3 => imm_s(11),
      I4 => imm_sel(0),
      I5 => imm_i(11),
      O => \imm_out[11]_INST_0_i_1_n_0\
    );
\imm_out[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[12]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(12),
      I4 => imm_sel(0),
      I5 => imm_j(12),
      O => imm_out(12)
    );
\imm_out[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(12),
      I1 => imm_b(12),
      I2 => imm_sel(1),
      I3 => imm_s(12),
      I4 => imm_sel(0),
      I5 => imm_i(12),
      O => \imm_out[12]_INST_0_i_1_n_0\
    );
\imm_out[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[13]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(13),
      I4 => imm_sel(0),
      I5 => imm_j(13),
      O => imm_out(13)
    );
\imm_out[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(13),
      I1 => imm_b(13),
      I2 => imm_sel(1),
      I3 => imm_s(13),
      I4 => imm_sel(0),
      I5 => imm_i(13),
      O => \imm_out[13]_INST_0_i_1_n_0\
    );
\imm_out[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[14]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(14),
      I4 => imm_sel(0),
      I5 => imm_j(14),
      O => imm_out(14)
    );
\imm_out[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(14),
      I1 => imm_b(14),
      I2 => imm_sel(1),
      I3 => imm_s(14),
      I4 => imm_sel(0),
      I5 => imm_i(14),
      O => \imm_out[14]_INST_0_i_1_n_0\
    );
\imm_out[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[15]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(15),
      I4 => imm_sel(0),
      I5 => imm_j(15),
      O => imm_out(15)
    );
\imm_out[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(15),
      I1 => imm_b(15),
      I2 => imm_sel(1),
      I3 => imm_s(15),
      I4 => imm_sel(0),
      I5 => imm_i(15),
      O => \imm_out[15]_INST_0_i_1_n_0\
    );
\imm_out[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[16]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(16),
      I4 => imm_sel(0),
      I5 => imm_j(16),
      O => imm_out(16)
    );
\imm_out[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(16),
      I1 => imm_b(16),
      I2 => imm_sel(1),
      I3 => imm_s(16),
      I4 => imm_sel(0),
      I5 => imm_i(16),
      O => \imm_out[16]_INST_0_i_1_n_0\
    );
\imm_out[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[17]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(17),
      I4 => imm_sel(0),
      I5 => imm_j(17),
      O => imm_out(17)
    );
\imm_out[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(17),
      I1 => imm_b(17),
      I2 => imm_sel(1),
      I3 => imm_s(17),
      I4 => imm_sel(0),
      I5 => imm_i(17),
      O => \imm_out[17]_INST_0_i_1_n_0\
    );
\imm_out[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[18]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(18),
      I4 => imm_sel(0),
      I5 => imm_j(18),
      O => imm_out(18)
    );
\imm_out[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(18),
      I1 => imm_b(18),
      I2 => imm_sel(1),
      I3 => imm_s(18),
      I4 => imm_sel(0),
      I5 => imm_i(18),
      O => \imm_out[18]_INST_0_i_1_n_0\
    );
\imm_out[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[19]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(19),
      I4 => imm_sel(0),
      I5 => imm_j(19),
      O => imm_out(19)
    );
\imm_out[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(19),
      I1 => imm_b(19),
      I2 => imm_sel(1),
      I3 => imm_s(19),
      I4 => imm_sel(0),
      I5 => imm_i(19),
      O => \imm_out[19]_INST_0_i_1_n_0\
    );
\imm_out[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[1]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(1),
      I4 => imm_sel(0),
      I5 => imm_j(1),
      O => imm_out(1)
    );
\imm_out[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(1),
      I1 => imm_b(1),
      I2 => imm_sel(1),
      I3 => imm_s(1),
      I4 => imm_sel(0),
      I5 => imm_i(1),
      O => \imm_out[1]_INST_0_i_1_n_0\
    );
\imm_out[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[20]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(20),
      I4 => imm_sel(0),
      I5 => imm_j(20),
      O => imm_out(20)
    );
\imm_out[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(20),
      I1 => imm_b(20),
      I2 => imm_sel(1),
      I3 => imm_s(20),
      I4 => imm_sel(0),
      I5 => imm_i(20),
      O => \imm_out[20]_INST_0_i_1_n_0\
    );
\imm_out[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[21]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(21),
      I4 => imm_sel(0),
      I5 => imm_j(21),
      O => imm_out(21)
    );
\imm_out[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(21),
      I1 => imm_b(21),
      I2 => imm_sel(1),
      I3 => imm_s(21),
      I4 => imm_sel(0),
      I5 => imm_i(21),
      O => \imm_out[21]_INST_0_i_1_n_0\
    );
\imm_out[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[22]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(22),
      I4 => imm_sel(0),
      I5 => imm_j(22),
      O => imm_out(22)
    );
\imm_out[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(22),
      I1 => imm_b(22),
      I2 => imm_sel(1),
      I3 => imm_s(22),
      I4 => imm_sel(0),
      I5 => imm_i(22),
      O => \imm_out[22]_INST_0_i_1_n_0\
    );
\imm_out[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[23]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(23),
      I4 => imm_sel(0),
      I5 => imm_j(23),
      O => imm_out(23)
    );
\imm_out[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(23),
      I1 => imm_b(23),
      I2 => imm_sel(1),
      I3 => imm_s(23),
      I4 => imm_sel(0),
      I5 => imm_i(23),
      O => \imm_out[23]_INST_0_i_1_n_0\
    );
\imm_out[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[24]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(24),
      I4 => imm_sel(0),
      I5 => imm_j(24),
      O => imm_out(24)
    );
\imm_out[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(24),
      I1 => imm_b(24),
      I2 => imm_sel(1),
      I3 => imm_s(24),
      I4 => imm_sel(0),
      I5 => imm_i(24),
      O => \imm_out[24]_INST_0_i_1_n_0\
    );
\imm_out[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[25]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(25),
      I4 => imm_sel(0),
      I5 => imm_j(25),
      O => imm_out(25)
    );
\imm_out[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(25),
      I1 => imm_b(25),
      I2 => imm_sel(1),
      I3 => imm_s(25),
      I4 => imm_sel(0),
      I5 => imm_i(25),
      O => \imm_out[25]_INST_0_i_1_n_0\
    );
\imm_out[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[26]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(26),
      I4 => imm_sel(0),
      I5 => imm_j(26),
      O => imm_out(26)
    );
\imm_out[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(26),
      I1 => imm_b(26),
      I2 => imm_sel(1),
      I3 => imm_s(26),
      I4 => imm_sel(0),
      I5 => imm_i(26),
      O => \imm_out[26]_INST_0_i_1_n_0\
    );
\imm_out[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[27]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(27),
      I4 => imm_sel(0),
      I5 => imm_j(27),
      O => imm_out(27)
    );
\imm_out[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(27),
      I1 => imm_b(27),
      I2 => imm_sel(1),
      I3 => imm_s(27),
      I4 => imm_sel(0),
      I5 => imm_i(27),
      O => \imm_out[27]_INST_0_i_1_n_0\
    );
\imm_out[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[28]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(28),
      I4 => imm_sel(0),
      I5 => imm_j(28),
      O => imm_out(28)
    );
\imm_out[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(28),
      I1 => imm_b(28),
      I2 => imm_sel(1),
      I3 => imm_s(28),
      I4 => imm_sel(0),
      I5 => imm_i(28),
      O => \imm_out[28]_INST_0_i_1_n_0\
    );
\imm_out[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[29]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(29),
      I4 => imm_sel(0),
      I5 => imm_j(29),
      O => imm_out(29)
    );
\imm_out[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(29),
      I1 => imm_b(29),
      I2 => imm_sel(1),
      I3 => imm_s(29),
      I4 => imm_sel(0),
      I5 => imm_i(29),
      O => \imm_out[29]_INST_0_i_1_n_0\
    );
\imm_out[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[2]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(2),
      I4 => imm_sel(0),
      I5 => imm_j(2),
      O => imm_out(2)
    );
\imm_out[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(2),
      I1 => imm_b(2),
      I2 => imm_sel(1),
      I3 => imm_s(2),
      I4 => imm_sel(0),
      I5 => imm_i(2),
      O => \imm_out[2]_INST_0_i_1_n_0\
    );
\imm_out[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[30]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(30),
      I4 => imm_sel(0),
      I5 => imm_j(30),
      O => imm_out(30)
    );
\imm_out[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(30),
      I1 => imm_b(30),
      I2 => imm_sel(1),
      I3 => imm_s(30),
      I4 => imm_sel(0),
      I5 => imm_i(30),
      O => \imm_out[30]_INST_0_i_1_n_0\
    );
\imm_out[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[31]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(31),
      I4 => imm_sel(0),
      I5 => imm_j(31),
      O => imm_out(31)
    );
\imm_out[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(31),
      I1 => imm_b(31),
      I2 => imm_sel(1),
      I3 => imm_s(31),
      I4 => imm_sel(0),
      I5 => imm_i(31),
      O => \imm_out[31]_INST_0_i_1_n_0\
    );
\imm_out[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[3]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(3),
      I4 => imm_sel(0),
      I5 => imm_j(3),
      O => imm_out(3)
    );
\imm_out[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(3),
      I1 => imm_b(3),
      I2 => imm_sel(1),
      I3 => imm_s(3),
      I4 => imm_sel(0),
      I5 => imm_i(3),
      O => \imm_out[3]_INST_0_i_1_n_0\
    );
\imm_out[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[4]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(4),
      I4 => imm_sel(0),
      I5 => imm_j(4),
      O => imm_out(4)
    );
\imm_out[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(4),
      I1 => imm_b(4),
      I2 => imm_sel(1),
      I3 => imm_s(4),
      I4 => imm_sel(0),
      I5 => imm_i(4),
      O => \imm_out[4]_INST_0_i_1_n_0\
    );
\imm_out[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[5]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(5),
      I4 => imm_sel(0),
      I5 => imm_j(5),
      O => imm_out(5)
    );
\imm_out[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(5),
      I1 => imm_b(5),
      I2 => imm_sel(1),
      I3 => imm_s(5),
      I4 => imm_sel(0),
      I5 => imm_i(5),
      O => \imm_out[5]_INST_0_i_1_n_0\
    );
\imm_out[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[6]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(6),
      I4 => imm_sel(0),
      I5 => imm_j(6),
      O => imm_out(6)
    );
\imm_out[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(6),
      I1 => imm_b(6),
      I2 => imm_sel(1),
      I3 => imm_s(6),
      I4 => imm_sel(0),
      I5 => imm_i(6),
      O => \imm_out[6]_INST_0_i_1_n_0\
    );
\imm_out[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[7]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(7),
      I4 => imm_sel(0),
      I5 => imm_j(7),
      O => imm_out(7)
    );
\imm_out[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(7),
      I1 => imm_b(7),
      I2 => imm_sel(1),
      I3 => imm_s(7),
      I4 => imm_sel(0),
      I5 => imm_i(7),
      O => \imm_out[7]_INST_0_i_1_n_0\
    );
\imm_out[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[8]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(8),
      I4 => imm_sel(0),
      I5 => imm_j(8),
      O => imm_out(8)
    );
\imm_out[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(8),
      I1 => imm_b(8),
      I2 => imm_sel(1),
      I3 => imm_s(8),
      I4 => imm_sel(0),
      I5 => imm_i(8),
      O => \imm_out[8]_INST_0_i_1_n_0\
    );
\imm_out[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFA3AFA0ACA0A"
    )
        port map (
      I0 => \imm_out[9]_INST_0_i_1_n_0\,
      I1 => imm_sel(1),
      I2 => imm_sel(2),
      I3 => imm_i(9),
      I4 => imm_sel(0),
      I5 => imm_j(9),
      O => imm_out(9)
    );
\imm_out[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => imm_u(9),
      I1 => imm_b(9),
      I2 => imm_sel(1),
      I3 => imm_s(9),
      I4 => imm_sel(0),
      I5 => imm_i(9),
      O => \imm_out[9]_INST_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_pc_unit is
  port (
    pc : out STD_LOGIC_VECTOR ( 29 downto 0 );
    pc_plus4 : out STD_LOGIC_VECTOR ( 29 downto 0 );
    pc_en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_pc_unit : entity is "pc_unit";
end RV32_IF_EX_pc_unit;

architecture STRUCTURE of RV32_IF_EX_pc_unit is
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
entity RV32_IF_EX_regfile is
  port (
    rs2_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rs1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \ex_rs2_data_reg[0]\ : in STD_LOGIC;
    \ex_rs2_data_reg[0]_0\ : in STD_LOGIC;
    \ex_rs2_data_reg[0]_1\ : in STD_LOGIC;
    \ex_rs1_data_reg[0]\ : in STD_LOGIC;
    \ex_rs1_data_reg[0]_0\ : in STD_LOGIC;
    \ex_rs1_data_reg[0]_1\ : in STD_LOGIC;
    rd_we : in STD_LOGIC;
    rd_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    rs1_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rs2_addr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_regfile : entity is "regfile";
end RV32_IF_EX_regfile;

architecture STRUCTURE of RV32_IF_EX_regfile is
  signal p_2_in : STD_LOGIC;
  signal rs1_rdata_r0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rs2_rdata_r0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_regs_reg_r1_0_31_0_13_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r1_0_31_14_27_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r1_0_31_28_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r1_0_31_28_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r1_0_31_28_31_DOE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r1_0_31_28_31_DOF_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r1_0_31_28_31_DOG_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r1_0_31_28_31_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r2_0_31_0_13_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r2_0_31_14_27_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r2_0_31_28_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r2_0_31_28_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r2_0_31_28_31_DOE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r2_0_31_28_31_DOF_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r2_0_31_28_31_DOG_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regs_reg_r2_0_31_28_31_DOH_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of regs_reg_r1_0_31_0_13 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of regs_reg_r1_0_31_0_13 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of regs_reg_r1_0_31_0_13 : label is "inst/regs";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of regs_reg_r1_0_31_0_13 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of regs_reg_r1_0_31_0_13 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of regs_reg_r1_0_31_0_13 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of regs_reg_r1_0_31_0_13 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of regs_reg_r1_0_31_0_13 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of regs_reg_r1_0_31_0_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of regs_reg_r1_0_31_14_27 : label is "";
  attribute RTL_RAM_BITS of regs_reg_r1_0_31_14_27 : label is 1024;
  attribute RTL_RAM_NAME of regs_reg_r1_0_31_14_27 : label is "inst/regs";
  attribute RTL_RAM_TYPE of regs_reg_r1_0_31_14_27 : label is "RAM_SDP";
  attribute ram_addr_begin of regs_reg_r1_0_31_14_27 : label is 0;
  attribute ram_addr_end of regs_reg_r1_0_31_14_27 : label is 31;
  attribute ram_offset of regs_reg_r1_0_31_14_27 : label is 0;
  attribute ram_slice_begin of regs_reg_r1_0_31_14_27 : label is 14;
  attribute ram_slice_end of regs_reg_r1_0_31_14_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of regs_reg_r1_0_31_28_31 : label is "";
  attribute RTL_RAM_BITS of regs_reg_r1_0_31_28_31 : label is 1024;
  attribute RTL_RAM_NAME of regs_reg_r1_0_31_28_31 : label is "inst/regs";
  attribute RTL_RAM_TYPE of regs_reg_r1_0_31_28_31 : label is "RAM_SDP";
  attribute ram_addr_begin of regs_reg_r1_0_31_28_31 : label is 0;
  attribute ram_addr_end of regs_reg_r1_0_31_28_31 : label is 31;
  attribute ram_offset of regs_reg_r1_0_31_28_31 : label is 0;
  attribute ram_slice_begin of regs_reg_r1_0_31_28_31 : label is 28;
  attribute ram_slice_end of regs_reg_r1_0_31_28_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of regs_reg_r2_0_31_0_13 : label is "";
  attribute RTL_RAM_BITS of regs_reg_r2_0_31_0_13 : label is 1024;
  attribute RTL_RAM_NAME of regs_reg_r2_0_31_0_13 : label is "inst/regs";
  attribute RTL_RAM_TYPE of regs_reg_r2_0_31_0_13 : label is "RAM_SDP";
  attribute ram_addr_begin of regs_reg_r2_0_31_0_13 : label is 0;
  attribute ram_addr_end of regs_reg_r2_0_31_0_13 : label is 31;
  attribute ram_offset of regs_reg_r2_0_31_0_13 : label is 0;
  attribute ram_slice_begin of regs_reg_r2_0_31_0_13 : label is 0;
  attribute ram_slice_end of regs_reg_r2_0_31_0_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of regs_reg_r2_0_31_14_27 : label is "";
  attribute RTL_RAM_BITS of regs_reg_r2_0_31_14_27 : label is 1024;
  attribute RTL_RAM_NAME of regs_reg_r2_0_31_14_27 : label is "inst/regs";
  attribute RTL_RAM_TYPE of regs_reg_r2_0_31_14_27 : label is "RAM_SDP";
  attribute ram_addr_begin of regs_reg_r2_0_31_14_27 : label is 0;
  attribute ram_addr_end of regs_reg_r2_0_31_14_27 : label is 31;
  attribute ram_offset of regs_reg_r2_0_31_14_27 : label is 0;
  attribute ram_slice_begin of regs_reg_r2_0_31_14_27 : label is 14;
  attribute ram_slice_end of regs_reg_r2_0_31_14_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of regs_reg_r2_0_31_28_31 : label is "";
  attribute RTL_RAM_BITS of regs_reg_r2_0_31_28_31 : label is 1024;
  attribute RTL_RAM_NAME of regs_reg_r2_0_31_28_31 : label is "inst/regs";
  attribute RTL_RAM_TYPE of regs_reg_r2_0_31_28_31 : label is "RAM_SDP";
  attribute ram_addr_begin of regs_reg_r2_0_31_28_31 : label is 0;
  attribute ram_addr_end of regs_reg_r2_0_31_28_31 : label is 31;
  attribute ram_offset of regs_reg_r2_0_31_28_31 : label is 0;
  attribute ram_slice_begin of regs_reg_r2_0_31_28_31 : label is 28;
  attribute ram_slice_end of regs_reg_r2_0_31_28_31 : label is 31;
begin
regs_reg_r1_0_31_0_13: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => rs1_addr(4 downto 0),
      ADDRB(4 downto 0) => rs1_addr(4 downto 0),
      ADDRC(4 downto 0) => rs1_addr(4 downto 0),
      ADDRD(4 downto 0) => rs1_addr(4 downto 0),
      ADDRE(4 downto 0) => rs1_addr(4 downto 0),
      ADDRF(4 downto 0) => rs1_addr(4 downto 0),
      ADDRG(4 downto 0) => rs1_addr(4 downto 0),
      ADDRH(4 downto 0) => rd_addr(4 downto 0),
      DIA(1 downto 0) => rd_wdata(1 downto 0),
      DIB(1 downto 0) => rd_wdata(3 downto 2),
      DIC(1 downto 0) => rd_wdata(5 downto 4),
      DID(1 downto 0) => rd_wdata(7 downto 6),
      DIE(1 downto 0) => rd_wdata(9 downto 8),
      DIF(1 downto 0) => rd_wdata(11 downto 10),
      DIG(1 downto 0) => rd_wdata(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => rs1_rdata_r0(1 downto 0),
      DOB(1 downto 0) => rs1_rdata_r0(3 downto 2),
      DOC(1 downto 0) => rs1_rdata_r0(5 downto 4),
      DOD(1 downto 0) => rs1_rdata_r0(7 downto 6),
      DOE(1 downto 0) => rs1_rdata_r0(9 downto 8),
      DOF(1 downto 0) => rs1_rdata_r0(11 downto 10),
      DOG(1 downto 0) => rs1_rdata_r0(13 downto 12),
      DOH(1 downto 0) => NLW_regs_reg_r1_0_31_0_13_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_2_in
    );
regs_reg_r1_0_31_14_27: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => rs1_addr(4 downto 0),
      ADDRB(4 downto 0) => rs1_addr(4 downto 0),
      ADDRC(4 downto 0) => rs1_addr(4 downto 0),
      ADDRD(4 downto 0) => rs1_addr(4 downto 0),
      ADDRE(4 downto 0) => rs1_addr(4 downto 0),
      ADDRF(4 downto 0) => rs1_addr(4 downto 0),
      ADDRG(4 downto 0) => rs1_addr(4 downto 0),
      ADDRH(4 downto 0) => rd_addr(4 downto 0),
      DIA(1 downto 0) => rd_wdata(15 downto 14),
      DIB(1 downto 0) => rd_wdata(17 downto 16),
      DIC(1 downto 0) => rd_wdata(19 downto 18),
      DID(1 downto 0) => rd_wdata(21 downto 20),
      DIE(1 downto 0) => rd_wdata(23 downto 22),
      DIF(1 downto 0) => rd_wdata(25 downto 24),
      DIG(1 downto 0) => rd_wdata(27 downto 26),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => rs1_rdata_r0(15 downto 14),
      DOB(1 downto 0) => rs1_rdata_r0(17 downto 16),
      DOC(1 downto 0) => rs1_rdata_r0(19 downto 18),
      DOD(1 downto 0) => rs1_rdata_r0(21 downto 20),
      DOE(1 downto 0) => rs1_rdata_r0(23 downto 22),
      DOF(1 downto 0) => rs1_rdata_r0(25 downto 24),
      DOG(1 downto 0) => rs1_rdata_r0(27 downto 26),
      DOH(1 downto 0) => NLW_regs_reg_r1_0_31_14_27_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_2_in
    );
regs_reg_r1_0_31_28_31: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => rs1_addr(4 downto 0),
      ADDRB(4 downto 0) => rs1_addr(4 downto 0),
      ADDRC(4 downto 0) => rs1_addr(4 downto 0),
      ADDRD(4 downto 0) => rs1_addr(4 downto 0),
      ADDRE(4 downto 0) => rs1_addr(4 downto 0),
      ADDRF(4 downto 0) => rs1_addr(4 downto 0),
      ADDRG(4 downto 0) => rs1_addr(4 downto 0),
      ADDRH(4 downto 0) => rd_addr(4 downto 0),
      DIA(1 downto 0) => rd_wdata(29 downto 28),
      DIB(1 downto 0) => rd_wdata(31 downto 30),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DIE(1 downto 0) => B"00",
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => rs1_rdata_r0(29 downto 28),
      DOB(1 downto 0) => rs1_rdata_r0(31 downto 30),
      DOC(1 downto 0) => NLW_regs_reg_r1_0_31_28_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_regs_reg_r1_0_31_28_31_DOD_UNCONNECTED(1 downto 0),
      DOE(1 downto 0) => NLW_regs_reg_r1_0_31_28_31_DOE_UNCONNECTED(1 downto 0),
      DOF(1 downto 0) => NLW_regs_reg_r1_0_31_28_31_DOF_UNCONNECTED(1 downto 0),
      DOG(1 downto 0) => NLW_regs_reg_r1_0_31_28_31_DOG_UNCONNECTED(1 downto 0),
      DOH(1 downto 0) => NLW_regs_reg_r1_0_31_28_31_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_2_in
    );
regs_reg_r2_0_31_0_13: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => rs2_addr(4 downto 0),
      ADDRB(4 downto 0) => rs2_addr(4 downto 0),
      ADDRC(4 downto 0) => rs2_addr(4 downto 0),
      ADDRD(4 downto 0) => rs2_addr(4 downto 0),
      ADDRE(4 downto 0) => rs2_addr(4 downto 0),
      ADDRF(4 downto 0) => rs2_addr(4 downto 0),
      ADDRG(4 downto 0) => rs2_addr(4 downto 0),
      ADDRH(4 downto 0) => rd_addr(4 downto 0),
      DIA(1 downto 0) => rd_wdata(1 downto 0),
      DIB(1 downto 0) => rd_wdata(3 downto 2),
      DIC(1 downto 0) => rd_wdata(5 downto 4),
      DID(1 downto 0) => rd_wdata(7 downto 6),
      DIE(1 downto 0) => rd_wdata(9 downto 8),
      DIF(1 downto 0) => rd_wdata(11 downto 10),
      DIG(1 downto 0) => rd_wdata(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => rs2_rdata_r0(1 downto 0),
      DOB(1 downto 0) => rs2_rdata_r0(3 downto 2),
      DOC(1 downto 0) => rs2_rdata_r0(5 downto 4),
      DOD(1 downto 0) => rs2_rdata_r0(7 downto 6),
      DOE(1 downto 0) => rs2_rdata_r0(9 downto 8),
      DOF(1 downto 0) => rs2_rdata_r0(11 downto 10),
      DOG(1 downto 0) => rs2_rdata_r0(13 downto 12),
      DOH(1 downto 0) => NLW_regs_reg_r2_0_31_0_13_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_2_in
    );
regs_reg_r2_0_31_14_27: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => rs2_addr(4 downto 0),
      ADDRB(4 downto 0) => rs2_addr(4 downto 0),
      ADDRC(4 downto 0) => rs2_addr(4 downto 0),
      ADDRD(4 downto 0) => rs2_addr(4 downto 0),
      ADDRE(4 downto 0) => rs2_addr(4 downto 0),
      ADDRF(4 downto 0) => rs2_addr(4 downto 0),
      ADDRG(4 downto 0) => rs2_addr(4 downto 0),
      ADDRH(4 downto 0) => rd_addr(4 downto 0),
      DIA(1 downto 0) => rd_wdata(15 downto 14),
      DIB(1 downto 0) => rd_wdata(17 downto 16),
      DIC(1 downto 0) => rd_wdata(19 downto 18),
      DID(1 downto 0) => rd_wdata(21 downto 20),
      DIE(1 downto 0) => rd_wdata(23 downto 22),
      DIF(1 downto 0) => rd_wdata(25 downto 24),
      DIG(1 downto 0) => rd_wdata(27 downto 26),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => rs2_rdata_r0(15 downto 14),
      DOB(1 downto 0) => rs2_rdata_r0(17 downto 16),
      DOC(1 downto 0) => rs2_rdata_r0(19 downto 18),
      DOD(1 downto 0) => rs2_rdata_r0(21 downto 20),
      DOE(1 downto 0) => rs2_rdata_r0(23 downto 22),
      DOF(1 downto 0) => rs2_rdata_r0(25 downto 24),
      DOG(1 downto 0) => rs2_rdata_r0(27 downto 26),
      DOH(1 downto 0) => NLW_regs_reg_r2_0_31_14_27_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_2_in
    );
regs_reg_r2_0_31_28_31: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => rs2_addr(4 downto 0),
      ADDRB(4 downto 0) => rs2_addr(4 downto 0),
      ADDRC(4 downto 0) => rs2_addr(4 downto 0),
      ADDRD(4 downto 0) => rs2_addr(4 downto 0),
      ADDRE(4 downto 0) => rs2_addr(4 downto 0),
      ADDRF(4 downto 0) => rs2_addr(4 downto 0),
      ADDRG(4 downto 0) => rs2_addr(4 downto 0),
      ADDRH(4 downto 0) => rd_addr(4 downto 0),
      DIA(1 downto 0) => rd_wdata(29 downto 28),
      DIB(1 downto 0) => rd_wdata(31 downto 30),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DIE(1 downto 0) => B"00",
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => rs2_rdata_r0(29 downto 28),
      DOB(1 downto 0) => rs2_rdata_r0(31 downto 30),
      DOC(1 downto 0) => NLW_regs_reg_r2_0_31_28_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_regs_reg_r2_0_31_28_31_DOD_UNCONNECTED(1 downto 0),
      DOE(1 downto 0) => NLW_regs_reg_r2_0_31_28_31_DOE_UNCONNECTED(1 downto 0),
      DOF(1 downto 0) => NLW_regs_reg_r2_0_31_28_31_DOF_UNCONNECTED(1 downto 0),
      DOG(1 downto 0) => NLW_regs_reg_r2_0_31_28_31_DOG_UNCONNECTED(1 downto 0),
      DOH(1 downto 0) => NLW_regs_reg_r2_0_31_28_31_DOH_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_2_in
    );
\rs1_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(0),
      I1 => rs1_rdata_r0(0),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(0)
    );
\rs1_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(10),
      I1 => rs1_rdata_r0(10),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(10)
    );
\rs1_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(11),
      I1 => rs1_rdata_r0(11),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(11)
    );
\rs1_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(12),
      I1 => rs1_rdata_r0(12),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(12)
    );
\rs1_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(13),
      I1 => rs1_rdata_r0(13),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(13)
    );
\rs1_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(14),
      I1 => rs1_rdata_r0(14),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(14)
    );
\rs1_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(15),
      I1 => rs1_rdata_r0(15),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(15)
    );
\rs1_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(16),
      I1 => rs1_rdata_r0(16),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(16)
    );
\rs1_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(17),
      I1 => rs1_rdata_r0(17),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(17)
    );
\rs1_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(18),
      I1 => rs1_rdata_r0(18),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(18)
    );
\rs1_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(19),
      I1 => rs1_rdata_r0(19),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(19)
    );
\rs1_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(1),
      I1 => rs1_rdata_r0(1),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(1)
    );
\rs1_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(20),
      I1 => rs1_rdata_r0(20),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(20)
    );
\rs1_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(21),
      I1 => rs1_rdata_r0(21),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(21)
    );
\rs1_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(22),
      I1 => rs1_rdata_r0(22),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(22)
    );
\rs1_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(23),
      I1 => rs1_rdata_r0(23),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(23)
    );
\rs1_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(24),
      I1 => rs1_rdata_r0(24),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(24)
    );
\rs1_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(25),
      I1 => rs1_rdata_r0(25),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(25)
    );
\rs1_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(26),
      I1 => rs1_rdata_r0(26),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(26)
    );
\rs1_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(27),
      I1 => rs1_rdata_r0(27),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(27)
    );
\rs1_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(28),
      I1 => rs1_rdata_r0(28),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(28)
    );
\rs1_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(29),
      I1 => rs1_rdata_r0(29),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(29)
    );
\rs1_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(2),
      I1 => rs1_rdata_r0(2),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(2)
    );
\rs1_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(30),
      I1 => rs1_rdata_r0(30),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(30)
    );
\rs1_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(31),
      I1 => rs1_rdata_r0(31),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(31)
    );
\rs1_rdata[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => rd_we,
      I1 => rd_addr(3),
      I2 => rd_addr(2),
      I3 => rd_addr(1),
      I4 => rd_addr(0),
      I5 => rd_addr(4),
      O => p_2_in
    );
\rs1_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(3),
      I1 => rs1_rdata_r0(3),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(3)
    );
\rs1_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(4),
      I1 => rs1_rdata_r0(4),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(4)
    );
\rs1_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(5),
      I1 => rs1_rdata_r0(5),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(5)
    );
\rs1_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(6),
      I1 => rs1_rdata_r0(6),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(6)
    );
\rs1_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(7),
      I1 => rs1_rdata_r0(7),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(7)
    );
\rs1_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(8),
      I1 => rs1_rdata_r0(8),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(8)
    );
\rs1_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(9),
      I1 => rs1_rdata_r0(9),
      I2 => \ex_rs1_data_reg[0]\,
      I3 => \ex_rs1_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs1_data_reg[0]_1\,
      O => rs1_rdata(9)
    );
\rs2_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(0),
      I1 => rs2_rdata_r0(0),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(0)
    );
\rs2_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(10),
      I1 => rs2_rdata_r0(10),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(10)
    );
\rs2_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(11),
      I1 => rs2_rdata_r0(11),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(11)
    );
\rs2_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(12),
      I1 => rs2_rdata_r0(12),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(12)
    );
\rs2_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(13),
      I1 => rs2_rdata_r0(13),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(13)
    );
\rs2_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(14),
      I1 => rs2_rdata_r0(14),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(14)
    );
\rs2_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(15),
      I1 => rs2_rdata_r0(15),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(15)
    );
\rs2_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(16),
      I1 => rs2_rdata_r0(16),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(16)
    );
\rs2_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(17),
      I1 => rs2_rdata_r0(17),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(17)
    );
\rs2_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(18),
      I1 => rs2_rdata_r0(18),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(18)
    );
\rs2_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(19),
      I1 => rs2_rdata_r0(19),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(19)
    );
\rs2_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(1),
      I1 => rs2_rdata_r0(1),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(1)
    );
\rs2_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(20),
      I1 => rs2_rdata_r0(20),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(20)
    );
\rs2_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(21),
      I1 => rs2_rdata_r0(21),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(21)
    );
\rs2_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(22),
      I1 => rs2_rdata_r0(22),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(22)
    );
\rs2_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(23),
      I1 => rs2_rdata_r0(23),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(23)
    );
\rs2_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(24),
      I1 => rs2_rdata_r0(24),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(24)
    );
\rs2_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(25),
      I1 => rs2_rdata_r0(25),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(25)
    );
\rs2_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(26),
      I1 => rs2_rdata_r0(26),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(26)
    );
\rs2_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(27),
      I1 => rs2_rdata_r0(27),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(27)
    );
\rs2_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(28),
      I1 => rs2_rdata_r0(28),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(28)
    );
\rs2_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(29),
      I1 => rs2_rdata_r0(29),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(29)
    );
\rs2_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(2),
      I1 => rs2_rdata_r0(2),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(2)
    );
\rs2_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(30),
      I1 => rs2_rdata_r0(30),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(30)
    );
\rs2_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(31),
      I1 => rs2_rdata_r0(31),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(31)
    );
\rs2_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(3),
      I1 => rs2_rdata_r0(3),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(3)
    );
\rs2_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(4),
      I1 => rs2_rdata_r0(4),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(4)
    );
\rs2_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(5),
      I1 => rs2_rdata_r0(5),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(5)
    );
\rs2_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(6),
      I1 => rs2_rdata_r0(6),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(6)
    );
\rs2_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(7),
      I1 => rs2_rdata_r0(7),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(7)
    );
\rs2_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(8),
      I1 => rs2_rdata_r0(8),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(8)
    );
\rs2_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0C0C0C0C0C0C0"
    )
        port map (
      I0 => rd_wdata(9),
      I1 => rs2_rdata_r0(9),
      I2 => \ex_rs2_data_reg[0]\,
      I3 => \ex_rs2_data_reg[0]_0\,
      I4 => p_2_in,
      I5 => \ex_rs2_data_reg[0]_1\,
      O => rs2_rdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_rom_memory is
  port (
    instr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_rom_memory : entity is "rom_memory";
end RV32_IF_EX_rom_memory;

architecture STRUCTURE of RV32_IF_EX_rom_memory is
  signal NLW_instr_reg_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_instr_reg_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_instr_reg_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_instr_reg_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_instr_reg_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_instr_reg_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_instr_reg_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_instr_reg_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of instr_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of instr_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of instr_reg : label is "PERFORMANCE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of instr_reg : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of instr_reg : label is "inst/instr";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of instr_reg : label is "RAM_SP";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of instr_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of instr_reg : label is 2047;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of instr_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of instr_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of instr_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of instr_reg : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of instr_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of instr_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of instr_reg : label is 7;
begin
instr_reg: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0303030303030303030303030303030305030303635B534B433B332B231B130B",
      INIT_01 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_02 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_03 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_04 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_05 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_06 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_07 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_08 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_09 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_0A => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_0B => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_0C => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_0D => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_0E => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_0F => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_10 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_11 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_12 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_13 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_14 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_15 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_16 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_17 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_18 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_19 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_1A => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_1B => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_1C => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_1D => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_1E => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_1F => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_20 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_21 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_22 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_23 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_24 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_25 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_26 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_27 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_28 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_29 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_2A => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_2B => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_2C => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_2D => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_2E => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_2F => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_30 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_31 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_32 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_33 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_34 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_35 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_36 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_37 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_38 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_39 => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_3A => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_3B => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_3C => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_3D => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_3E => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_3F => X"0303030303030303030303030303030303030303030303030303030303030303",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 3) => addr(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => NLW_instr_reg_CASDOUTA_UNCONNECTED(15 downto 0),
      CASDOUTB(15 downto 0) => NLW_instr_reg_CASDOUTB_UNCONNECTED(15 downto 0),
      CASDOUTPA(1 downto 0) => NLW_instr_reg_CASDOUTPA_UNCONNECTED(1 downto 0),
      CASDOUTPB(1 downto 0) => NLW_instr_reg_CASDOUTPB_UNCONNECTED(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DINADIN(15 downto 0) => B"0000000011111111",
      DINBDIN(15 downto 0) => B"1111111111111111",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"11",
      DOUTADOUT(15 downto 8) => NLW_instr_reg_DOUTADOUT_UNCONNECTED(15 downto 8),
      DOUTADOUT(7 downto 0) => instr(7 downto 0),
      DOUTBDOUT(15 downto 0) => NLW_instr_reg_DOUTBDOUT_UNCONNECTED(15 downto 0),
      DOUTPADOUTP(1 downto 0) => NLW_instr_reg_DOUTPADOUTP_UNCONNECTED(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => NLW_instr_reg_DOUTPBDOUTP_UNCONNECTED(1 downto 0),
      ENARDEN => en,
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_RV32_IF_EX_id_ex_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    id_instr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    stall : in STD_LOGIC;
    bubble : in STD_LOGIC;
    id_valid : in STD_LOGIC;
    id_pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_pc_plus4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_pred_next_pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_rs1_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_rs2_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_imm : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_imm_u : in STD_LOGIC_VECTOR ( 31 downto 0 );
    id_rs1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    id_rs2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    id_rd : in STD_LOGIC_VECTOR ( 4 downto 0 );
    id_alu_op : in STD_LOGIC_VECTOR ( 3 downto 0 );
    id_op_a_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    id_op_b_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    id_branch_en : in STD_LOGIC;
    id_branch_funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    id_jal : in STD_LOGIC;
    id_jalr : in STD_LOGIC;
    id_mem_re : in STD_LOGIC;
    id_mem_we : in STD_LOGIC;
    id_mem_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    id_mem_unsigned : in STD_LOGIC;
    id_rd_we : in STD_LOGIC;
    id_wb_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    id_illegal_instr : in STD_LOGIC;
    ex_valid : out STD_LOGIC;
    ex_pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_pc_plus4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_pred_next_pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_rs1_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_rs2_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_imm : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_imm_u : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_rs1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ex_rs2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ex_rd : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ex_alu_op : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ex_op_a_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ex_op_b_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ex_branch_en : out STD_LOGIC;
    ex_branch_funct3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ex_jal : out STD_LOGIC;
    ex_jalr : out STD_LOGIC;
    ex_mem_re : out STD_LOGIC;
    ex_mem_we : out STD_LOGIC;
    ex_mem_size : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ex_mem_unsigned : out STD_LOGIC;
    ex_rd_we : out STD_LOGIC;
    ex_instr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ex_illegal_instr : out STD_LOGIC;
    ex_wb_sel : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_EX_RV32_IF_EX_id_ex_reg_0_0 : entity is "RV32_IF_EX_id_ex_reg_0_0,id_ex_reg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_EX_RV32_IF_EX_id_ex_reg_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_EX_RV32_IF_EX_id_ex_reg_0_0 : entity is "module_ref";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_RV32_IF_EX_id_ex_reg_0_0 : entity is "RV32_IF_EX_id_ex_reg_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_EX_RV32_IF_EX_id_ex_reg_0_0 : entity is "id_ex_reg,Vivado 2020.1";
end RV32_IF_EX_RV32_IF_EX_id_ex_reg_0_0;

architecture STRUCTURE of RV32_IF_EX_RV32_IF_EX_id_ex_reg_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.RV32_IF_EX_id_ex_reg
     port map (
      bubble => bubble,
      clk => clk,
      ex_alu_op(3 downto 0) => ex_alu_op(3 downto 0),
      ex_branch_en => ex_branch_en,
      ex_branch_funct3(2 downto 0) => ex_branch_funct3(2 downto 0),
      ex_illegal_instr => ex_illegal_instr,
      ex_imm(31 downto 0) => ex_imm(31 downto 0),
      ex_imm_u(31 downto 0) => ex_imm_u(31 downto 0),
      ex_instr(31 downto 0) => ex_instr(31 downto 0),
      ex_jal => ex_jal,
      ex_jalr => ex_jalr,
      ex_mem_re => ex_mem_re,
      ex_mem_size(1 downto 0) => ex_mem_size(1 downto 0),
      ex_mem_unsigned => ex_mem_unsigned,
      ex_mem_we => ex_mem_we,
      ex_op_a_sel(1 downto 0) => ex_op_a_sel(1 downto 0),
      ex_op_b_sel(1 downto 0) => ex_op_b_sel(1 downto 0),
      ex_pc(31 downto 0) => ex_pc(31 downto 0),
      ex_pc_plus4(31 downto 0) => ex_pc_plus4(31 downto 0),
      ex_pred_next_pc(31 downto 0) => ex_pred_next_pc(31 downto 0),
      ex_rd(4 downto 0) => ex_rd(4 downto 0),
      ex_rd_we => ex_rd_we,
      ex_rs1(4 downto 0) => ex_rs1(4 downto 0),
      ex_rs1_data(31 downto 0) => ex_rs1_data(31 downto 0),
      ex_rs2(4 downto 0) => ex_rs2(4 downto 0),
      ex_rs2_data(31 downto 0) => ex_rs2_data(31 downto 0),
      ex_valid => ex_valid,
      ex_wb_sel(2 downto 0) => ex_wb_sel(2 downto 0),
      id_alu_op(3 downto 0) => id_alu_op(3 downto 0),
      id_branch_en => id_branch_en,
      id_branch_funct3(2 downto 0) => id_branch_funct3(2 downto 0),
      id_illegal_instr => id_illegal_instr,
      id_imm(31 downto 0) => id_imm(31 downto 0),
      id_imm_u(31 downto 0) => id_imm_u(31 downto 0),
      id_instr(31 downto 0) => id_instr(31 downto 0),
      id_jal => id_jal,
      id_jalr => id_jalr,
      id_mem_re => id_mem_re,
      id_mem_size(1 downto 0) => id_mem_size(1 downto 0),
      id_mem_unsigned => id_mem_unsigned,
      id_mem_we => id_mem_we,
      id_op_a_sel(1 downto 0) => id_op_a_sel(1 downto 0),
      id_op_b_sel(1 downto 0) => id_op_b_sel(1 downto 0),
      id_pc(31 downto 0) => id_pc(31 downto 0),
      id_pc_plus4(31 downto 0) => id_pc_plus4(31 downto 0),
      id_pred_next_pc(31 downto 0) => id_pred_next_pc(31 downto 0),
      id_rd(4 downto 0) => id_rd(4 downto 0),
      id_rd_we => id_rd_we,
      id_rs1(4 downto 0) => id_rs1(4 downto 0),
      id_rs1_data(31 downto 0) => id_rs1_data(31 downto 0),
      id_rs2(4 downto 0) => id_rs2(4 downto 0),
      id_rs2_data(31 downto 0) => id_rs2_data(31 downto 0),
      id_valid => id_valid,
      id_wb_sel(2 downto 0) => id_wb_sel(2 downto 0),
      rst => rst,
      stall => stall
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_RV32_IF_EX_if_id_reg_0_0 is
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
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_EX_RV32_IF_EX_if_id_reg_0_0 : entity is "RV32_IF_EX_if_id_reg_0_0,if_id_reg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_EX_RV32_IF_EX_if_id_reg_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_EX_RV32_IF_EX_if_id_reg_0_0 : entity is "module_ref";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_RV32_IF_EX_if_id_reg_0_0 : entity is "RV32_IF_EX_if_id_reg_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_EX_RV32_IF_EX_if_id_reg_0_0 : entity is "if_id_reg,Vivado 2020.1";
end RV32_IF_EX_RV32_IF_EX_if_id_reg_0_0;

architecture STRUCTURE of RV32_IF_EX_RV32_IF_EX_if_id_reg_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.RV32_IF_EX_if_id_reg
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_RV32_IF_EX_imm_mux_0_0 is
  port (
    imm_sel : in STD_LOGIC_VECTOR ( 2 downto 0 );
    imm_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_s : in STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_u : in STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_j : in STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_EX_RV32_IF_EX_imm_mux_0_0 : entity is "RV32_IF_EX_imm_mux_0_0,imm_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_EX_RV32_IF_EX_imm_mux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_EX_RV32_IF_EX_imm_mux_0_0 : entity is "module_ref";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_RV32_IF_EX_imm_mux_0_0 : entity is "RV32_IF_EX_imm_mux_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_EX_RV32_IF_EX_imm_mux_0_0 : entity is "imm_mux,Vivado 2020.1";
end RV32_IF_EX_RV32_IF_EX_imm_mux_0_0;

architecture STRUCTURE of RV32_IF_EX_RV32_IF_EX_imm_mux_0_0 is
begin
inst: entity work.RV32_IF_EX_imm_mux
     port map (
      imm_b(31 downto 0) => imm_b(31 downto 0),
      imm_i(31 downto 0) => imm_i(31 downto 0),
      imm_j(31 downto 0) => imm_j(31 downto 0),
      imm_out(31 downto 0) => imm_out(31 downto 0),
      imm_s(31 downto 0) => imm_s(31 downto 0),
      imm_sel(2 downto 0) => imm_sel(2 downto 0),
      imm_u(31 downto 0) => imm_u(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_RV32_IF_EX_pc_unit_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    pc_en : in STD_LOGIC;
    pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_plus4 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_EX_RV32_IF_EX_pc_unit_0_0 : entity is "RV32_IF_EX_pc_unit_0_0,pc_unit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_EX_RV32_IF_EX_pc_unit_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_EX_RV32_IF_EX_pc_unit_0_0 : entity is "module_ref";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_RV32_IF_EX_pc_unit_0_0 : entity is "RV32_IF_EX_pc_unit_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_EX_RV32_IF_EX_pc_unit_0_0 : entity is "pc_unit,Vivado 2020.1";
end RV32_IF_EX_RV32_IF_EX_pc_unit_0_0;

architecture STRUCTURE of RV32_IF_EX_RV32_IF_EX_pc_unit_0_0 is
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
inst: entity work.RV32_IF_EX_pc_unit
     port map (
      clk => clk,
      pc(29 downto 0) => \^pc\(31 downto 2),
      pc_en => pc_en,
      pc_plus4(29 downto 0) => \^pc_plus4\(31 downto 2),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_RV32_IF_EX_regfile_0_0 is
  port (
    clk : in STD_LOGIC;
    rs1_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rs2_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rs1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rs2_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd_we : in STD_LOGIC;
    rd_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_EX_RV32_IF_EX_regfile_0_0 : entity is "RV32_IF_EX_regfile_0_0,regfile,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_EX_RV32_IF_EX_regfile_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_EX_RV32_IF_EX_regfile_0_0 : entity is "module_ref";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_RV32_IF_EX_regfile_0_0 : entity is "RV32_IF_EX_regfile_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_EX_RV32_IF_EX_regfile_0_0 : entity is "regfile,Vivado 2020.1";
end RV32_IF_EX_RV32_IF_EX_regfile_0_0;

architecture STRUCTURE of RV32_IF_EX_RV32_IF_EX_regfile_0_0 is
  signal \rs1_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rs1_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rs1_rdata[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rs2_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rs2_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rs2_rdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
begin
inst: entity work.RV32_IF_EX_regfile
     port map (
      clk => clk,
      \ex_rs1_data_reg[0]\ => \rs1_rdata[31]_INST_0_i_1_n_0\,
      \ex_rs1_data_reg[0]_0\ => \rs1_rdata[31]_INST_0_i_2_n_0\,
      \ex_rs1_data_reg[0]_1\ => \rs1_rdata[31]_INST_0_i_4_n_0\,
      \ex_rs2_data_reg[0]\ => \rs2_rdata[31]_INST_0_i_1_n_0\,
      \ex_rs2_data_reg[0]_0\ => \rs2_rdata[31]_INST_0_i_2_n_0\,
      \ex_rs2_data_reg[0]_1\ => \rs2_rdata[31]_INST_0_i_3_n_0\,
      rd_addr(4 downto 0) => rd_addr(4 downto 0),
      rd_wdata(31 downto 0) => rd_wdata(31 downto 0),
      rd_we => rd_we,
      rs1_addr(4 downto 0) => rs1_addr(4 downto 0),
      rs1_rdata(31 downto 0) => rs1_rdata(31 downto 0),
      rs2_addr(4 downto 0) => rs2_addr(4 downto 0),
      rs2_rdata(31 downto 0) => rs2_rdata(31 downto 0)
    );
\rs1_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rs1_addr(3),
      I1 => rs1_addr(4),
      I2 => rs1_addr(2),
      I3 => rs1_addr(0),
      I4 => rs1_addr(1),
      O => \rs1_rdata[31]_INST_0_i_1_n_0\
    );
\rs1_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rs1_addr(4),
      I1 => rd_addr(4),
      I2 => rs1_addr(3),
      I3 => rd_addr(3),
      I4 => rd_addr(2),
      I5 => rs1_addr(2),
      O => \rs1_rdata[31]_INST_0_i_2_n_0\
    );
\rs1_rdata[31]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rs1_addr(0),
      I2 => rd_addr(1),
      I3 => rs1_addr(1),
      O => \rs1_rdata[31]_INST_0_i_4_n_0\
    );
\rs2_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rs2_addr(3),
      I1 => rs2_addr(4),
      I2 => rs2_addr(2),
      I3 => rs2_addr(0),
      I4 => rs2_addr(1),
      O => \rs2_rdata[31]_INST_0_i_1_n_0\
    );
\rs2_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rs2_addr(4),
      I1 => rd_addr(4),
      I2 => rs2_addr(3),
      I3 => rd_addr(3),
      I4 => rd_addr(2),
      I5 => rs2_addr(2),
      O => \rs2_rdata[31]_INST_0_i_2_n_0\
    );
\rs2_rdata[31]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_addr(0),
      I1 => rs2_addr(0),
      I2 => rd_addr(1),
      I3 => rs2_addr(1),
      O => \rs2_rdata[31]_INST_0_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX_RV32_IF_EX_rom_memory_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    instr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_EX_RV32_IF_EX_rom_memory_0_0 : entity is "RV32_IF_EX_rom_memory_0_0,rom_memory,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_EX_RV32_IF_EX_rom_memory_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_EX_RV32_IF_EX_rom_memory_0_0 : entity is "module_ref";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32_IF_EX_RV32_IF_EX_rom_memory_0_0 : entity is "RV32_IF_EX_rom_memory_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_EX_RV32_IF_EX_rom_memory_0_0 : entity is "rom_memory,Vivado 2020.1";
end RV32_IF_EX_RV32_IF_EX_rom_memory_0_0;

architecture STRUCTURE of RV32_IF_EX_RV32_IF_EX_rom_memory_0_0 is
  signal \^instr\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
begin
  instr(31) <= \^instr\(11);
  instr(30) <= \^instr\(11);
  instr(29) <= \^instr\(11);
  instr(28) <= \^instr\(11);
  instr(27) <= \^instr\(11);
  instr(26) <= \^instr\(11);
  instr(25) <= \^instr\(11);
  instr(24 downto 20) <= \^instr\(11 downto 7);
  instr(19) <= \^instr\(11);
  instr(18) <= \^instr\(11);
  instr(17) <= \^instr\(11);
  instr(16) <= \^instr\(11);
  instr(15) <= \^instr\(11);
  instr(14) <= \^instr\(11);
  instr(13) <= \^instr\(11);
  instr(12) <= \^instr\(11);
  instr(11 downto 7) <= \^instr\(11 downto 7);
  instr(6) <= \^instr\(2);
  instr(5) <= \^instr\(2);
  instr(4) <= \^instr\(4);
  instr(3) <= \^instr\(2);
  instr(2) <= \^instr\(2);
  instr(1) <= \^instr\(0);
  instr(0) <= \^instr\(0);
inst: entity work.RV32_IF_EX_rom_memory
     port map (
      addr(10 downto 0) => addr(10 downto 0),
      clk => clk,
      en => en,
      instr(7 downto 3) => \^instr\(11 downto 7),
      instr(2) => \^instr\(2),
      instr(1) => \^instr\(4),
      instr(0) => \^instr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_EX is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RV32_IF_EX : entity is true;
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of RV32_IF_EX : entity is "RV32_IF_EX.hwdef";
end RV32_IF_EX;

architecture STRUCTURE of RV32_IF_EX is
  signal Net1 : STD_LOGIC;
  signal control_0_alu_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_0_branch_en : STD_LOGIC;
  signal control_0_branch_funct3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_0_imm_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_0_jal : STD_LOGIC;
  signal control_0_jalr : STD_LOGIC;
  signal control_0_mem_re : STD_LOGIC;
  signal control_0_mem_size : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_0_mem_unsigned : STD_LOGIC;
  signal control_0_mem_we : STD_LOGIC;
  signal control_0_op_a_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_0_op_b_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_0_rd_we : STD_LOGIC;
  signal control_0_wb_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal decoder_0_bit30 : STD_LOGIC;
  signal decoder_0_fmt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal decoder_0_funct3 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal decoder_0_funct7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal decoder_0_illegal_opcode : STD_LOGIC;
  signal decoder_0_imm_b : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal decoder_0_imm_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal decoder_0_imm_j : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal decoder_0_imm_s : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal decoder_0_imm_u : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal decoder_0_opcode : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal decoder_0_rd : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal decoder_0_rs1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal decoder_0_rs2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^id_instr_debug\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^id_pc_debug\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^id_pc_plus4_debug\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^if_instr_debug\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^if_pc_debug\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^if_pc_plus4_debug\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal imm_mux_0_imm_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pc_to_imem_addr_0_addr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal regfile_0_rs1_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal regfile_0_rs2_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sim_constant_1_dout : STD_LOGIC;
  signal sim_constant_2_dout : STD_LOGIC;
  signal NLW_decoder_0_rs1_used_UNCONNECTED : STD_LOGIC;
  signal NLW_decoder_0_rs2_used_UNCONNECTED : STD_LOGIC;
  signal NLW_id_ex_reg_0_ex_branch_en_UNCONNECTED : STD_LOGIC;
  signal NLW_id_ex_reg_0_ex_illegal_instr_UNCONNECTED : STD_LOGIC;
  signal NLW_id_ex_reg_0_ex_jal_UNCONNECTED : STD_LOGIC;
  signal NLW_id_ex_reg_0_ex_jalr_UNCONNECTED : STD_LOGIC;
  signal NLW_id_ex_reg_0_ex_mem_re_UNCONNECTED : STD_LOGIC;
  signal NLW_id_ex_reg_0_ex_mem_unsigned_UNCONNECTED : STD_LOGIC;
  signal NLW_id_ex_reg_0_ex_mem_we_UNCONNECTED : STD_LOGIC;
  signal NLW_id_ex_reg_0_ex_branch_funct3_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_id_ex_reg_0_ex_imm_u_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_id_ex_reg_0_ex_mem_size_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_id_ex_reg_0_ex_op_a_sel_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_id_ex_reg_0_ex_op_b_sel_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_id_ex_reg_0_ex_pred_next_pc_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_id_ex_reg_0_ex_wb_sel_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of control_0 : label is "RV32_IF_EX_control_0_0,control,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of control_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of control_0 : label is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of control_0 : label is "control,Vivado 2020.1";
  attribute CHECK_LICENSE_TYPE of decoder_0 : label is "RV32_IF_EX_decoder_0_0,decoder,{}";
  attribute DowngradeIPIdentifiedWarnings of decoder_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of decoder_0 : label is "module_ref";
  attribute X_CORE_INFO of decoder_0 : label is "decoder,Vivado 2020.1";
  attribute CHECK_LICENSE_TYPE of id_ex_reg_0 : label is "RV32_IF_EX_id_ex_reg_0_0,id_ex_reg,{}";
  attribute DowngradeIPIdentifiedWarnings of id_ex_reg_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of id_ex_reg_0 : label is "module_ref";
  attribute X_CORE_INFO of id_ex_reg_0 : label is "id_ex_reg,Vivado 2020.1";
  attribute CHECK_LICENSE_TYPE of if_id_reg_0 : label is "RV32_IF_EX_if_id_reg_0_0,if_id_reg,{}";
  attribute DowngradeIPIdentifiedWarnings of if_id_reg_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of if_id_reg_0 : label is "module_ref";
  attribute X_CORE_INFO of if_id_reg_0 : label is "if_id_reg,Vivado 2020.1";
  attribute CHECK_LICENSE_TYPE of imm_mux_0 : label is "RV32_IF_EX_imm_mux_0_0,imm_mux,{}";
  attribute DowngradeIPIdentifiedWarnings of imm_mux_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of imm_mux_0 : label is "module_ref";
  attribute X_CORE_INFO of imm_mux_0 : label is "imm_mux,Vivado 2020.1";
  attribute CHECK_LICENSE_TYPE of pc_to_imem_addr_0 : label is "RV32_IF_EX_pc_to_imem_addr_0_0,pc_to_imem_addr,{}";
  attribute DowngradeIPIdentifiedWarnings of pc_to_imem_addr_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of pc_to_imem_addr_0 : label is "module_ref";
  attribute X_CORE_INFO of pc_to_imem_addr_0 : label is "pc_to_imem_addr,Vivado 2020.1";
  attribute CHECK_LICENSE_TYPE of pc_unit_0 : label is "RV32_IF_EX_pc_unit_0_0,pc_unit,{}";
  attribute DowngradeIPIdentifiedWarnings of pc_unit_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of pc_unit_0 : label is "module_ref";
  attribute X_CORE_INFO of pc_unit_0 : label is "pc_unit,Vivado 2020.1";
  attribute CHECK_LICENSE_TYPE of regfile_0 : label is "RV32_IF_EX_regfile_0_0,regfile,{}";
  attribute DowngradeIPIdentifiedWarnings of regfile_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of regfile_0 : label is "module_ref";
  attribute X_CORE_INFO of regfile_0 : label is "regfile,Vivado 2020.1";
  attribute CHECK_LICENSE_TYPE of rom_memory_0 : label is "RV32_IF_EX_rom_memory_0_0,rom_memory,{}";
  attribute DowngradeIPIdentifiedWarnings of rom_memory_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of rom_memory_0 : label is "module_ref";
  attribute X_CORE_INFO of rom_memory_0 : label is "rom_memory,Vivado 2020.1";
  attribute CHECK_LICENSE_TYPE of sim_constant_0 : label is "RV32_IF_EX_sim_constant_0_0,sim_constant,{}";
  attribute DowngradeIPIdentifiedWarnings of sim_constant_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of sim_constant_0 : label is "module_ref";
  attribute X_CORE_INFO of sim_constant_0 : label is "sim_constant,Vivado 2020.1";
  attribute CHECK_LICENSE_TYPE of sim_constant_1 : label is "RV32_IF_EX_sim_constant_0_1,sim_constant,{}";
  attribute DowngradeIPIdentifiedWarnings of sim_constant_1 : label is "yes";
  attribute IP_DEFINITION_SOURCE of sim_constant_1 : label is "module_ref";
  attribute X_CORE_INFO of sim_constant_1 : label is "sim_constant,Vivado 2020.1";
  attribute CHECK_LICENSE_TYPE of sim_constant_2 : label is "RV32_IF_EX_sim_constant_1_0,sim_constant,{}";
  attribute DowngradeIPIdentifiedWarnings of sim_constant_2 : label is "yes";
  attribute IP_DEFINITION_SOURCE of sim_constant_2 : label is "module_ref";
  attribute X_CORE_INFO of sim_constant_2 : label is "sim_constant,Vivado 2020.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of if_pc_debug : signal is "xilinx.com:signal:data:1.0 DATA.IF_PC_DEBUG DATA";
  attribute X_INTERFACE_PARAMETER of if_pc_debug : signal is "XIL_INTERFACENAME DATA.IF_PC_DEBUG, LAYERED_METADATA undef";
begin
  id_instr_debug(31 downto 0) <= \^id_instr_debug\(31 downto 0);
  id_pc_debug(31 downto 0) <= \^id_pc_debug\(31 downto 0);
  id_pc_plus4_debug(31 downto 0) <= \^id_pc_plus4_debug\(31 downto 0);
  if_instr_debug(31 downto 0) <= \^if_instr_debug\(31 downto 0);
  if_pc_debug(31 downto 0) <= \^if_pc_debug\(31 downto 0);
  if_pc_plus4_debug(31 downto 0) <= \^if_pc_plus4_debug\(31 downto 0);
control_0: entity work.RV32_IF_EX_RV32_IF_EX_control_0_0
     port map (
      alu_op(3 downto 0) => control_0_alu_op(3 downto 0),
      bit30 => decoder_0_bit30,
      branch_en => control_0_branch_en,
      branch_funct3(2 downto 0) => control_0_branch_funct3(2 downto 0),
      fmt(2 downto 0) => decoder_0_fmt(2 downto 0),
      funct3(2 downto 0) => decoder_0_funct3(2 downto 0),
      funct7(6 downto 0) => decoder_0_funct7(6 downto 0),
      imm_sel(2 downto 0) => control_0_imm_sel(2 downto 0),
      jal => control_0_jal,
      jalr => control_0_jalr,
      mem_re => control_0_mem_re,
      mem_size(1 downto 0) => control_0_mem_size(1 downto 0),
      mem_unsigned => control_0_mem_unsigned,
      mem_we => control_0_mem_we,
      op_a_sel(1 downto 0) => control_0_op_a_sel(1 downto 0),
      op_b_sel(1 downto 0) => control_0_op_b_sel(1 downto 0),
      opcode(6 downto 0) => decoder_0_opcode(6 downto 0),
      rd_we => control_0_rd_we,
      wb_sel(2 downto 0) => control_0_wb_sel(2 downto 0)
    );
decoder_0: entity work.RV32_IF_EX_RV32_IF_EX_decoder_0_0
     port map (
      bit30 => decoder_0_bit30,
      fmt(2 downto 0) => decoder_0_fmt(2 downto 0),
      funct3(2 downto 0) => decoder_0_funct3(2 downto 0),
      funct7(6 downto 0) => decoder_0_funct7(6 downto 0),
      illegal_opcode => decoder_0_illegal_opcode,
      imm_b(31 downto 0) => decoder_0_imm_b(31 downto 0),
      imm_i(31 downto 0) => decoder_0_imm_i(31 downto 0),
      imm_j(31 downto 0) => decoder_0_imm_j(31 downto 0),
      imm_s(31 downto 0) => decoder_0_imm_s(31 downto 0),
      imm_u(31 downto 0) => decoder_0_imm_u(31 downto 0),
      instr(31 downto 0) => \^id_instr_debug\(31 downto 0),
      opcode(6 downto 0) => decoder_0_opcode(6 downto 0),
      rd(4 downto 0) => decoder_0_rd(4 downto 0),
      rs1(4 downto 0) => decoder_0_rs1(4 downto 0),
      rs1_used => NLW_decoder_0_rs1_used_UNCONNECTED,
      rs2(4 downto 0) => decoder_0_rs2(4 downto 0),
      rs2_used => NLW_decoder_0_rs2_used_UNCONNECTED
    );
id_ex_reg_0: entity work.RV32_IF_EX_RV32_IF_EX_id_ex_reg_0_0
     port map (
      bubble => sim_constant_1_dout,
      clk => clk,
      ex_alu_op(3 downto 0) => ex_alu_op(3 downto 0),
      ex_branch_en => NLW_id_ex_reg_0_ex_branch_en_UNCONNECTED,
      ex_branch_funct3(2 downto 0) => NLW_id_ex_reg_0_ex_branch_funct3_UNCONNECTED(2 downto 0),
      ex_illegal_instr => NLW_id_ex_reg_0_ex_illegal_instr_UNCONNECTED,
      ex_imm(31 downto 0) => ex_imm(31 downto 0),
      ex_imm_u(31 downto 0) => NLW_id_ex_reg_0_ex_imm_u_UNCONNECTED(31 downto 0),
      ex_instr(31 downto 0) => ex_instr(31 downto 0),
      ex_jal => NLW_id_ex_reg_0_ex_jal_UNCONNECTED,
      ex_jalr => NLW_id_ex_reg_0_ex_jalr_UNCONNECTED,
      ex_mem_re => NLW_id_ex_reg_0_ex_mem_re_UNCONNECTED,
      ex_mem_size(1 downto 0) => NLW_id_ex_reg_0_ex_mem_size_UNCONNECTED(1 downto 0),
      ex_mem_unsigned => NLW_id_ex_reg_0_ex_mem_unsigned_UNCONNECTED,
      ex_mem_we => NLW_id_ex_reg_0_ex_mem_we_UNCONNECTED,
      ex_op_a_sel(1 downto 0) => NLW_id_ex_reg_0_ex_op_a_sel_UNCONNECTED(1 downto 0),
      ex_op_b_sel(1 downto 0) => NLW_id_ex_reg_0_ex_op_b_sel_UNCONNECTED(1 downto 0),
      ex_pc(31 downto 0) => ex_pc(31 downto 0),
      ex_pc_plus4(31 downto 0) => ex_pc_plus4(31 downto 0),
      ex_pred_next_pc(31 downto 0) => NLW_id_ex_reg_0_ex_pred_next_pc_UNCONNECTED(31 downto 0),
      ex_rd(4 downto 0) => ex_rd(4 downto 0),
      ex_rd_we => ex_rd_we,
      ex_rs1(4 downto 0) => ex_rs1(4 downto 0),
      ex_rs1_data(31 downto 0) => ex_rs1_data(31 downto 0),
      ex_rs2(4 downto 0) => ex_rs2(4 downto 0),
      ex_rs2_data(31 downto 0) => ex_rs2_data(31 downto 0),
      ex_valid => ex_valid,
      ex_wb_sel(2 downto 0) => NLW_id_ex_reg_0_ex_wb_sel_UNCONNECTED(2 downto 0),
      id_alu_op(3 downto 0) => control_0_alu_op(3 downto 0),
      id_branch_en => control_0_branch_en,
      id_branch_funct3(2 downto 0) => control_0_branch_funct3(2 downto 0),
      id_illegal_instr => decoder_0_illegal_opcode,
      id_imm(31 downto 0) => imm_mux_0_imm_out(31 downto 0),
      id_imm_u(31 downto 0) => decoder_0_imm_u(31 downto 0),
      id_instr(31 downto 0) => \^id_instr_debug\(31 downto 0),
      id_jal => control_0_jal,
      id_jalr => control_0_jalr,
      id_mem_re => control_0_mem_re,
      id_mem_size(1 downto 0) => control_0_mem_size(1 downto 0),
      id_mem_unsigned => control_0_mem_unsigned,
      id_mem_we => control_0_mem_we,
      id_op_a_sel(1 downto 0) => control_0_op_a_sel(1 downto 0),
      id_op_b_sel(1 downto 0) => control_0_op_b_sel(1 downto 0),
      id_pc(31 downto 0) => \^id_pc_debug\(31 downto 0),
      id_pc_plus4(31 downto 0) => \^id_pc_plus4_debug\(31 downto 0),
      id_pred_next_pc(31 downto 0) => B"00000000000000000000000000000000",
      id_rd(4 downto 0) => decoder_0_rd(4 downto 0),
      id_rd_we => control_0_rd_we,
      id_rs1(4 downto 0) => decoder_0_rs1(4 downto 0),
      id_rs1_data(31 downto 0) => regfile_0_rs1_rdata(31 downto 0),
      id_rs2(4 downto 0) => decoder_0_rs2(4 downto 0),
      id_rs2_data(31 downto 0) => regfile_0_rs2_rdata(31 downto 0),
      id_valid => sim_constant_2_dout,
      id_wb_sel(2 downto 0) => control_0_wb_sel(2 downto 0),
      rst => rst,
      stall => sim_constant_1_dout
    );
if_id_reg_0: entity work.RV32_IF_EX_RV32_IF_EX_if_id_reg_0_0
     port map (
      clk => clk,
      enable => if_id_enable,
      flush => if_id_flush,
      id_instr(31 downto 0) => \^id_instr_debug\(31 downto 0),
      id_pc(31 downto 0) => \^id_pc_debug\(31 downto 0),
      id_pc_plus4(31 downto 0) => \^id_pc_plus4_debug\(31 downto 0),
      if_instr(31 downto 0) => \^if_instr_debug\(31 downto 0),
      if_pc(31 downto 0) => \^if_pc_debug\(31 downto 0),
      if_pc_plus4(31 downto 0) => \^if_pc_plus4_debug\(31 downto 0),
      rst => rst
    );
imm_mux_0: entity work.RV32_IF_EX_RV32_IF_EX_imm_mux_0_0
     port map (
      imm_b(31 downto 0) => decoder_0_imm_b(31 downto 0),
      imm_i(31 downto 0) => decoder_0_imm_i(31 downto 0),
      imm_j(31 downto 0) => decoder_0_imm_j(31 downto 0),
      imm_out(31 downto 0) => imm_mux_0_imm_out(31 downto 0),
      imm_s(31 downto 0) => decoder_0_imm_s(31 downto 0),
      imm_sel(2 downto 0) => control_0_imm_sel(2 downto 0),
      imm_u(31 downto 0) => decoder_0_imm_u(31 downto 0)
    );
pc_to_imem_addr_0: entity work.RV32_IF_EX_RV32_IF_EX_pc_to_imem_addr_0_0
     port map (
      addr(10 downto 0) => pc_to_imem_addr_0_addr(10 downto 0),
      pc(31 downto 0) => \^if_pc_debug\(31 downto 0)
    );
pc_unit_0: entity work.RV32_IF_EX_RV32_IF_EX_pc_unit_0_0
     port map (
      clk => clk,
      pc(31 downto 0) => \^if_pc_debug\(31 downto 0),
      pc_en => Net1,
      pc_plus4(31 downto 0) => \^if_pc_plus4_debug\(31 downto 0),
      rst => rst
    );
regfile_0: entity work.RV32_IF_EX_RV32_IF_EX_regfile_0_0
     port map (
      clk => clk,
      rd_addr(4 downto 0) => rd_addr(4 downto 0),
      rd_wdata(31 downto 0) => rd_wdata(31 downto 0),
      rd_we => rd_we,
      rs1_addr(4 downto 0) => decoder_0_rs1(4 downto 0),
      rs1_rdata(31 downto 0) => regfile_0_rs1_rdata(31 downto 0),
      rs2_addr(4 downto 0) => decoder_0_rs2(4 downto 0),
      rs2_rdata(31 downto 0) => regfile_0_rs2_rdata(31 downto 0)
    );
rom_memory_0: entity work.RV32_IF_EX_RV32_IF_EX_rom_memory_0_0
     port map (
      addr(10 downto 0) => pc_to_imem_addr_0_addr(10 downto 0),
      clk => clk,
      en => Net1,
      instr(31 downto 0) => \^if_instr_debug\(31 downto 0)
    );
sim_constant_0: entity work.RV32_IF_EX_RV32_IF_EX_sim_constant_0_0
     port map (
      dout(0) => Net1
    );
sim_constant_1: entity work.RV32_IF_EX_RV32_IF_EX_sim_constant_0_1
     port map (
      dout(0) => sim_constant_1_dout
    );
sim_constant_2: entity work.RV32_IF_EX_RV32_IF_EX_sim_constant_1_0
     port map (
      dout(0) => sim_constant_2_dout
    );
end STRUCTURE;
