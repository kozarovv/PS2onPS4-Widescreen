apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x003168c8,0x080d9b04)
eeObj.WriteMem32(0x003168cc,0x00000000)

eeObj.WriteMem32(0x00366c10,0x3c013f40)
eeObj.WriteMem32(0x00366c14,0x4481f000)
eeObj.WriteMem32(0x00366c18,0xc6010068)
eeObj.WriteMem32(0x00366c1c,0xc602006c)
eeObj.WriteMem32(0x00366c20,0x461e0843)
eeObj.WriteMem32(0x00366c24,0xe6010068)
eeObj.WriteMem32(0x00366c28,0x080c5a34)
end

emuObj.AddVsyncHook(widescreen)