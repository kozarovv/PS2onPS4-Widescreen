apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by FeRcHuLeS (original hacks) and Aced14 (ELF hacks)

eeObj.WriteMem32(0x001a1da0,0x00003fe3)
eeObj.WriteMem32(0x001a1da4,0x00008e39)
--eeObj.WriteMem32(0x0012e7d4,0x3c013f40)
--eeObj.WriteMem32(0x0012e7d8,0x44810000)
end

emuObj.AddVsyncHook(widescreen)