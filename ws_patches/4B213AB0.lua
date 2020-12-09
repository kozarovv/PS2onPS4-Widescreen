apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by BloodRaynare

eeObj.WriteMem32(0x00e9e1d8,0x08402c43)
eeObj.WriteMem32(0x00e9e1dc,0x00000000)
eeObj.WriteMem32(0x0100b10c,0x3c013f40)
eeObj.WriteMem32(0x0100b110,0x4481f000)
eeObj.WriteMem32(0x0100b114,0xc6010068)
eeObj.WriteMem32(0x0100b118,0xc602006c)
eeObj.WriteMem32(0x0100b11c,0x461e0843)
eeObj.WriteMem32(0x0100b120,0xe6010068)
eeObj.WriteMem32(0x0100b124,0x083a7878)
end

emuObj.AddVsyncHook(widescreen)