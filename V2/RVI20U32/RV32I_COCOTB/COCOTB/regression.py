import os
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, ReadOnly


def find_child_by_name(obj, target, max_depth=10, depth=0):
    if depth > max_depth:
        return None

    try:
        for child in obj:
            if child._name == target:
                return child

            found = find_child_by_name(child, target, max_depth, depth + 1)
            if found is not None:
                return found
    except Exception:
        return None

    return None


def get_ram_handle(dut):
    ram = find_child_by_name(dut, "ram_data")

    if ram is None:
        raise AssertionError("No encontré la instancia ram_data en la jerarquía")

    return ram


def read_ram_word(dut, index):
    ram = get_ram_handle(dut)

    b0 = int(ram.inst.mem0[index].value)
    b1 = int(ram.inst.mem1[index].value)
    b2 = int(ram.inst.mem2[index].value)
    b3 = int(ram.inst.mem3[index].value)

    return (b3 << 24) | (b2 << 16) | (b1 << 8) | b0


@cocotb.test()
async def regression(dut):
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    test_name = os.getenv("TEST_NAME", "")
    dut._log.info(f"TEST_NAME = {test_name}")

    # Reset
    dut.rst.value = 1
    await ClockCycles(dut.clk, 10)
    dut.rst.value = 0
    await ClockCycles(dut.clk, 5)

    # ============================================================
    # TC_UART_TIMEOUT_RECOVERY
    # UART ready conectado a 0 -> bus timeout -> core continúa
    # ============================================================
    if test_name == "TC_UART_TIMEOUT_RECOVERY":

        dut._log.info("UART ready debe estar conectado a 1'b0 en el wrapper/BD")

        # TIMEOUT_CYCLES = 100000, esperamos un poco más
        await ClockCycles(dut.clk, 100200)
        await ReadOnly()

        ram0 = read_ram_word(dut, 0)

        dut._log.info(f"RAM[0] = 0x{ram0:08X}")

        assert ram0 == 0x00000055, \
            f"ERROR: UART timeout recovery falló. RAM[0]=0x{ram0:08X}, esperado 0x00000055"

        dut._log.info("PASS: UART timeout liberó el stall y el core continuó")
        return

    # ============================================================
    # Tests normales
    # ============================================================
    await ClockCycles(dut.clk, 300)
    await ReadOnly()

    for i in range(12):
        val = read_ram_word(dut, i)
        dut._log.info(f"RAM[{i}] = 0x{val:08X}")
