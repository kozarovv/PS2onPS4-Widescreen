apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas (NTSC-U by Arapapa)

eeObj.WriteMem32(0x003a0498,0x3c013f14)
eeObj.WriteMem32(0x002d4b40,0x3c014010)
eeObj.WriteMem32(0x0022e768,0x3C013F8A)
end

emuObj.AddVsyncHook(widescreen)