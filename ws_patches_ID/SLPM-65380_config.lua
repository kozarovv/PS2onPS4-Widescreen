apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Samurai Dou 2 - Way of the Samurai 2 NTSC-J] (SLPM-65380)
--comment=Widescreen Hack

eeObj.WriteMem32(0x002EFCA0,0x3F400000)
eeObj.WriteMem32(0x00168c6c,0x3c033fab)
end

emuObj.AddVsyncHook(widescreen)