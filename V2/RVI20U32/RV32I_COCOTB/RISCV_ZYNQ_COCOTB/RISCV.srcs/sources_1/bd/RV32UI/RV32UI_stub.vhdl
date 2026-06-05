-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri Jun  5 19:07:18 2026
-- Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RISCV_ZYNQ_COCOTB/RISCV.srcs/sources_1/bd/RV32UI/RV32UI_stub.vhdl
-- Design      : RV32UI
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu5ev-sfvc784-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RV32UI is
  Port ( 
    SW1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_out_0 : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end RV32UI;

architecture stub of RV32UI is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SW1[0:0],gpio_out_0[1:0]";
begin
end;
