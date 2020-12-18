apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Dawn of Mana UNDUB SLUS-21574 - Widescreen Hack (16:9) (NTSC-U) (pavachan)
eeObj.WriteMem32(0x00A13280,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)