apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Samurai Western (NTSC-U)
--comment=Widescreen Hack

eeObj.WriteMem32(0x002D35A0,0x3f400000)
eeObj.WriteMem32(0x0014cf5c,0x3c033fab)
end

emuObj.AddVsyncHook(widescreen)