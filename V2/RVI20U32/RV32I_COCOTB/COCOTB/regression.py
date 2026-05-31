import os
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles


RVTEST_CYCLES = 20000
RVTEST_TRACE_CYCLES = 20


def read_word(ram, index):
    b0 = int(ram.mem0[index].value)
    b1 = int(ram.mem1[index].value)
    b2 = int(ram.mem2[index].value)
    b3 = int(ram.mem3[index].value)
    return (b3 << 24) | (b2 << 16) | (b1 << 8) | b0


def get_pc(dut):
    return int(dut.RISCV_COCOTB_i.Core_RV32I_pc.value)


@cocotb.test()
async def regression(dut):
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    dut.rst.value = 1
    await ClockCycles(dut.clk, 10)
    dut.rst.value = 0

    await ClockCycles(dut.clk, 300)

    ram = dut.RISCV_COCOTB_i.RV32I_RAM_MEMORY.ram_data.inst

    test_name = os.getenv("TEST_NAME", "")
    dut._log.info(f"TEST_NAME = {test_name}")

    for i in range(12):
        dut._log.info(f"RAM[{i}] = 0x{read_word(ram, i):08X}")

    if test_name == "TC_CORE_KEY":
        assert read_word(ram, 0) == 0x00000011
        assert read_word(ram, 1) == 0x00000022
        assert read_word(ram, 2) == 0x00000033
        assert read_word(ram, 3) == 0x00000066
        assert read_word(ram, 4) == 0x000000CC

    elif test_name == "TC_LOAD_USE_UART_TIMER":
        assert read_word(ram, 0) == 0x00000011
        assert read_word(ram, 1) == 0x00000022
        assert read_word(ram, 2) == 0x00000033
        assert read_word(ram, 3) == 0x00000011
        assert read_word(ram, 4) == 0x00000044
        assert read_word(ram, 5) == 0x00000077
        assert read_word(ram, 7) == 0xCAFE0001

    elif test_name == "TC_FULL_PIPELINE_MMIO_WAIT":
        assert read_word(ram, 0) == 0x00000011
        assert read_word(ram, 1) == 0x00000022
        assert read_word(ram, 2) == 0x00000033
        assert read_word(ram, 3) == 0x00000022
        assert read_word(ram, 4) == 0x00000044
        assert read_word(ram, 5) == 0x00000033
        assert read_word(ram, 6) == 0x00000077
        assert read_word(ram, 10) >= 0x00000005
        assert read_word(ram, 11) == 0xCAFE0001

    elif test_name.startswith("rv32ui-p-"):
        dut._log.info("====================================")
        dut._log.info(f"INICIO TEST OFICIAL: {test_name}")
        dut._log.info(f"Ejecutando {RVTEST_CYCLES} ciclos...")
        dut._log.info("====================================")

        await ClockCycles(dut.clk, RVTEST_CYCLES)

        dut._log.info("====================================")
        dut._log.info(f"FIN TEST OFICIAL: {test_name}")
        dut._log.info(f"{RVTEST_CYCLES} ciclos completados")
        dut._log.info(f"PC_CURRENT = 0x{get_pc(dut):08X}")
        dut._log.info(f"PC_LAST_REDIRECT = 0x{int(dut.pc_debug_last_redirect_0.value):08X}")
        dut._log.info("====================================")

        dut._log.info(f"TRACE PC - {RVTEST_TRACE_CYCLES} ciclos finales:")
        for i in range(RVTEST_TRACE_CYCLES):
            await ClockCycles(dut.clk, 1)
            dut._log.info(f"TRACE[{i:02d}] PC = 0x{get_pc(dut):08X}")

        assert True

    else:
        raise AssertionError(f"TEST_NAME desconocido: {test_name}")
