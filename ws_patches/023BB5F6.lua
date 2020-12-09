apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00277a80,0x3c033f08)
eeObj.WriteMem32(0x00277a88,0x34648883)
end

emuObj.AddVsyncHook(widescreen)