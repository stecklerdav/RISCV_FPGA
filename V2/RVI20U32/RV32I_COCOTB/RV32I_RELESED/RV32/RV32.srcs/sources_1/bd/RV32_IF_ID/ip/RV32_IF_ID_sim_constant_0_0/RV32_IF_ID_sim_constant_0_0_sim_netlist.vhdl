-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri May 29 20:40:36 2026
-- Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/OLD/RV32I_RELESED/RV32/RV32.srcs/sources_1/bd/RV32_IF_ID/ip/RV32_IF_ID_sim_constant_0_0/RV32_IF_ID_sim_constant_0_0_sim_netlist.vhdl
-- Design      : RV32_IF_ID_sim_constant_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu5ev-sfvc784-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32_IF_ID_sim_constant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RV32_IF_ID_sim_constant_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32_IF_ID_sim_constant_0_0 : entity is "RV32_IF_ID_sim_constant_0_0,sim_constant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RV32_IF_ID_sim_constant_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RV32_IF_ID_sim_constant_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RV32_IF_ID_sim_constant_0_0 : entity is "sim_constant,Vivado 2020.1";
end RV32_IF_ID_sim_constant_0_0;

architecture STRUCTURE of RV32_IF_ID_sim_constant_0_0 is
  signal \<const1>\ : STD_LOGIC;
begin
  dout(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
