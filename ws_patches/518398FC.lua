apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00123e4c,0x3c033f2a)

eeObj.WriteMem32(0x004CCEDC,0x3F19999A)
end

emuObj.AddVsyncHook(widescreen)