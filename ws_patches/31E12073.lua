apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001321e0,0x3c033f40)
eeObj.WriteMem32(0x00132038,0x3c0643e0)
end

emuObj.AddVsyncHook(widescreen)