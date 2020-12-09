apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001d9208,0x080aa268)
eeObj.WriteMem32(0x001d920c,0x00000000)

eeObj.WriteMem32(0x002a89a0,0x3c013f40)
eeObj.WriteMem32(0x002a89a4,0x4481f000)
eeObj.WriteMem32(0x002a89a8,0xc6010068)
eeObj.WriteMem32(0x002a89ac,0xc602006c)
eeObj.WriteMem32(0x002a89b0,0x461e0843)
eeObj.WriteMem32(0x002a89b4,0xe6010068)
eeObj.WriteMem32(0x002a89b8,0x08076484)
end

emuObj.AddVsyncHook(widescreen)