apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cold Winter (SLUS-20845)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x003c4cf4,0x3c013f40)
eeObj.WriteMem32(0x003c4cfc,0x44810800)
eeObj.WriteMem32(0x003c4d00,0x03e00008)
eeObj.WriteMem32(0x003c4d04,0x4601a083)

--weapon
eeObj.WriteMem32(0x00310f4c,0xc6740330)
eeObj.WriteMem32(0x00310f54,0xc7a30048)
eeObj.WriteMem32(0x00310f60,0xe7a20050)
eeObj.WriteMem32(0x00310f64,0xc6620330)

--gameplay
eeObj.WriteMem32(0x001dcc34,0x8E440058)
eeObj.WriteMem32(0x001dcc40,0xe7a20040)

--480p
eeObj.WriteMem32(0x004f677c,0x3c050000)
eeObj.WriteMem32(0x004f6784,0x3c060050)
eeObj.WriteMem32(0x004f678c,0x3c070001)
eeObj.WriteMem32(0x004f69e4,0x3c090010)
end

emuObj.AddVsyncHook(widescreen)