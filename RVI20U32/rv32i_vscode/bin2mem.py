import struct, sys
from pathlib import Path

DEPTH_WORDS = 2048
NOP = 0x00000013

infile  = sys.argv[1] if len(sys.argv) > 1 else "prog.bin"
outfile = sys.argv[2] if len(sys.argv) > 2 else "prog.mem"

data = Path(infile).read_bytes()

if len(data) % 4:
    data += b"\x00" * (4 - (len(data) % 4))

words = [struct.unpack("<I", data[i:i+4])[0] for i in range(0, len(data), 4)]

if len(words) > DEPTH_WORDS:
    raise SystemExit(f"ERROR: programa usa {len(words)} words, ROM solo {DEPTH_WORDS}")

with open(outfile, "w") as f:
    for i in range(DEPTH_WORDS):
        f.write(f"{(words[i] if i < len(words) else NOP):08x}\n")

print(f"[OK] {outfile}: wrote {DEPTH_WORDS} words. program_words={len(words)}")