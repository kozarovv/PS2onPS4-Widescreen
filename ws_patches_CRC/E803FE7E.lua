apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Operative - No One Lives Forever (U)(SLUS-20028)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom #1
--003f033c 00088344 0c000de6
eeObj.WriteMem32(0x003018e4,0x3c033f17)

--Y-Fov #1
--42080f46 00a980c7
eeObj.WriteMem32(0x003018f8,0x08030000)
eeObj.WriteMem32(0x000c0000,0x460f0842)
eeObj.WriteMem32(0x000c0004,0x3c013f59)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0842)
eeObj.WriteMem32(0x000c0010,0x080c063f)

--X-Fov #2
--94a881c79ca880c7
eeObj.WriteMem32(0x002f03d8,0x08030008)
eeObj.WriteMem32(0x000c0020,0xc781a894)
eeObj.WriteMem32(0x000c0024,0x3c013f40)
eeObj.WriteMem32(0x000c0028,0x4481f000)
eeObj.WriteMem32(0x000c002c,0x461e0842)
eeObj.WriteMem32(0x000c0030,0x080bc0f7)

----------------------------------/
--eeObj.WriteMem32(0x0070CEA8,0x3FECCCCC)
--eeObj.WriteMem32(0x0070CEAC,0x3FAF5C29)


end

emuObj.AddVsyncHook(widescreen)