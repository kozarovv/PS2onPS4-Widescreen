apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Red Star SLUS_208.85
--comment=Widescreen Hack
eeObj.WriteMem32(0x00233c9c,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)