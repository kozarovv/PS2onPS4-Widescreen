apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x000ccf0c,0x3c02438e)
eeObj.WriteMem32(0x000ccf54,0x3c024420)
end

emuObj.AddVsyncHook(widescreen)