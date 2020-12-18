apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Stolen (PAL-M5) SLES_528.82
--comment=Widescreen hack by dieSkaarj

eeObj.WriteMem32(0x00aeadf0,0x3f400000)

end

emuObj.AddVsyncHook(widescreen)