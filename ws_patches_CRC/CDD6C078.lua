apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wrath Unleashed (PAL-M5) SLES_521.01
--comment=Widescreen hack by dieSkaarj

eeObj.WriteMem32(0x00797CC0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)