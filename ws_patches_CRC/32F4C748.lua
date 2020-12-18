apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov

eeObj.WriteMem32(0x00223424,0x080b4230)
eeObj.WriteMem32(0x00223428,0x00000000)

eeObj.WriteMem32(0x002d08c0,0x3c013f40)
eeObj.WriteMem32(0x002d08c4,0x4481f000)
eeObj.WriteMem32(0x002d08c8,0xc6010068)
eeObj.WriteMem32(0x002d08cc,0xc602006c)
eeObj.WriteMem32(0x002d08d0,0x461e0843)
eeObj.WriteMem32(0x002d08d4,0xe6010068)
eeObj.WriteMem32(0x002d08d8,0x08088d0b)
end

emuObj.AddVsyncHook(widescreen)