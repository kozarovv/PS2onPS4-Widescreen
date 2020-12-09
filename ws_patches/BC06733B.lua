apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Dirge of Cerberus - Final Fantasy VII International Widescreen Hack (16:9) (NTSC-J)

eeObj.WriteMem32(0x0040c5f8,0x3C013FC9)
eeObj.WriteMem32(0x0040c5fc,0x342162D8)
eeObj.WriteMem32(0x0040d1f0,0x3C013EC0)
end

emuObj.AddVsyncHook(widescreen)