apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sousei no Aquarion [NTSC-J] (SLPS-25519)
--comment=Widescreen

eeObj.WriteMem32(0x00729434,0x3F800000)
eeObj.WriteMem32(0x0043F958,0x3FD11112)
end

emuObj.AddVsyncHook(widescreen)