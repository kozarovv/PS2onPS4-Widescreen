apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

--Search values are different than NTSC-U.

--Widescreen hack 16:9
eeObj.WriteMem32(0x001fa040,0xe66000a4)
eeObj.WriteMem32(0x001fa044,0x3c020083)
eeObj.WriteMem32(0x001fa048,0xc44083d0)
eeObj.WriteMem32(0x001fa04c,0x3c0c0083)

eeObj.WriteMem32(0x001fa050,0x3c0b0083)
eeObj.WriteMem32(0x001fa054,0x3c0a0083)
eeObj.WriteMem32(0x001fa058,0x3c090083)
eeObj.WriteMem32(0x001fa05c,0x3c080083)

eeObj.WriteMem32(0x001fa060,0x3c070083)
eeObj.WriteMem32(0x001fa064,0x3c060083)
eeObj.WriteMem32(0x001fa068,0x3c050083)
eeObj.WriteMem32(0x001fa06c,0x3c040083)

eeObj.WriteMem32(0x001fa070,0x3c030083)
eeObj.WriteMem32(0x001fa074,0x240e0004)
eeObj.WriteMem32(0x001fa078,0x3c020083)
eeObj.WriteMem32(0x001fa07c,0x3c0d3f40)

eeObj.WriteMem32(0x001fa080,0xe66000f0)
eeObj.WriteMem32(0x001fa084,0xc44183d4)
eeObj.WriteMem32(0x001fa088,0xe66100f4)
eeObj.WriteMem32(0x001fa08c,0x3c020083)

eeObj.WriteMem32(0x001fa090,0xc58183d8)
eeObj.WriteMem32(0x001fa094,0xc440b5c0)
eeObj.WriteMem32(0x001fa098,0xe66100f8)
eeObj.WriteMem32(0x001fa09c,0xc56183dc)

eeObj.WriteMem32(0x001fa0a0,0xe66100fc)
eeObj.WriteMem32(0x001fa0a4,0xc54183d0)
eeObj.WriteMem32(0x001fa0a8,0xe6610130)
eeObj.WriteMem32(0x001fa0ac,0xc52183d4)

eeObj.WriteMem32(0x001fa0b0,0xe6610134)
eeObj.WriteMem32(0x001fa0b4,0xc50183d8)
eeObj.WriteMem32(0x001fa0b8,0xe6610138)
eeObj.WriteMem32(0x001fa0bc,0xc4e183dc)

eeObj.WriteMem32(0x001fa0c0,0xe661013c)
eeObj.WriteMem32(0x001fa0c4,0xc4c183d0)
eeObj.WriteMem32(0x001fa0c8,0xe6610140)
eeObj.WriteMem32(0x001fa0cc,0xc4a183d4)

eeObj.WriteMem32(0x001fa0d0,0xe6610144)
eeObj.WriteMem32(0x001fa0d4,0xc48183d8)
eeObj.WriteMem32(0x001fa0d8,0xe6610148)
eeObj.WriteMem32(0x001fa0dc,0xc46183dc)

eeObj.WriteMem32(0x001fa0e0,0xe661014c)
eeObj.WriteMem32(0x001fa0e4,0xae600150)
eeObj.WriteMem32(0x001fa0e8,0xae600158)
eeObj.WriteMem32(0x001fa0ec,0xae600154)

eeObj.WriteMem32(0x001fa0f0,0xae6e00c4)
eeObj.WriteMem32(0x001fa0f4,0xae6000b8)
eeObj.WriteMem32(0x001fa0f8,0xae6000b4)
eeObj.WriteMem32(0x001fa0fc,0xae6d00bc)

eeObj.WriteMem32(0x001fa100,0x3c0d3f80)
end

emuObj.AddVsyncHook(widescreen)