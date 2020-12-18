apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ni Hao, Kai-Lan - Super Game Day (U)(SLUS-21926)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0011a224,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46160083)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e1082)
eeObj.WriteMem32(0x000c0010,0x0804688a)
end

emuObj.AddVsyncHook(widescreen)