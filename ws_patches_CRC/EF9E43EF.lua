apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Ys - The Ark of Napishtim - Widescreen Hack (16:9) (NTSC-U)
eeObj.WriteMem32(0x002E0A28,0x3F19999A)
--eeObj.WriteMem32(0x002E0A2C,0x3F80EEEF)
eeObj.WriteMem32(0x00215aa0,0x3c033faa)
end

emuObj.AddVsyncHook(widescreen)