vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/RV32_IF_EX/ip/RV32_IF_EX_if_id_reg_0_0/sim/RV32_IF_EX_if_id_reg_0_0.v" \
"../../../bd/RV32_IF_EX/ip/RV32_IF_EX_pc_to_imem_addr_0_0/sim/RV32_IF_EX_pc_to_imem_addr_0_0.v" \
"../../../bd/RV32_IF_EX/ip/RV32_IF_EX_pc_unit_0_0/sim/RV32_IF_EX_pc_unit_0_0.v" \
"../../../bd/RV32_IF_EX/ip/RV32_IF_EX_rom_memory_0_0/sim/RV32_IF_EX_rom_memory_0_0.v" \
"../../../bd/RV32_IF_EX/ip/RV32_IF_EX_sim_constant_0_0/sim/RV32_IF_EX_sim_constant_0_0.v" \
"../../../bd/RV32_IF_EX/ip/RV32_IF_EX_control_0_0/sim/RV32_IF_EX_control_0_0.v" \
"../../../bd/RV32_IF_EX/ip/RV32_IF_EX_decoder_0_0/sim/RV32_IF_EX_decoder_0_0.v" \
"../../../bd/RV32_IF_EX/ip/RV32_IF_EX_id_ex_reg_0_0/sim/RV32_IF_EX_id_ex_reg_0_0.v" \
"../../../bd/RV32_IF_EX/ip/RV32_IF_EX_imm_mux_0_0/sim/RV32_IF_EX_imm_mux_0_0.v" \
"../../../bd/RV32_IF_EX/ip/RV32_IF_EX_regfile_0_0/sim/RV32_IF_EX_regfile_0_0.v" \
"../../../bd/RV32_IF_EX/ip/RV32_IF_EX_sim_constant_0_1/sim/RV32_IF_EX_sim_constant_0_1.v" \
"../../../bd/RV32_IF_EX/ip/RV32_IF_EX_sim_constant_1_0/sim/RV32_IF_EX_sim_constant_1_0.v" \
"../../../bd/RV32_IF_EX/sim/RV32_IF_EX.v" \


vlog -work xil_defaultlib \
"glbl.v"

