#!/usr/bin/env python3
"""
Skeleton: compare RTL commit trace vs Spike commit trace.

Formato RTL recomendado:
COMMIT pc=00000000 instr=00500093 rd=1 data=00000005 trap=0

Formato Spike puede requerir parser diferente según flags/version.
Empieza normalizando ambos a:
{pc, rd, data, trap}
"""
import re
import sys

rtl_re = re.compile(r"COMMIT\s+pc=([0-9a-fA-F]+).*?rd=(\d+).*?data=([0-9a-fA-F]+).*?trap=(\d+)")

def parse_rtl(path):
    out = []
    for line in open(path, encoding="utf-8", errors="ignore"):
        m = rtl_re.search(line)
        if m:
            out.append({
                "pc": int(m.group(1), 16),
                "rd": int(m.group(2)),
                "data": int(m.group(3), 16),
                "trap": int(m.group(4)),
                "raw": line.strip(),
            })
    return out

def parse_spike_stub(path):
    """
    TODO:
    Ajustar al formato real de tu Spike.
    Puedes convertir Spike log a líneas normalizadas antes de comparar.
    """
    out = []
    # Implementar parser aquí.
    return out

def compare(rtl, spike):
    n = min(len(rtl), len(spike))
    for i in range(n):
        r, s = rtl[i], spike[i]
        for key in ("pc", "rd", "data", "trap"):
            if r.get(key) != s.get(key):
                print(f"[FAIL] mismatch commit {i} key={key}")
                print(" RTL  :", r)
                print(" SPIKE:", s)
                return 1
    if len(rtl) != len(spike):
        print(f"[FAIL] length mismatch rtl={len(rtl)} spike={len(spike)}")
        return 1
    print(f"[PASS] {n} commits matched")
    return 0

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("usage: compare_commit_skeleton.py rtl.log spike.log")
        sys.exit(2)
    rtl = parse_rtl(sys.argv[1])
    spike = parse_spike_stub(sys.argv[2])
    sys.exit(compare(rtl, spike))
