apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom #1
--003f033c 00088344 0c000de6
eeObj.WriteMem32(0x002f9ca4,0x3c033f17)

--Y-Fov #1
--42080f46 00a980c7
eeObj.WriteMem32(0x002f9cb4,0x08030000)
eeObj.WriteMem32(0x000c0000,0x460f0842)
eeObj.WriteMem32(0x000c0004,0x3c013f59)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0842)
eeObj.WriteMem32(0x000c0010,0x080be72e)

--X-Fov #2
eeObj.WriteMem32(0x002e83d8,0x08030008)
eeObj.WriteMem32(0x000c0020,0xc781a88c)
eeObj.WriteMem32(0x000c0024,0x3c013f40)
eeObj.WriteMem32(0x000c0028,0x4481f000)
eeObj.WriteMem32(0x000c002c,0x461e0842)
eeObj.WriteMem32(0x000c0030,0x080ba0f7)
end

emuObj.AddVsyncHook(widescreen)