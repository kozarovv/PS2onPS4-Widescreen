apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MX 2002 featuring Ricky Carmichael (U)(SLUS-20072)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002657d0,0x080a9af4)
eeObj.WriteMem32(0x002657d4,0x00000000)

eeObj.WriteMem32(0x002a6bd0,0x3c013f40)
eeObj.WriteMem32(0x002a6bd4,0x4481f000)
eeObj.WriteMem32(0x002a6bd8,0xc6010068)
eeObj.WriteMem32(0x002a6bdc,0xc602006c)
eeObj.WriteMem32(0x002a6be0,0x461e0843)
eeObj.WriteMem32(0x002a6be4,0xe6010068)
eeObj.WriteMem32(0x002a6be8,0x080995f6)
end

emuObj.AddVsyncHook(widescreen)