apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0013f8e4,0x3c0142ae)
eeObj.WriteMem32(0x00241c5c,0x3c013b36)
eeObj.WriteMem32(0x00241c60,0x342103ce)
end

emuObj.AddVsyncHook(widescreen)