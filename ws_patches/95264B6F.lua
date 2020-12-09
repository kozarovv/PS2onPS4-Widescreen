apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Samurai Dou 2 - Kettouban (PlayStation2 the Best) [NTSC-J] (SLPM-74209)
--comment=Widescreen Hack

eeObj.WriteMem32(0x0030F260,0x3f400000)
eeObj.WriteMem32(0x0016cecc,0x3c033fab)
end

emuObj.AddVsyncHook(widescreen)