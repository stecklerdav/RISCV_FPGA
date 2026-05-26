SIM ?= icarus
TOPLEVEL_LANG = verilog

TOPLEVEL = BASIC_wrapper
COCOTB_TEST_MODULES = test_gpio


export PYTHONPATH := $(PWD)/tb
COCOTB_TEST_MODULES = test_gpio

PWD := $(shell pwd)

VERILOG_SOURCES = \
	$(PWD)/rtl/core/BASIC_wrapper.v \
	$(PWD)/rtl/core/BASIC.v \
	$(PWD)/rtl/core/alu.v \
	$(PWD)/rtl/core/branch.v \
	$(PWD)/rtl/core/branch_predictor_btb_bht.v \
	$(PWD)/rtl/core/control.v \
	$(PWD)/rtl/core/csr_access_unit.v \
	$(PWD)/rtl/core/csr_file.v \
	$(PWD)/rtl/core/csr_regfile_wb_mux.v \
	$(PWD)/rtl/core/decoder.v \
	$(PWD)/rtl/core/exception_mux.v \
	$(PWD)/rtl/core/ex_mem_reg.v \
	$(PWD)/rtl/core/forwarding.v \
	$(PWD)/rtl/core/forward_mux.v \
	$(PWD)/rtl/core/gpio.v \
	$(PWD)/rtl/core/id_ex_reg.v \
	$(PWD)/rtl/core/if_id_reg.v \
	$(PWD)/rtl/core/imm_mux.v \
	$(PWD)/rtl/core/load_use_detection.v \
	$(PWD)/rtl/core/mem_bus_registered.v \
	$(PWD)/rtl/core/mem_exception_merge.v \
	$(PWD)/rtl/core/mem_stage.v \
	$(PWD)/rtl/core/mem_wb_reg.v \
	$(PWD)/rtl/core/operand_a_mux.v \
	$(PWD)/rtl/core/operand_b_mux.v \
	$(PWD)/rtl/core/pc_to_imem_addr.v \
	$(PWD)/rtl/core/pc_unit.v \
	$(PWD)/rtl/core/priority_branch_OR_load_use.v \
	$(PWD)/rtl/core/privileged_pc_redirect_mux.v \
	$(PWD)/rtl/core/ram_data.v \
	$(PWD)/rtl/core/regfile.v \
	$(PWD)/rtl/core/regfile_we_gen.v \
	$(PWD)/rtl/core/rom_memory.v \
	$(PWD)/rtl/core/sim_constant.v \
	$(PWD)/rtl/core/system_decoder.v \
	$(PWD)/rtl/core/timer.v \
	$(PWD)/rtl/core/trap_controller.v \
	$(PWD)/rtl/core/uart_tx.v \
	$(PWD)/rtl/core/util_vector_and.v \
	$(PWD)/rtl/core/util_vector_not.v \
	$(PWD)/rtl/core/util_vector_or.v \
	$(PWD)/rtl/core/wb_mux.v \
	$(PWD)/rtl/core/xlconcat_8.v \
	$(PWD)/rtl/core/xlslice_2bit.v

include $(shell cocotb-config --makefiles)/Makefile.sim
