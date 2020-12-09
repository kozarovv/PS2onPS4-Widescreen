apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0017f974,0x3c01bf2a)
eeObj.WriteMem32(0x0017f988,0x3421aaab)
end

emuObj.AddVsyncHook(widescreen)