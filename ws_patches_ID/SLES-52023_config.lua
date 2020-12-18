apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Manhunt SLES_520.23
--comment=Widescreen Hack
eeObj.WriteMem32(0x001c88a8,0x3c023f03)
eeObj.WriteMem32(0x001c88c8,0x3c033f6e)
eeObj.WriteMem32(0x001c88d0,0x3462eeee)
end

emuObj.AddVsyncHook(widescreen)