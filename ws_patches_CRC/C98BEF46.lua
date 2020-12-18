apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Stolen SLUS_210.99
--comment=Widescreen Hack
eeObj.WriteMem32(0x00ab44b0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)