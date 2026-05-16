#!/usr/bin/env python3
import random
import argparse

def emit_header():
    return r'''.option norvc

.section .text.start, "ax", @progbits
.global _start

_start:
    lui  x8, 0x2              /* x8 = 0x00002000 RAM base */

    addi x7, x0, 0x111
    sw   x7, 0(x8)            /* START signature */

    addi x9, x0, 1
    sw   x9, 128(x8)          /* RAM[0x2080] = 1 for load-use tests */

'''

def emit_footer():
    return r'''
all_ok:
    addi x7, x0, 0x2AA
    sw   x7, 24(x8)

halt:
    jal x0, halt

fail:
    /* x31 contiene fail code */
    sw   x31, 252(x8)         /* RAM[0x20FC] = fail code */
fail_halt:
    jal x0, fail_halt
'''

def gen_not_taken_block(i):
    # branch que NO debe tomarse
    return f'''
/* ============================================================
   TEST {i}: BEQ/BNE not-taken pseudoaleatorio
   ============================================================ */
    addi x31, x0, {i}
    addi x5,  x0, 3
    addi x6,  x0, 7

t{i}_nt_loop:
    beq  x5, x6, fail         /* NOT TAKEN */
    addi x5, x5, 1
    bne  x5, x6, t{i}_nt_loop /* taken hasta x5 == x6 */

    addi x7, x0, {0x200+i}
    sw   x7, {4*i}(x8)
'''

def gen_taken_loop_block(i, count):
    return f'''
/* ============================================================
   TEST {i}: backward loop taken {count-1} veces y sale
   ============================================================ */
    addi x31, x0, {i}
    addi x5,  x0, {count}

t{i}_loop:
    addi x5, x5, -1
    addi x0, x0, 0
    addi x0, x0, 0
    bne  x5, x0, t{i}_loop

    addi x7, x0, {0x200+i}
    sw   x7, {4*i}(x8)
'''

def gen_consecutive_branch_block(i):
    return f'''
/* ============================================================
   TEST {i}: branches consecutivos
   ============================================================ */
    addi x31, x0, {i}
    addi x5, x0, 1
    addi x6, x0, 2

    beq  x5, x6, fail         /* NOT TAKEN */
    beq  x0, x0, t{i}_ok      /* TAKEN */

    addi x31, x0, {i*100+1}
    jal  x0, fail

t{i}_ok:
    addi x7, x0, {0x200+i}
    sw   x7, {4*i}(x8)
'''

def gen_jal_block(i):
    return f'''
/* ============================================================
   TEST {i}: JAL
   ============================================================ */
    addi x31, x0, {i}
    jal  x1, t{i}_jal_target

    addi x31, x0, {i*100+2}
    jal  x0, fail

t{i}_jal_target:
    addi x7, x0, {0x200+i}
    sw   x7, {4*i}(x8)
'''

def gen_jalr_block(i):
    return f'''
/* ============================================================
   TEST {i}: JALR
   ============================================================ */
    addi x31, x0, {i}

    lui  x10, %hi(t{i}_jalr_target)
    addi x10, x10, %lo(t{i}_jalr_target)
    jalr x0, 0(x10)

    addi x31, x0, {i*100+3}
    jal  x0, fail

t{i}_jalr_target:
    addi x7, x0, {0x200+i}
    sw   x7, {4*i}(x8)
'''

def gen_load_use_branch_block(i, count):
    return f'''
/* ============================================================
   TEST {i}: load-use antes de branch
   ============================================================ */
    addi x31, x0, {i}
    addi x5,  x0, {count}

t{i}_lu_loop:
    lw   x12, 128(x8)
    bne  x12, x0, t{i}_lu_taken

    addi x31, x0, {i*100+4}
    jal  x0, fail

t{i}_lu_taken:
    addi x5, x5, -1
    bne  x5, x0, t{i}_lu_loop

    addi x7, x0, {0x200+i}
    sw   x7, {4*i}(x8)
'''

def generate(seed, tests):
    random.seed(seed)

    blocks = [
        "not_taken",
        "taken_loop",
        "consecutive",
        "jal",
        "jalr",
        "load_use",
    ]

    asm = []
    asm.append(f"/* Generated branch predictor torture test. seed={seed}, tests={tests} */\n")
    asm.append(emit_header())

    for i in range(1, tests + 1):
        kind = random.choice(blocks)
        if kind == "not_taken":
            asm.append(gen_not_taken_block(i))
        elif kind == "taken_loop":
            asm.append(gen_taken_loop_block(i, random.randint(4, 20)))
        elif kind == "consecutive":
            asm.append(gen_consecutive_branch_block(i))
        elif kind == "jal":
            asm.append(gen_jal_block(i))
        elif kind == "jalr":
            asm.append(gen_jalr_block(i))
        elif kind == "load_use":
            asm.append(gen_load_use_branch_block(i, random.randint(4, 12)))

    asm.append(emit_footer())
    return "\n".join(asm)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--seed", type=int, default=1234)
    parser.add_argument("--tests", type=int, default=20)
    parser.add_argument("-o", "--output", default="bp_torture_random.S")
    args = parser.parse_args()

    asm = generate(args.seed, args.tests)

    with open(args.output, "w", encoding="utf-8") as f:
        f.write(asm)

    print(f"[OK] Generated {args.output}")
    print(f"     seed  = {args.seed}")
    print(f"     tests = {args.tests}")

if __name__ == "__main__":
    main()