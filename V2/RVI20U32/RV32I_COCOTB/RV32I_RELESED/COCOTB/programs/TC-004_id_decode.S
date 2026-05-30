.option norvc
.section .text
.global _start

_start:
    addi x5, x0, 123      # ex_rd=5, ex_rd_we=1, ex_imm=123
    sw   x2, 8(x1)        # ex_rs1=1, ex_rs2=2, ex_imm=8, mem_we=1
    beq  x1, x2, label    # branch_en=1, funct3=000
    add  x3, x1, x2       # ex_rd=3, ex_rd_we=1

label:
    addi x6, x0, 55       # ex_rd=6, ex_imm=55

halt:
    jal x0, halt
