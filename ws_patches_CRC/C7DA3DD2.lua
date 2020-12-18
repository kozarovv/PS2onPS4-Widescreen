apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fantastic 4 SLUS_206.15
--comment=Widescreen Hack
eeObj.WriteMem32(0x0031D0F8,0x3Faaaaab)
end

emuObj.AddVsyncHook(widescreen)