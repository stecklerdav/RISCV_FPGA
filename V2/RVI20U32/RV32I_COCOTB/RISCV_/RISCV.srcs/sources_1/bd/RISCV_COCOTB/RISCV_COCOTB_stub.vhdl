-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sun May 31 13:06:53 2026
-- Host        : steckler-Default-string running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RISCV_/RISCV.srcs/sources_1/bd/RISCV_COCOTB/RISCV_COCOTB_stub.vhdl
-- Design      : RISCV_COCOTB
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu5ev-sfvc784-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RISCV_COCOTB is
  Port ( 
    clk : in STD_LOGIC;
    dmem_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_be : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dmem_valid : out STD_LOGIC;
    dmem_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_we : out STD_LOGIC;
    ex_rs2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ex_store_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    forward_store : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_dir_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    id_instr_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    id_pc_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    id_valid_out : out STD_LOGIC;
    mem_req_ready : out STD_LOGIC;
    mem_rsp_valid : out STD_LOGIC;
    mem_store_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_debug_last_predict_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_debug_last_priv_redirect_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_debug_last_redirect_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_debug_predict_pulse_0 : out STD_LOGIC;
    pc_debug_priv_redirect_pulse_0 : out STD_LOGIC;
    pc_debug_redirect_pulse_0 : out STD_LOGIC;
    priv_redirect_target_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    priv_redirect_valid_0 : in STD_LOGIC;
    rd_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ready : out STD_LOGIC;
    ready_1 : out STD_LOGIC;
    ready_2 : out STD_LOGIC;
    ready_3 : out STD_LOGIC;
    regfile_we : out STD_LOGIC;
    rst : in STD_LOGIC;
    timer_ready : in STD_LOGIC;
    tx : out STD_LOGIC;
    wb_rd : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wb_rd_we : out STD_LOGIC;
    wb_valid : out STD_LOGIC
  );

end RISCV_COCOTB;

architecture stub of RISCV_COCOTB is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,dmem_addr[31:0],dmem_be[3:0],dmem_valid,dmem_wdata[31:0],dmem_we,ex_rs2[4:0],ex_store_data[31:0],forward_store[1:0],gpio_dir_0[7:0],gpio_in[7:0],gpio_out[7:0],id_instr_out[31:0],id_pc_out[31:0],id_valid_out,mem_req_ready,mem_rsp_valid,mem_store_data[31:0],pc_debug_last_predict_0[31:0],pc_debug_last_priv_redirect_0[31:0],pc_debug_last_redirect_0[31:0],pc_debug_predict_pulse_0,pc_debug_priv_redirect_pulse_0,pc_debug_redirect_pulse_0,priv_redirect_target_0[31:0],priv_redirect_valid_0,rd_wdata[31:0],rdata[31:0],ready,ready_1,ready_2,ready_3,regfile_we,rst,timer_ready,tx,wb_rd[4:0],wb_rd_we,wb_valid";
begin
end;
