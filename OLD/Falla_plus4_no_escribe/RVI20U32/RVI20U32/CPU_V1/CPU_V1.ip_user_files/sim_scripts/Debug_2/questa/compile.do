vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/util_vector_logic_v2_0_1
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/xlslice_v1_0_2
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_7
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_7

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_1 questa_lib/msim/util_vector_logic_v2_0_1
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 questa_lib/msim/axi_vip_v1_1_7
vmap zynq_ultra_ps_e_vip_v1_0_7 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_7

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_forwarding_uni_0_0/sim/Debug_2_rv32i_forwarding_uni_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_branch_unit_wr_0_0/sim/Debug_2_rv32i_branch_unit_wr_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_alu_wrapper_0_0/sim/Debug_2_rv32i_alu_wrapper_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_operand_b_mux_0_0/sim/Debug_2_rv32i_operand_b_mux_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_ex_mem_reg_wra_0_0/sim/Debug_2_rv32i_ex_mem_reg_wra_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_operand_a_mux_0_0/sim/Debug_2_rv32i_operand_a_mux_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_forward_mux_wr_0_0/sim/Debug_2_rv32i_forward_mux_wr_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_forward_mux_wr_1_0/sim/Debug_2_rv32i_forward_mux_wr_1_0.v" \

vlog -work util_vector_logic_v2_0_1 -64 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Debug_2/ip/Debug_2_util_vector_logic_4_0/sim/Debug_2_util_vector_logic_4_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_imm_mux_wrapper_0_0/sim/Debug_2_rv32i_imm_mux_wrapper_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_regfile_wrapper_0_0/sim/Debug_2_rv32i_regfile_wrapper_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_id_ex_reg_wrap_0_0/sim/Debug_2_rv32i_id_ex_reg_wrap_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_control_full_w_0_0/sim/Debug_2_rv32i_control_full_w_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_decoder_wrapper_0_0/sim/Debug_2_rv32i_decoder_wrapper_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_pc_to_rom_addr_wrapp_0_1/sim/Debug_2_pc_to_rom_addr_wrapp_0_1.v" \

vlog -work xlconstant_v1_1_7 -64 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Debug_2/ip/Debug_2_xlconstant_1_1/sim/Debug_2_xlconstant_1_1.v" \

vlog -work blk_mem_gen_v8_4_4 -64 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Debug_2/ip/Debug_2_blk_mem_gen_0_1/sim/Debug_2_blk_mem_gen_0_1.v" \
"../../../bd/Debug_2/ip/Debug_2_pc_unit_wrapper_0_1/sim/Debug_2_pc_unit_wrapper_0_1.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_if_id_reg_wrap_0_1/sim/Debug_2_rv32i_if_id_reg_wrap_0_1.v" \

vlog -work xlslice_v1_0_2 -64 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Debug_2/ip/Debug_2_xlslice_0_0/sim/Debug_2_xlslice_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_ram_datav_wrap_0_0/sim/Debug_2_rv32i_ram_datav_wrap_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_load_extender_0_0/sim/Debug_2_rv32i_load_extender_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_xlconstant_1_2/sim/Debug_2_xlconstant_1_2.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_mem_stage_wrap_0_0/sim/Debug_2_rv32i_mem_stage_wrap_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_mem_wb_reg_wra_0_0/sim/Debug_2_rv32i_mem_wb_reg_wra_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_xlconstant_0_1/sim/Debug_2_xlconstant_0_1.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Debug_2/ip/Debug_2_proc_sys_reset_0_1/sim/Debug_2_proc_sys_reset_0_1.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Debug_2/ip/Debug_2_util_vector_logic_0_1/sim/Debug_2_util_vector_logic_0_1.v" \
"../../../bd/Debug_2/ip/Debug_2_rv32i_wb_mux_wrapper_0_0/sim/Debug_2_rv32i_wb_mux_wrapper_0_0.v" \
"../../../bd/Debug_2/ip/Debug_2_util_vector_logic_2_0/sim/Debug_2_util_vector_logic_2_0.v" \
"../../../bd/Debug_2/ip/Debug_2_vio_0_1/sim/Debug_2_vio_0_1.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7 -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_7 -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Debug_2/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Debug_2/ip/Debug_2_zynq_ultra_ps_e_1_1/sim/Debug_2_zynq_ultra_ps_e_1_1_vip_wrapper.v" \
"../../../bd/Debug_2/sim/Debug_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

