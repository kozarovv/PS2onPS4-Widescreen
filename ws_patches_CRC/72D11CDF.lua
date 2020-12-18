apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--2044023c 00608244 f043023c 00688244
eeObj.WriteMem32(0x0027b6fc,0x3c024460)
end

emuObj.AddVsyncHook(widescreen)