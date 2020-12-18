apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001c82c0,0x080f2450)
eeObj.WriteMem32(0x001c82c4,0x00000000)

eeObj.WriteMem32(0x003c9140,0x3c013f40)
eeObj.WriteMem32(0x003c9144,0x4481f000)
eeObj.WriteMem32(0x003c9148,0xc6010068)
eeObj.WriteMem32(0x003c914c,0xc602006c)
eeObj.WriteMem32(0x003c9150,0x461e0843)
eeObj.WriteMem32(0x003c9154,0xe6010068)
eeObj.WriteMem32(0x003c9158,0x080720b2)
end

emuObj.AddVsyncHook(widescreen)