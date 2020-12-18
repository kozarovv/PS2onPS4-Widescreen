apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ruff Trigger - The Vanocore Conspiracy SLUS_213.14 
--comment=Widescreen Hack
eeObj.WriteMem32(0x001e9a28,0x3c013fd5)
end

emuObj.AddVsyncHook(widescreen)