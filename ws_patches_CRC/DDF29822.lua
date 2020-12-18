apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gladiator - Road to Freedom Remix [NTSC-J] (SLPM-66132)
--comment=Widescreen hack

eeObj.WriteMem32(0x00C86E5C,0x43C00000)
eeObj.WriteMem32(0x00C86E60,0x3FC70FB3)
end

emuObj.AddVsyncHook(widescreen)