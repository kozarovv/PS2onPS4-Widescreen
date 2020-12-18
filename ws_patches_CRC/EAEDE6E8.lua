apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dora the Explorer - Dora Saves the Snow Princess (U)(SLUS-21796)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--83001646
eeObj.WriteMem32(0x0011a504,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46160083)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e1082)
eeObj.WriteMem32(0x000c0010,0x08046942)
end

emuObj.AddVsyncHook(widescreen)