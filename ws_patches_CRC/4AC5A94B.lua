apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


eeObj.WriteMem32(0x00347860,0x080bc5d4)
eeObj.WriteMem32(0x00347864,0x00000000)

eeObj.WriteMem32(0x002f1750,0x3c013f40)
eeObj.WriteMem32(0x002f1754,0x4481f000)
eeObj.WriteMem32(0x002f1758,0xc6010068)
eeObj.WriteMem32(0x002f175c,0xc602006c)
eeObj.WriteMem32(0x002f1760,0x461e0843)
eeObj.WriteMem32(0x002f1764,0xe6010068)
eeObj.WriteMem32(0x002f1768,0x080d1e19)
end

emuObj.AddVsyncHook(widescreen)