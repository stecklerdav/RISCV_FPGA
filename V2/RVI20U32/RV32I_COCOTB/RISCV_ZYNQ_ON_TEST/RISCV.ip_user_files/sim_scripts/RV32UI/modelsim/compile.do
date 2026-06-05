vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/util_vector_logic_v2_0_1
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_7
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_7

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 modelsim_lib/msim/axi_vip_v1_1_7
vmap zynq_ultra_ps_e_vip_v1_0_7 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_7

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RV32UI/ip/RV32UI_xlslice_2bit_0_0/sim/RV32UI_xlslice_2bit_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_xlconcat_8_0_0/sim/RV32UI_xlconcat_8_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_uart_0_0/sim/RV32UI_uart_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_timer_0_0/sim/RV32UI_timer_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_regfile_we_gen_0_0/sim/RV32UI_regfile_we_gen_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_mem_wb_reg_0_0/sim/RV32UI_mem_wb_reg_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_constant_zero_0_0/sim/RV32UI_constant_zero_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_mem_stage_0_0/sim/RV32UI_mem_stage_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_alu_0_0/sim/RV32UI_alu_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_operand_b_mux_0_0/sim/RV32UI_operand_b_mux_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_operand_a_mux_0_0/sim/RV32UI_operand_a_mux_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_branch_0_0/sim/RV32UI_branch_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_ex_mem_reg_0/sim/RV32UI_ex_mem_reg_0.v" \
"../../../bd/RV32UI/ip/RV32UI_util_vector_and_0_0/sim/RV32UI_util_vector_and_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_util_vector_and_1_0/sim/RV32UI_util_vector_and_1_0.v" \
"../../../bd/RV32UI/ip/RV32UI_forward_mux_0_0/sim/RV32UI_forward_mux_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_forward_mux_1_0/sim/RV32UI_forward_mux_1_0.v" \
"../../../bd/RV32UI/ip/RV32UI_forward_mux_2_0/sim/RV32UI_forward_mux_2_0.v" \
"../../../bd/RV32UI/ip/RV32UI_forwarding_0_0/sim/RV32UI_forwarding_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_constant_zero_0_1/sim/RV32UI_constant_zero_0_1.v" \
"../../../bd/RV32UI/ip/RV32UI_wb_mux_0_0/sim/RV32UI_wb_mux_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_imm_mux_0_0/sim/RV32UI_imm_mux_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_decoder_0_0/sim/RV32UI_decoder_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_control_0_0/sim/RV32UI_control_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_id_ex_reg_0/sim/RV32UI_id_ex_reg_0.v" \
"../../../bd/RV32UI/ip/RV32UI_regfile_0_0/sim/RV32UI_regfile_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_branch_predictor_btb_0_0/sim/RV32UI_branch_predictor_btb_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_pc_to_imem_addr_0_0/sim/RV32UI_pc_to_imem_addr_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_util_vector_and_1_1/sim/RV32UI_util_vector_and_1_1.v" \
"../../../bd/RV32UI/ip/RV32UI_util_vector_or_1_0/sim/RV32UI_util_vector_or_1_0.v" \
"../../../bd/RV32UI/ip/RV32UI_util_vector_not_1_0/sim/RV32UI_util_vector_not_1_0.v" \
"../../../bd/RV32UI/ip/RV32UI_util_vector_and_0_1/sim/RV32UI_util_vector_and_0_1.v" \
"../../../bd/RV32UI/ip/RV32UI_util_vector_not_0_0/sim/RV32UI_util_vector_not_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_util_vector_or_0_0/sim/RV32UI_util_vector_or_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_constant_one_0_0/sim/RV32UI_constant_one_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_rom_memory_0_0/sim/RV32UI_rom_memory_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_pc_unit_0_0/sim/RV32UI_pc_unit_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_if_id_reg_0_0/sim/RV32UI_if_id_reg_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_load_use_detection_0_0/sim/RV32UI_load_use_detection_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_priority_branch_OR_l_0_0/sim/RV32UI_priority_branch_OR_l_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_mem_bus_registered_0_0/sim/RV32UI_mem_bus_registered_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_csr_access_unit_0_0/sim/RV32UI_csr_access_unit_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_privileged_pc_redire_0_0/sim/RV32UI_privileged_pc_redire_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_system_decoder_0_0/sim/RV32UI_system_decoder_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_trap_controller_0_0/sim/RV32UI_trap_controller_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_exception_mux_0_0/sim/RV32UI_exception_mux_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_mem_exception_merge_0_0/sim/RV32UI_mem_exception_merge_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_util_vector_and_0_2/sim/RV32UI_util_vector_and_0_2.v" \
"../../../bd/RV32UI/ip/RV32UI_util_vector_not_0_1/sim/RV32UI_util_vector_not_0_1.v" \
"../../../bd/RV32UI/ip/RV32UI_csr_file_0_0/sim/RV32UI_csr_file_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_csr_use_detection_0_0/sim/RV32UI_csr_use_detection_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_csr_regfile_wb_mux_0_0/sim/RV32UI_csr_regfile_wb_mux_0_0.v" \
"../../../bd/RV32UI/ip/RV32UI_ram_data_1_0/sim/RV32UI_ram_data_1_0.v" \
"../../../bd/RV32UI/ip/RV32UI_gpio_0_0/sim/RV32UI_gpio_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/RV32UI/ip/RV32UI_proc_sys_reset_0_0/sim/RV32UI_proc_sys_reset_0_0.vhd" \

vlog -work util_vector_logic_v2_0_1 -64 -incr "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RV32UI/ip/RV32UI_util_vector_logic_2_0/sim/RV32UI_util_vector_logic_2_0.v" \
"../../../bd/RV32UI/ip/RV32UI_vio_0_0/sim/RV32UI_vio_0_0.v" \

vlog -work xlconstant_v1_1_7 -64 -incr "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RV32UI/ip/RV32UI_xlconstant_0_0/sim/RV32UI_xlconstant_0_0.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7 -64 -incr -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_7 -64 -incr -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32UI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RV32UI/ip/RV32UI_zynq_ultra_ps_e_0_0/sim/RV32UI_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/RV32UI/ip/RV32UI_util_vector_logic_2_1/sim/RV32UI_util_vector_logic_2_1.v" \
"../../../bd/RV32UI/sim/RV32UI.v" \

vlog -work xil_defaultlib \
"glbl.v"

