apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Dirge of Cerberus - Final Fantasy VII Widescreen Hack (16:9) (NTSC-U)

eeObj.WriteMem32(0x0040B628,0x3C013FC9)
eeObj.WriteMem32(0x0040B62C,0x342162D8)
eeObj.WriteMem32(0x0040C220,0x3C013EC0)
end

emuObj.AddVsyncHook(widescreen)