apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Gameplay 16:9

eeObj.WriteMem32(0x00185480,0x3c023f19)
eeObj.WriteMem32(0x00185488,0x3447999a)
end

emuObj.AddVsyncHook(widescreen)