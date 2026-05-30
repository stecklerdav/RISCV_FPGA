vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/RV32_IF_ID/ip/RV32_IF_ID_pc_to_imem_addr_0_0/sim/RV32_IF_ID_pc_to_imem_addr_0_0.v" \
"../../../bd/RV32_IF_ID/ip/RV32_IF_ID_pc_unit_0_0/sim/RV32_IF_ID_pc_unit_0_0.v" \
"../../../bd/RV32_IF_ID/ip/RV32_IF_ID_rom_memory_0_0/sim/RV32_IF_ID_rom_memory_0_0.v" \
"../../../bd/RV32_IF_ID/ip/RV32_IF_ID_sim_constant_0_0/sim/RV32_IF_ID_sim_constant_0_0.v" \
"../../../bd/RV32_IF_ID/ip/RV32_IF_ID_if_id_reg_0_0/sim/RV32_IF_ID_if_id_reg_0_0.v" \
"../../../bd/RV32_IF_ID/sim/RV32_IF_ID.v" \


vlog -work xil_defaultlib \
"glbl.v"

