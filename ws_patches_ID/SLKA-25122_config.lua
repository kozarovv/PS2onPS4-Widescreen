apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sonic Heroes (NTSC-K)(SLKA-25122)
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

--Widescreen hack 16:9
eeObj.WriteMem32(0x00167bcc,0x10000042)
eeObj.WriteMem32(0x00167c24,0x1000002c)
eeObj.WriteMem32(0x00167c40,0x10000025)
eeObj.WriteMem32(0x00167be4,0x14400033)
eeObj.WriteMem32(0x00167bf4,0x1020002f)

eeObj.WriteMem32(0x00167c58,0x14400004)
eeObj.WriteMem32(0x00167c60,0x1000001d)
eeObj.WriteMem32(0x00167c68,0x3c013f40)
eeObj.WriteMem32(0x00167c6c,0x0c05a92c)
eeObj.WriteMem32(0x00167c70,0x27a50030)
eeObj.WriteMem32(0x00167c74,0x0220202d)
eeObj.WriteMem32(0x00167c78,0x0c05a890)
eeObj.WriteMem32(0x00167c7c,0x27a50038)
eeObj.WriteMem32(0x00167c80,0xc7ac0040)
eeObj.WriteMem32(0x00167c84,0x0c05a8a4)
eeObj.WriteMem32(0x00167c88,0x0220202d)
eeObj.WriteMem32(0x00167c8c,0xc7ac0044)
eeObj.WriteMem32(0x00167c90,0x0c05a8b4)
eeObj.WriteMem32(0x00167c94,0x0220202d)
eeObj.WriteMem32(0x00167c98,0xc7a00048)
eeObj.WriteMem32(0x00167c9c,0xe6200088)
eeObj.WriteMem32(0x00167ca0,0x8fa5004c)
eeObj.WriteMem32(0x00167ca4,0x0c05a908)
eeObj.WriteMem32(0x00167ca8,0x0220202d)
eeObj.WriteMem32(0x00167cac,0x1000000a)
eeObj.WriteMem32(0x00167cb0,0x0220102d)
eeObj.WriteMem32(0x00167cb4,0x24030001)
eeObj.WriteMem32(0x00167cb8,0x3c028000)
eeObj.WriteMem32(0x00167cbc,0xafa30050)
eeObj.WriteMem32(0x00167cc0,0x0c058844)
eeObj.WriteMem32(0x00167cc4,0x34440004)
eeObj.WriteMem32(0x00167cc8,0xafa20054)
eeObj.WriteMem32(0x00167ccc,0x0c058814)
eeObj.WriteMem32(0x00167cd0,0x27a40050)
eeObj.WriteMem32(0x00167cd4,0x0000102d)
eeObj.WriteMem32(0x00167cd8,0xdfbf0020)
eeObj.WriteMem32(0x00167cdc,0x7bb10010)
eeObj.WriteMem32(0x00167ce0,0x7bb00000)
eeObj.WriteMem32(0x00167ce4,0x03e00008)
eeObj.WriteMem32(0x00167ce8,0x27bd0060)

eeObj.WriteMem32(0x0020bf4c,0x3c013f40)
eeObj.WriteMem32(0x0020bf50,0x0c05a92c)
eeObj.WriteMem32(0x0020bf54,0x24452314)
eeObj.WriteMem32(0x0020bf58,0x1000002c)

eeObj.WriteMem32(0x0020bf6c,0x3c013f40)
eeObj.WriteMem32(0x0020bf70,0x0c05a92c)
eeObj.WriteMem32(0x0020bf74,0x24452314)
eeObj.WriteMem32(0x0020bf78,0x10000024)

eeObj.WriteMem32(0x0020be84,0x10000062)

eeObj.WriteMem32(0x0020c000,0x3c013f40)
eeObj.WriteMem32(0x0020c004,0x0c05a92c)
eeObj.WriteMem32(0x0020c008,0x27a50040)
eeObj.WriteMem32(0x0020c00c,0xdfbf0020)
eeObj.WriteMem32(0x0020c010,0x7bb10010)
eeObj.WriteMem32(0x0020c014,0x7bb00000)
eeObj.WriteMem32(0x0020c018,0x03e00008)
eeObj.WriteMem32(0x0020c01c,0x27bd0050)

eeObj.WriteMem32(0x0020c07c,0x3c013f80)
eeObj.WriteMem32(0x0020c080,0x0c05a92c)
eeObj.WriteMem32(0x0020c084,0x27a50028)
eeObj.WriteMem32(0x0020c088,0xdfbf0010)
eeObj.WriteMem32(0x0020c08c,0x7bb00000)
eeObj.WriteMem32(0x0020c090,0x03e00008)
eeObj.WriteMem32(0x0020c094,0x27bd0030)

eeObj.WriteMem32(0x002be488,0x1000001a)

eeObj.WriteMem32(0x002be4c8,0x3c013f80)
eeObj.WriteMem32(0x002be4cc,0x0c05a92c)
eeObj.WriteMem32(0x002be4d0,0x27a50048)
eeObj.WriteMem32(0x002be4d4,0x3c0241f0)
eeObj.WriteMem32(0x002be4d8,0x44826000)
eeObj.WriteMem32(0x002be4dc,0x0c05a8b4)
eeObj.WriteMem32(0x002be4e0,0x8f84b670)
eeObj.WriteMem32(0x002be4e4,0xc78c809c)
eeObj.WriteMem32(0x002be4e8,0x0c05a8a4)
eeObj.WriteMem32(0x002be4ec,0x8f84b670)
eeObj.WriteMem32(0x002be4f0,0x8f82b670)
eeObj.WriteMem32(0x002be4f4,0xdfbf0030)
eeObj.WriteMem32(0x002be4f8,0x7bb20020)
eeObj.WriteMem32(0x002be4fc,0x7bb10010)
eeObj.WriteMem32(0x002be500,0x7bb00000)
eeObj.WriteMem32(0x002be504,0x03e00008)
eeObj.WriteMem32(0x002be508,0x27bd0050)

eeObj.WriteMem32(0x002ee0cc,0x3c013f80)
eeObj.WriteMem32(0x002ee0d0,0x0c05a92c)
eeObj.WriteMem32(0x002ee0d4,0x27a50028)
eeObj.WriteMem32(0x002ee0d8,0x460c6303)

eeObj.WriteMem32(0x0016a4cc,0x44810000)
eeObj.WriteMem32(0x0016a4d0,0x46001083)
eeObj.WriteMem32(0x0016a4d4,0xc4a00004)
eeObj.WriteMem32(0x0016a4d8,0xe4820068)
eeObj.WriteMem32(0x0016a4dc,0xe480006c)
eeObj.WriteMem32(0x0016a4e0,0xc4800068)
eeObj.WriteMem32(0x0016a4e4,0x46000803)
eeObj.WriteMem32(0x0016a4e8,0xe4800070)
eeObj.WriteMem32(0x0016a4ec,0xc480006c)
eeObj.WriteMem32(0x0016a4f0,0x46000803)
eeObj.WriteMem32(0x0016a4f4,0xe4800074)
eeObj.WriteMem32(0x0016a4f8,0x8c840004)
eeObj.WriteMem32(0x0016a4fc,0x10800004)
eeObj.WriteMem32(0x0016a500,0x0200102d)
eeObj.WriteMem32(0x0016a504,0x0c05adfc)
eeObj.WriteMem32(0x0016a508,0x00000000)
eeObj.WriteMem32(0x0016a50c,0x0200102d)
eeObj.WriteMem32(0x0016a510,0xdfbf0010)
eeObj.WriteMem32(0x0016a514,0x7bb00000)
eeObj.WriteMem32(0x0016a518,0x03e00008)
eeObj.WriteMem32(0x0016a51c,0x27bd0020)

--480p (progressive scan)
eeObj.WriteMem32(0x001009c4,0x3c050000)
eeObj.WriteMem32(0x001009cc,0x3c060050)
eeObj.WriteMem32(0x001009d4,0x3c070001)

eeObj.WriteMem32(0x00100c94,0x3c090010)
end

emuObj.AddVsyncHook(widescreen)