import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def test_add(dut):
    dut.a.value = 10
    dut.b.value = 20

    await Timer(1, units="ns")

    assert dut.y.value == 30
