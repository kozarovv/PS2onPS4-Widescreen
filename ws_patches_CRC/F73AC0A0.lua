apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Marc Ecko's Getting Up - Contents Under Pressure SLES_534.59
--comment=Widescreen Hack
eeObj.WriteMem32(0x0056768c,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)