RVI20U32 RV32I + Privileged + MMIO Verification Package

Contenido:
1) RVI20U32_verification_plan.xlsx
   - Dashboard
   - Test Matrix
   - Levels
   - VCD Probe Plan
   - Regression Flow
   - Waveform Tools

2) asm_tests/*.S
   - Tests ensamblables para RV32I + Zicsr.
   - Cada test escribe firma PASS/FAIL en RAM[0x2000].
   - Usan mapa:
     RAM_BASE  = 0x00002000
     GPIO_BASE = 0x00003000
     UART_BASE = 0x00003010

3) vcd_scripts/capture_full_core_priv_mmio.tcl
   - Script base para capturar VCD en Vivado xsim.
   - Ajusta patrones de jerarquía según tus nombres reales.

4) scripts/compare_commit_skeleton.py
   - Esqueleto para comparar commit logs RTL vs Spike.

Notas:
- Para CSR usa -march=rv32i_zicsr si tu toolchain separa Zicsr.
- Para privileged/traps necesitas que tu RTL implemente CSR mínimas:
  mstatus, mtvec, mepc, mcause, mtval opcional, mie/mip para IRQ.
- Los tests MMIO/IRQ pueden requerir adaptación a tu política exacta de cpu_error/trap.
