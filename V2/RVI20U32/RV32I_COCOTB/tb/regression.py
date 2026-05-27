import os
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles


@cocotb.test()
async def regression(dut):

    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    dut.rst.value = 1
    await ClockCycles(dut.clk, 10)
    dut.rst.value = 0

    dut._log.info("===== IF/ID VALID TRACE =====")

    for cycle in range(50):
        await ClockCycles(dut.clk, 1)

        try:
            flush = int(dut.BASIC_i.flush_1.value)
            hold = int(dut.BASIC_i.hold_1.value)
            kill = int(dut.BASIC_i.if_id_reg_0.kill_cnt.value)
            valid_align = int(dut.BASIC_i.if_id_reg_0.valid_align.value)
            reg_valid = int(dut.BASIC_i.if_id_reg_0.reg_valid.value)
            id_valid = int(dut.BASIC_i.RV32I_IF_id_valid_out.value)
            pc = int(dut.BASIC_i.pc_unit_0.pc.value)
            instr = int(dut.BASIC_i.RV32I_IF_id_instr_out.value)

            dut._log.info(
                f"CYC={cycle:03d} "
                f"PC=0x{pc:08X} "
                f"INSTR=0x{instr:08X} "
                f"flush={flush} "
                f"hold={hold} "
                f"kill_cnt={kill} "
                f"valid_align={valid_align} "
                f"reg_valid={reg_valid} "
                f"id_valid={id_valid}"
            )

        except Exception as e:
            dut._log.info(f"trace error: {e}")

    await ClockCycles(dut.clk, 350)

    expected = int(os.getenv("EXPECTED_SIGNATURE", "0xCAFE0001"), 16)

    b0 = int(dut.BASIC_i.ram_data_1.mem0[0].value)
    b1 = int(dut.BASIC_i.ram_data_1.mem1[0].value)
    b2 = int(dut.BASIC_i.ram_data_1.mem2[0].value)
    b3 = int(dut.BASIC_i.ram_data_1.mem3[0].value)

    sig = (b3 << 24) | (b2 << 16) | (b1 << 8) | b0

    dut._log.info("===== RAM[0] BYTES =====")
    dut._log.info(f"mem0 = 0x{b0:02X}")
    dut._log.info(f"mem1 = 0x{b1:02X}")
    dut._log.info(f"mem2 = 0x{b2:02X}")
    dut._log.info(f"mem3 = 0x{b3:02X}")
    dut._log.info(f"[EXPECTED] 0x{expected:08X}")
    dut._log.info(f"[SIGNATURE] 0x{sig:08X}")

    dut._log.info("===== REGFILE =====")

    for i in range(8):
        try:
            val = int(dut.BASIC_i.regfile_0.regs[i].value)
            dut._log.info(f"x{i} = 0x{val:08X}")
        except Exception as e:
            dut._log.info(f"x{i} read error: {e}")

    dut._log.info("===== ROM FIRST WORDS =====")

    for i in range(8):
        try:
            instr = int(dut.BASIC_i.rom_memory_0.rom[i].value)
            dut._log.info(f"ROM[{i}] = 0x{instr:08X}")
        except Exception as e:
            dut._log.info(f"ROM read error: {e}")

    dut._log.info("===== CORE DEBUG =====")

    core_signals = [
        "pc_unit_0_pc",
        "rom_memory_0_dout",
        "RV32I_IF_id_instr_out",
        "RV32I_IF_id_pc_out",
        "RV32I_IF_id_valid_out",
        "flush_1",
        "hold_1",
        "bubble_1",
    ]

    for s in core_signals:
        try:
            val = getattr(dut.BASIC_i, s).value
            dut._log.info(f"{s} = {val}")
        except Exception as e:
            dut._log.info(f"{s} read error: {e}")

    dut._log.info("===== DECODE / CONTROL / WB DEBUG =====")

    signals = [
        "decoder_0_opcode",
        "decoder_0_funct3",
        "decoder_0_rd",

        "control_0_rd_we",
        "control_0_wb_sel",
        "control_0_alu_op",

        "ex_rd_we_1",
        "ex_mem_reg_1_mem_rd_we",
        "mem_wb_reg_0_wb_rd_we",

        "mem_stage_0_mem_out_rd",
        "mem_stage_0_mem_out_data",
        "mem_stage_0_mem_out_alu_result",

        "csr_regfile_wb_mux_0_final_we",
        "csr_regfile_wb_mux_0_final_rd",
        "csr_regfile_wb_mux_0_final_wdata",

        "Core_RV32I_regfile_we",
        "Core_RV32I_wb_rd",
        "Core_RV32I_rd_wdata1",

        "ex_mem_reg_1_mem_valid",
        "ex_mem_reg_1_mem_rd",
        "ex_mem_reg_1_mem_rd_we",
        "ex_mem_reg_1_mem_mem_re",
        "ex_mem_reg_1_mem_mem_we",
        "ex_mem_reg_1_mem_alu_result",

        "mem_stage_0_mem_out_valid",
        "mem_stage_0_mem_out_rd",
        "mem_stage_0_mem_out_rd_we",
        "mem_stage_0_mem_out_wb_sel",
        "mem_stage_0_mem_out_alu_result",
        "mem_stage_0_mem_out_data",

        "dmem_ready_1",
        "dmem_req_ready_1",
        "mem_req_valid_1",
        "MMIO_ram_valid",
    ]

    for s in signals:
        try:
            val = getattr(dut.BASIC_i, s).value
            dut._log.info(f"{s} = {val}")
        except Exception as e:
            dut._log.info(f"{s} read error: {e}")

    assert sig == expected, (
        f"Signature mismatch "
        f"expected=0x{expected:08X} "
        f"got=0x{sig:08X}"
    )
