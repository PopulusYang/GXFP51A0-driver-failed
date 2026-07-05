#!/usr/bin/env python3
"""Quick PyGhidra script to find firmware in gfspi.dll."""
import os
os.environ['GHIDRA_INSTALL_DIR'] = '/home/Populus/Projects/ghidra'
import pyghidra

def read32(d, o):
    return d[o] | (d[o+1]<<8) | (d[o+2]<<16) | (d[o+3]<<24)

with pyghidra.open_program(
    '/home/Populus/Projects/fingerprint/gfspi.inf_amd64_cbf3264a9dc4fd92/gfspi.dll',
    project_location='/home/Populus/Projects/ghidra_projects',
    project_name='FingerprintProject',
    analyze=False, nested_project_location=False,
) as api:
    p = api.getCurrentProgram()
    base = p.getMinAddress()

    # Dump key sections
    for sec_name, sec_off, sec_len in [
        (".rdata", 0xa7000, 0x80000),   # 512KB
        (".text",  0x1000,  0xa5800),   # full .text
    ]:
        print(f"\n=== {sec_name} (offset 0x{sec_off:x}, {sec_len} bytes) ===")
        data = bytes(api.getBytes(base.add(sec_off), sec_len))

        for pattern in [b"GF_ST411SEC", b"MILAN_HC460", b"IHA_Init"]:
            idx = 0
            while True:
                idx = data.find(pattern, idx)
                if idx < 0: break
                # Show context
                ctx_s = max(0, idx-8)
                ctx_e = min(len(data), idx+len(pattern)+80)
                c = data[ctx_s:ctx_e]
                print(f"\n  '{pattern.decode()}' at +0x{idx:x}:")
                for i in range(0, len(c), 16):
                    hx = ' '.join(f'{b:02x}' for b in c[i:i+16])
                    asc = ''.join(chr(b) if 32<=b<127 else '.' for b in c[i:i+16])
                    off = ctx_s+i-idx
                    mk = " <--" if 0<=off<len(pattern) else ""
                    print(f"    {off:+5d}: {hx:48s} {asc}{mk}")
                idx += 1

    # Also try with analysis and list functions
    print("\n=== Done with raw data. ===")

# Now with analysis to find IHA functions
print("\n=== Opening with analysis to find functions ===")
with pyghidra.open_program(
    '/home/Populus/Projects/fingerprint/gfspi.inf_amd64_cbf3264a9dc4fd92/gfspi.dll',
    project_location='/home/Populus/Projects/ghidra_projects',
    project_name='FingerprintProject',
    analyze=True, nested_project_location=False,
) as api:
    p = api.getCurrentProgram()
    fm = p.getFunctionManager()
    funcs = []
    for f in fm.getFunctions(True):
        n = f.getName()
        if n and any(k in str(n).lower() for k in ['iha', 'spi', 'applet', 'flash', 'mcu']):
            funcs.append((str(n), str(f.getEntryPoint())))
    if funcs:
        print(f"Found {len(funcs)} matching functions:")
        for n, addr in funcs[:40]:
            print(f"  {n} @ {addr}")
    else:
        print("No matching function names found (analysis may use default names)")
        # Check total function count
        all_funcs = list(fm.getFunctions(True))
        print(f"Total functions: {len(all_funcs)}")
        if all_funcs:
            print("Sample function names (first 10):")
            for f in all_funcs[:10]:
                print(f"  {f.getName()} @ {f.getEntryPoint()}")

print("\nDone.")
