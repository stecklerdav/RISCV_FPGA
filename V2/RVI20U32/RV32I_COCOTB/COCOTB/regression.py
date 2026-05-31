import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles


def read_word(ram, index):
    b0 = int(ram.mem0[index].value)
    b1 = int(ram.mem1[index].value)
    b2 = int(ram.mem2[index].value)
    b3 = int(ram.mem3[index].value)

    return (b3 << 24) | (b2 << 16) | (b1 << 8) | b0


@cocotb.test()
async def test_store_forwarding_ram_base(dut):

    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())

    dut.rst.value = 1
    await ClockCycles(dut.clk, 10)
    dut.rst.value = 0

    await ClockCycles(dut.clk, 120)

    ram = dut.RISCV_COCOTB_i.RV32I_RAM_MEMORY.ram_data.inst

    w0 = read_word(ram, 0)
    w1 = read_word(ram, 1)
    w2 = read_word(ram, 2)
    w3 = read_word(ram, 3)
    w4 = read_word(ram, 4)

    dut._log.info(f"RAM[0] = 0x{w0:08X}")
    dut._log.info(f"RAM[1] = 0x{w1:08X}")
    dut._log.info(f"RAM[2] = 0x{w2:08X}")
    dut._log.info(f"RAM[3] = 0x{w3:08X}")
    dut._log.info(f"RAM[4] = 0x{w4:08X}")

    assert w0 == 0x00000011
    assert w1 == 0x00000022
    assert w2 == 0x00000033
    assert w3 == 0x00000066
    assert w4 == 0x000000CC
