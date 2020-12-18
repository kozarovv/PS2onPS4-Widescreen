apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Charlie and the Chocolate Factory [PAL](SLES-53386)
--comment=Widescreen Hack by El_Patas and Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002f83e4,0x08041c28)
eeObj.WriteMem32(0x001070a0,0xc6000038)
eeObj.WriteMem32(0x001070a4,0x3c1b3f40)
eeObj.WriteMem32(0x001070a8,0x449bf000)
eeObj.WriteMem32(0x001070ac,0x461e0003)
eeObj.WriteMem32(0x001070b0,0x080be0fa)
end

emuObj.AddVsyncHook(widescreen)