apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DragonBall Z - Infinite World SLUS_218.42
--comment=Widescreen Hack
eeObj.WriteMem32(0x0052E6B0,0x3f23d706)
eeObj.WriteMem32(0x0049C054,0x3f23d706)
end

emuObj.AddVsyncHook(widescreen)