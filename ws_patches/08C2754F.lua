apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Gameplay 16:9

eeObj.WriteMem32(0x0014e70c,0x3c014455)
eeObj.WriteMem32(0x0014e8cc,0x3c014455)
end

emuObj.AddVsyncHook(widescreen)