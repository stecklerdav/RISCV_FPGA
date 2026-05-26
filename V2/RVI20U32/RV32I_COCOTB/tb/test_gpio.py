import os

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles

def get_reg(dut, idx):
    return int(dut.BASIC_i.regfile_0.regs[idx].value)

@cocotb.test()
async def test_reset_and_pc_runs(dut):

    cocotb.start_soon(
        Clock(dut.clk, 10, unit="ns").start()
    )

    dut.SW1.value = 0

    dut.rst.value = 1
    await ClockCycles(dut.clk, 10)

    dut.rst.value = 0

    await ClockCycles(dut.clk, 300)

    pc = int(dut.BASIC_i.pc_unit_0.pc.value)

    dut._log.info(f"PC = 0x{pc:08X}")

    assert pc != 0

    # --------------------------------------------------------
    # Detectar qué MEM está corriendo
    # --------------------------------------------------------

    with open("programs/prog_asm.mem", "r") as f:
        mem_text = f.read()

    # ========================================================
    # TEST ADD
    # ========================================================

    # esperado:
    # x3 = 8

    if "00500093" in mem_text:

        x3 = get_reg(dut, 3)

        dut._log.info(f"[TEST ADD] x3 = {x3}")

        assert x3 == 8

    # ========================================================
    # TEST BRANCH
    # ========================================================

    # esperado:
    # x5 != 99
    # x6 == 7

    if "06300293" in mem_text:

        x5 = get_reg(dut, 5)
        x6 = get_reg(dut, 6)

        dut._log.info(f"[TEST BRANCH] x5 = {x5}")
        dut._log.info(f"[TEST BRANCH] x6 = {x6}")

        assert x5 != 99
        assert x6 == 7

    # ========================================================
    # TEST FORWARDING
    # ========================================================

    # esperado:
    # x2 = 20
    # x3 = 30

    if "00A00093" in mem_text:

        x2 = get_reg(dut, 2)
        x3 = get_reg(dut, 3)

        dut._log.info(f"[TEST FORWARDING] x2 = {x2}")
        dut._log.info(f"[TEST FORWARDING] x3 = {x3}")

        assert x2 == 20
        assert x3 == 30

    # ========================================================
    # TEST LOAD USE
    # ========================================================

    # esperado:
    # x3 = 110

    if "03700093" in mem_text:

        x3 = get_reg(dut, 3)

        dut._log.info(f"[TEST LOAD_USE] x3 = {x3}")

        assert x3 == 110

    # ========================================================
    # TEST GPIO
    # ========================================================

    # esperado:
    # gpio = 1

    if "00100093" in mem_text:

        gpio = int(dut.gpio_out_0.value)

        dut._log.info(f"[TEST GPIO] gpio = {gpio}")

        assert gpio == 1

    # ========================================================
    # TEST JUMP
    # ========================================================

    # esperado:
    # x5 != 99
    # x6 == 33

    if "02100313" in mem_text:

        x5 = get_reg(dut, 5)
        x6 = get_reg(dut, 6)

        dut._log.info(f"[TEST JUMP] x5 = {x5}")
        dut._log.info(f"[TEST JUMP] x6 = {x6}")

        assert x5 != 99
        assert x6 == 33

    # ========================================================
    # TEST LOOP LONG
    # ========================================================

    # esperado:
    # x3 = 77

    if "04D00193" in mem_text:

        x3 = get_reg(dut, 3)

        dut._log.info(f"[TEST LOOP LONG] x3 = {x3}")

        assert x3 == 77
