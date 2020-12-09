apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

--gameplay
eeObj.WriteMem32(0x0030c814,0x3c013f40)
eeObj.WriteMem32(0x0030c818,0x44810000)
eeObj.WriteMem32(0x0030c820,0x4600c602)

--render fix
eeObj.WriteMem32(0x002c10cc,0x3c014455)
eeObj.WriteMem32(0x00291964,0x3c014455)
eeObj.WriteMem32(0x00100480,0x3c014455)
eeObj.WriteMem32(0x001012f8,0x3c014455)
eeObj.WriteMem32(0x00103948,0x3c014455)
eeObj.WriteMem32(0x001eb504,0x3c014455)
end

emuObj.AddVsyncHook(widescreen)