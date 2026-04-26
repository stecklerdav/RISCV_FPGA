vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_7
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_7
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/xlslice_v1_0_2
vlib activehdl/util_vector_logic_v2_0_1

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 activehdl/axi_vip_v1_1_7
vmap zynq_ultra_ps_e_vip_v1_0_7 activehdl/zynq_ultra_ps_e_vip_v1_0_7
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1

vlog -work xilinx_vip  -sv2k12 "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_pc_unit_0_0/sim/BASIC_pc_unit_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -sv2k12 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_7  -sv2k12 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_zynq_ultra_ps_e_0_0/sim/BASIC_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/BASIC/ip/BASIC_proc_sys_reset_0_0/sim/BASIC_proc_sys_reset_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_xlconstant_0_0/sim/BASIC_xlconstant_0_0.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_blk_mem_gen_0_0/sim/BASIC_blk_mem_gen_0_0.v" \
"../../../bd/BASIC/ip/BASIC_xlconstant_1_0/sim/BASIC_xlconstant_1_0.v" \
"../../../bd/BASIC/ip/BASIC_pc_to_imem_addr_0_0/sim/BASIC_pc_to_imem_addr_0_0.v" \
"../../../bd/BASIC/ip/BASIC_if_id_reg_0_0/sim/BASIC_if_id_reg_0_0.v" \
"../../../bd/BASIC/ip/BASIC_xlconstant_2_0/sim/BASIC_xlconstant_2_0.v" \
"../../../bd/BASIC/ip/BASIC_decoder_0_0/sim/BASIC_decoder_0_0.v" \
"../../../bd/BASIC/ip/BASIC_control_0_0/sim/BASIC_control_0_0.v" \
"../../../bd/BASIC/ip/BASIC_regfile_0_0/sim/BASIC_regfile_0_0.v" \
"../../../bd/BASIC/ip/BASIC_imm_mux_0_0/sim/BASIC_imm_mux_0_0.v" \
"../../../bd/BASIC/ip/BASIC_id_ex_reg_0_0/sim/BASIC_id_ex_reg_0_0.v" \
"../../../bd/BASIC/ip/BASIC_alu_0_0/sim/BASIC_alu_0_0.v" \
"../../../bd/BASIC/ip/BASIC_forwarding_0_0/sim/BASIC_forwarding_0_0.v" \
"../../../bd/BASIC/ip/BASIC_forward_mux_0_0/sim/BASIC_forward_mux_0_0.v" \
"../../../bd/BASIC/ip/BASIC_operand_b_mux_0_0/sim/BASIC_operand_b_mux_0_0.v" \
"../../../bd/BASIC/ip/BASIC_operand_a_mux_0_0/sim/BASIC_operand_a_mux_0_0.v" \
"../../../bd/BASIC/ip/BASIC_forward_mux_0_1/sim/BASIC_forward_mux_0_1.v" \
"../../../bd/BASIC/ip/BASIC_branch_0_0/sim/BASIC_branch_0_0.v" \
"../../../bd/BASIC/ip/BASIC_ex_mem_reg_1_0/sim/BASIC_ex_mem_reg_1_0.v" \
"../../../bd/BASIC/ip/BASIC_mem_stage_0_0/sim/BASIC_mem_stage_0_0.v" \
"../../../bd/BASIC/ip/BASIC_ram_data_1_0/sim/BASIC_ram_data_1_0.v" \
"../../../bd/BASIC/ip/BASIC_load_extender_0_0/sim/BASIC_load_extender_0_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_xlslice_0_0/sim/BASIC_xlslice_0_0.v" \
"../../../bd/BASIC/ip/BASIC_mem_wb_reg_0_0/sim/BASIC_mem_wb_reg_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_0_0/sim/BASIC_util_vector_logic_0_0.v" \
"../../../bd/BASIC/ip/BASIC_wb_mux_0_0/sim/BASIC_wb_mux_0_0.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_0_1/sim/BASIC_util_vector_logic_0_1.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_1_0/sim/BASIC_util_vector_logic_1_0.v" \
"../../../bd/BASIC/ip/BASIC_load_use_detection_0_0/sim/BASIC_load_use_detection_0_0.v" \
"../../../bd/BASIC/ip/BASIC_priority_branch_OR_l_0_0/sim/BASIC_priority_branch_OR_l_0_0.v" \
"../../../bd/BASIC/ip/BASIC_ila_0_0/sim/BASIC_ila_0_0.v" \
"../../../bd/BASIC/ip/BASIC_vio_0_0/sim/BASIC_vio_0_0.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_2_0/sim/BASIC_util_vector_logic_2_0.v" \
"../../../bd/BASIC/ip/BASIC_forward_mux_1_0/sim/BASIC_forward_mux_1_0.v" \
"../../../bd/BASIC/sim/BASIC.v" \

vlog -work xil_defaultlib \
"glbl.v"

