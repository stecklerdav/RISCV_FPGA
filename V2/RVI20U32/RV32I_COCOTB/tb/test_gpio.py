import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, Timer


@cocotb.test()
async def gpio_switch_test(dut):
    cocotb.start_soon(Clock(dut.clk, 10, units="ns").start())

    dut.rst.value = 1
    dut.SW1.value = 0

    for _ in range(20):
        await RisingEdge(dut.clk)

    dut.rst.value = 0

    await Timer(5, units="us")
    dut.SW1.value = 1

    await Timer(5, units="us")
    dut.SW1.value = 0

    await Timer(5, units="us")
    dut.SW1.value = 1

    await Timer(5, units="us")
