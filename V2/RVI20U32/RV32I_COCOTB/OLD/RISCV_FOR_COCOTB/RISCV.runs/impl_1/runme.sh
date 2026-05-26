#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/media/steckler/xilinx_linux/vivado_2020.1/Vitis/2020.1/bin:/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/ids_lite/ISE/bin/lin64:/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/bin
else
  PATH=/media/steckler/xilinx_linux/vivado_2020.1/Vitis/2020.1/bin:/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/ids_lite/ISE/bin/lin64:/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/OLD/RISCV_FOR_COCOTB/RISCV.runs/impl_1'
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

# pre-commands:
/bin/touch .write_bitstream.begin.rst
EAStep vivado -log BASIC_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source BASIC_wrapper.tcl -notrace


