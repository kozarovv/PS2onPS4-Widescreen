apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by sergx12 (NTSC-J by Arapapa)

--Gameplay 16:9

eeObj.WriteMem32(0x00333900,0x3f400000)
eeObj.WriteMem32(0x00333e60,0x3f400000)
eeObj.WriteMem32(0x0034c8a0,0x3f400000)
eeObj.WriteMem32(0x0034d560,0x3f400000)
eeObj.WriteMem32(0x0034f1d0,0x3f400000)
eeObj.WriteMem32(0x0034f4d0,0x3f400000)
eeObj.WriteMem32(0x0034f980,0x3f400000)
eeObj.WriteMem32(0x0034f9e0,0x3f400000)
eeObj.WriteMem32(0x00357140,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)