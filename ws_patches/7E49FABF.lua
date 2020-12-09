apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--Widescreen hack 16:9

eeObj.WriteMem32(0x00296670,0x080bad24)
eeObj.WriteMem32(0x00296674,0x00000000)

eeObj.WriteMem32(0x002eb490,0x3c013f40)
eeObj.WriteMem32(0x002eb494,0x4481f000)
eeObj.WriteMem32(0x002eb498,0xc6010068)
eeObj.WriteMem32(0x002eb49C,0xc602006c)
eeObj.WriteMem32(0x002eb4A0,0x461e0843)
eeObj.WriteMem32(0x002eb4A4,0xe6010068)
eeObj.WriteMem32(0x002eb4A8,0x080a599e)
end

emuObj.AddVsyncHook(widescreen)