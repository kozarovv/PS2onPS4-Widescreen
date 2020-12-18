apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00331e00,0x3f400000)
eeObj.WriteMem32(0x00332360,0x3f400000)
--eeObj.WriteMem32(0x00332364,0x3f9f49ef)
eeObj.WriteMem32(0x0034ada0,0x3f400000)
eeObj.WriteMem32(0x0034ba60,0x3f400000)
eeObj.WriteMem32(0x0034d6a0,0x3f400000)
eeObj.WriteMem32(0x0034d9a0,0x3f400000)
eeObj.WriteMem32(0x0034de50,0x3f400000)
eeObj.WriteMem32(0x0034deb0,0x3f400000)
eeObj.WriteMem32(0x00355640,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)