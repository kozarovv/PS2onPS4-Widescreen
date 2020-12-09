apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Time Crisis - Crisis Zone SLUS_209.27
--comment=Widescreen Hack
eeObj.WriteMem32(0x00100658,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)