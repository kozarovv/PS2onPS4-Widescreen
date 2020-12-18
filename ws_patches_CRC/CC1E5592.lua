apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Monster Farm 5 - Circus Caravan [NTSC-J] (SLPS-25585)
--comment=Widescreen Hack by Little Gaint

eeObj.WriteMem32(0x004EFEEC,0x3F19999A)
eeObj.WriteMem32(0x00590D94,0x43E00000)
end

emuObj.AddVsyncHook(widescreen)