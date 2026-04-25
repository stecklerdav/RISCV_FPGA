#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/media/steckler/xilinx_linux/vitis_2020.1/Vitis/2020.1/bin:/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/ids_lite/ISE/bin/lin64:/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/bin
else
  PATH=/media/steckler/xilinx_linux/vitis_2020.1/Vitis/2020.1/bin:/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/ids_lite/ISE/bin/lin64:/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/media/steckler/xilinx_linux/SDR_custom/SDR/Software/SDR_Firmware/CPU_N1_ONECYCLE_RISCV_2020_1_MYIR_BRAM_DP/CPU_V1/CPU_V1.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log Section_debug_wrapper.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source Section_debug_wrapper.tcl
