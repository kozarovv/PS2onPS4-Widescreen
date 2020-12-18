apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Phantom Kingdom (J)(SLPS-20410)
--comment=Widescreen Hack by Arapapa

--Gameplay 16:9

eeObj.WriteMem32(0x001058d4,0x3c013f40)
eeObj.WriteMem32(0x001058d8,0x44810000)
eeObj.WriteMem32(0x001058e0,0x4600c602)

--2D Characters X-Fov
--803f023c 00608244 00688044
eeObj.WriteMem32(0x0014fafc,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)