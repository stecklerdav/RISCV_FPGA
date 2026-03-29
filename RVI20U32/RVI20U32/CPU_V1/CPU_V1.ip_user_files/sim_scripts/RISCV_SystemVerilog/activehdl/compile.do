vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/util_vector_logic_v2_0_1
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/xlslice_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_7
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_7

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 activehdl/axi_vip_v1_1_7
vmap zynq_ultra_ps_e_vip_v1_0_7 activehdl/zynq_ultra_ps_e_vip_v1_0_7

vlog -work xilinx_vip  -sv2k12 "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_pc_unit_wrapper_0_0/sim/RISCV_SystemVerilog_pc_unit_wrapper_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_pc_to_rom_addr_wrapp_0_0/sim/RISCV_SystemVerilog_pc_to_rom_addr_wrapp_0_0.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_blk_mem_gen_0_0/sim/RISCV_SystemVerilog_blk_mem_gen_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_if_id_reg_wrap_0_0/sim/RISCV_SystemVerilog_rv32i_if_id_reg_wrap_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_util_vector_logic_0_0/sim/RISCV_SystemVerilog_util_vector_logic_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_decoder_wrapper_0_0/sim/RISCV_SystemVerilog_rv32i_decoder_wrapper_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_control_full_w_0_3/sim/RISCV_SystemVerilog_rv32i_control_full_w_0_3.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_imm_mux_wrapper_0_0/sim/RISCV_SystemVerilog_rv32i_imm_mux_wrapper_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_regfile_wrapper_0_0/sim/RISCV_SystemVerilog_rv32i_regfile_wrapper_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_id_ex_reg_wrap_0_0/sim/RISCV_SystemVerilog_rv32i_id_ex_reg_wrap_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_operand_a_mux_0_0/sim/RISCV_SystemVerilog_rv32i_operand_a_mux_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_operand_b_mux_0_0/sim/RISCV_SystemVerilog_rv32i_operand_b_mux_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_alu_wrapper_0_0/sim/RISCV_SystemVerilog_rv32i_alu_wrapper_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_branch_unit_wr_0_0/sim/RISCV_SystemVerilog_rv32i_branch_unit_wr_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_ex_mem_reg_wra_0_0/sim/RISCV_SystemVerilog_rv32i_ex_mem_reg_wra_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_xlconstant_0_0/sim/RISCV_SystemVerilog_xlconstant_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_mem_stage_wrap_0_0/sim/RISCV_SystemVerilog_rv32i_mem_stage_wrap_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_ram_datav_wrap_0_0/sim/RISCV_SystemVerilog_rv32i_ram_datav_wrap_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_load_extender_0_0/sim/RISCV_SystemVerilog_rv32i_load_extender_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_mem_wb_reg_wra_0_0/sim/RISCV_SystemVerilog_rv32i_mem_wb_reg_wra_0_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_xlslice_0_2/sim/RISCV_SystemVerilog_xlslice_0_2.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_wb_mux_wrapper_0_0/sim/RISCV_SystemVerilog_rv32i_wb_mux_wrapper_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_xlconstant_0_1/sim/RISCV_SystemVerilog_xlconstant_0_1.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_proc_sys_reset_0_0/sim/RISCV_SystemVerilog_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_vio_0_0/sim/RISCV_SystemVerilog_vio_0_0.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_util_vector_logic_0_1/sim/RISCV_SystemVerilog_util_vector_logic_0_1.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -sv2k12 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_7  -sv2k12 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vivado_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_zynq_ultra_ps_e_1_0/sim/RISCV_SystemVerilog_zynq_ultra_ps_e_1_0_vip_wrapper.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_xlconstant_0_2/sim/RISCV_SystemVerilog_xlconstant_0_2.v" \
"../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_latency_align_0_0/sim/RISCV_SystemVerilog_latency_align_0_0.v" \
"../../../bd/RISCV_SystemVerilog/sim/RISCV_SystemVerilog.v" \

vlog -work xil_defaultlib \
"glbl.v"

