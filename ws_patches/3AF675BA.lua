apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
--eeObj.WriteMem32(0x0019b5e0,0x3c023fc5)

eeObj.WriteMem32(0x0019ae30,0x3c013f40)
eeObj.WriteMem32(0x0019ae34,0x44816000)
eeObj.WriteMem32(0x0019ae38,0x460c0303)
eeObj.WriteMem32(0x0019ae3c,0x0200302d)
eeObj.WriteMem32(0x0019ae40,0x0c0797bc)
eeObj.WriteMem32(0x0019ae44,0x26250340)
eeObj.WriteMem32(0x0019ae48,0xdfbf0020)
eeObj.WriteMem32(0x0019ae4c,0x7bb10010)
eeObj.WriteMem32(0x0019ae50,0x7bb00000)
eeObj.WriteMem32(0x0019ae54,0x03e00008)
eeObj.WriteMem32(0x0019ae58,0x27bd0030)



eeObj.WriteMem32(0x001e749c,0x3c023f49)
eeObj.WriteMem32(0x001e74a8,0x3443999a)

--FMV's fix
eeObj.WriteMem32(0x0021dafc,0x34467100)
eeObj.WriteMem32(0x0021db54,0x34468f00)

--480p (progressive scan)
eeObj.WriteMem32(0x00300340,0x24060050)
eeObj.WriteMem32(0x00300f98,0x24060050)
eeObj.WriteMem32(0x00300344,0x24050000)
eeObj.WriteMem32(0x00300f94,0x24050000)
end

emuObj.AddVsyncHook(widescreen)