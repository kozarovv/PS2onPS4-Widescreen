apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hitman - Contracts (K)(SLKA-25218)
--comment=Widescreen hack by ElHecht (NTSC-K by Arapapa)

--Widescreen hack 16:9


eeObj.WriteMem32(0x00266018,0x3c013f10)

eeObj.WriteMem32(0x001c82c0,0x3c1b3f40)
eeObj.WriteMem32(0x001c82c4,0x1060006d)
eeObj.WriteMem32(0x001c82c8,0xae220044)
eeObj.WriteMem32(0x001c82cc,0xc6200038)
eeObj.WriteMem32(0x001c82d0,0x3c013f80)
eeObj.WriteMem32(0x001c82d4,0x4481a000)
eeObj.WriteMem32(0x001c82d8,0x46140032)

eeObj.WriteMem32(0x001c847c,0x3c013f00)
eeObj.WriteMem32(0x001c8480,0x4481a800)
eeObj.WriteMem32(0x001c8484,0x4615ad00)
eeObj.WriteMem32(0x001c8488,0x449bf000)

eeObj.WriteMem32(0x001c84c4,0x461e0002)
eeObj.WriteMem32(0x001c84c8,0x46150002)
eeObj.WriteMem32(0x001c84cc,0x4600a583)
eeObj.WriteMem32(0x001c84d0,0xe6200054)
eeObj.WriteMem32(0x001c84d4,0x4600a807)
end

emuObj.AddVsyncHook(widescreen)