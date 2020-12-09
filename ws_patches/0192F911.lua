apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by sergx12 (NTSC-K by Arapapa)

--Gameplay 16:9

eeObj.WriteMem32(0x00332f20,0x3f400000)
eeObj.WriteMem32(0x00333480,0x3f400000)
eeObj.WriteMem32(0x0034bec0,0x3f400000)
eeObj.WriteMem32(0x0034cb80,0x3f400000)
eeObj.WriteMem32(0x0034e7d0,0x3f400000)
eeObj.WriteMem32(0x0034ead0,0x3f400000)
eeObj.WriteMem32(0x0034ef80,0x3f400000)
eeObj.WriteMem32(0x0034efe0,0x3f400000)
eeObj.WriteMem32(0x003575c0,0x3f400000)

--0000803f efee6e3f 00000045
end

emuObj.AddVsyncHook(widescreen)