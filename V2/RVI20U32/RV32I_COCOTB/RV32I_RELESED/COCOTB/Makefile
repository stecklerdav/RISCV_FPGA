SIM ?= icarus
TOPLEVEL_LANG = verilog

PWD := $(shell pwd)

COCOTB_TOPLEVEL = RV32_IF_EX_wrapper
COCOTB_TEST_MODULES = regression

export PYTHONPATH := $(PWD)/tb

VERILOG_SOURCES = \
	$(PWD)/rtl/core/RV32_IF_EX_wrapper.v \
	$(PWD)/rtl/core/RV32_IF_EX.v \
	$(PWD)/rtl/core/if_id_reg.v \
	$(PWD)/rtl/core/pc_unit.v \
	$(PWD)/rtl/core/pc_to_imem_addr.v \
	$(PWD)/rtl/core/rom_memory.v \
	$(PWD)/rtl/core/sim_constant.v \
	$(PWD)/rtl/core/decoder.v \
	$(PWD)/rtl/core/control.v \
	$(PWD)/rtl/core/id_ex_reg.v \
	$(PWD)/rtl/core/imm_mux.v \
	$(PWD)/rtl/core/regfile.v

include $(shell cocotb-config --makefiles)/Makefile.sim
