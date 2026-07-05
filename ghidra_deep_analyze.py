#!/usr/bin/env python3
"""Deep analysis: decompile firmware loading functions."""
import os, sys
os.environ['GHIDRA_INSTALL_DIR'] = '/home/Populus/Projects/ghidra'
import pyghidra

with pyghidra.open_program(
    '/home/Populus/Projects/fingerprint/gfspi.inf_amd64_cbf3264a9dc4fd92/gfspi.dll',
    project_location='/home/Populus/Projects/ghidra_projects',
    project_name='FingerprintProject',
    analyze=True, nested_project_location=False,
) as api:
    p = api.getCurrentProgram()
    fm = p.getFunctionManager()
    ref_mgr = p.getReferenceManager()
    listing = p.getListing()
    base = p.getMinAddress()

    # Read .rdata
    rdata = bytes(api.getBytes(base.add(0xa7000), 0x80000))

    # Find IHA-related strings
    targets = [
        (b"IHA_Init\0", "IHA_Init"),
        (b"IHA_Install\0", "IHA_Install"),
        (b"IHA3_SendAndReceiveData\0", "IHA3_SendRecv"),
        (b"IHA_DeInit\0", "IHA_DeInit"),
    ]

    func_set = set()
    for pattern, label in targets:
        idx = rdata.find(pattern)
        if idx < 0:
            print(f"{label}: not found")
            continue
        str_addr = base.add(0xa7000 + idx)
        print(f"\n=== {label} @ {str_addr} ===")
        refs = ref_mgr.getReferencesTo(str_addr)
        while refs.hasNext():
            ref = refs.next()
            from_addr = ref.getFromAddress()
            func = fm.getFunctionContaining(from_addr)
            if func:
                name = func.getName()
                if name not in func_set:
                    print(f"  -> {name} @ {func.getEntryPoint()}")
                    func_set.add(name)
                    if len(func_set) >= 20:
                        break

    # For each found function, decompile
    print(f"\n=== Decompiling {len(func_set)} functions ===")
    for fname in sorted(func_set)[:10]:
        print(f"\n--- {fname} ---")
        # Find function by iterating
        for func in fm.getFunctions(True):
            if func.getName() == fname:
                # Try decompile
                try:
                    dec = api.decompileFunction(func)
                    if dec:
                        code = dec.getDecompiledFunction().getC()
                        # Show first 80 lines
                        lines = code.split('\n')[:80]
                        for l in lines:
                            print(l)
                except Exception as e:
                    print(f"  Decompile error: {e}")
                break

    # Also look at the export
    print("\n=== Export: FxDriverEntryUm ===")
    entry_addr = p.getAddressFactory().getAddress("1800086560")
    entry_func = fm.getFunctionAt(entry_addr)
    if entry_func:
        try:
            dec = api.decompileFunction(entry_func)
            if dec:
                code = dec.getDecompiledFunction().getC()
                lines = code.split('\n')[:100]
                for l in lines:
                    print(l)
        except Exception as e:
            print(f"  Decompile error: {e}")

print("\nDone.")
