apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Vexx SLUS_203.83
--comment=Widescreen Hack
eeObj.WriteMem32(0x0035d74c,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)