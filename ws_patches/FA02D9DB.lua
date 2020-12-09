apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=International Super Karts (E)(SLES-53186)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001cf518,0x3c013f9e)
eeObj.WriteMem32(0x001cf51c,0x3421e400)
end

emuObj.AddVsyncHook(widescreen)