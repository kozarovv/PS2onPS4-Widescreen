apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Time Crisis 3 SLES_518.44
--comment=Widescreen hack by dieSkaarj.

eeObj.WriteMem32(0x001d544c,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)