apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=dot Hack - Part 1 - Infection - Widescreen Hack (16:9) (NTSC-U) (Hyakki)
eeObj.WriteMem32(0x00A31E90,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)