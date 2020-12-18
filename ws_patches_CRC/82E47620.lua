apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x00119e24,0x3c0143e0)
end

emuObj.AddVsyncHook(widescreen)