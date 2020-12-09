apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x007d0478,0x3f533333)
eeObj.WriteMem32(0x007d1668,0x3f533333)
end

emuObj.AddVsyncHook(widescreen)