apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--4940023c 00088344 db0f4434
eeObj.WriteMem32(0x00295cbc,0x3c024086)

s--Y-Fov
--aa3f023c abaa4234  00688244(5th, 6th)
eeObj.WriteMem32(0x002d9504,0x3c023fe3)
eeObj.WriteMem32(0x002d9508,0x34428e32)

eeObj.WriteMem32(0x0032aba8,0x3c023fe3)
eeObj.WriteMem32(0x0032abac,0x34428e32)

----------------------------------------/
--eeObj.WriteMem32(0x00142df4,0x08042578)

--eeObj.WriteMem32(0x001095e0,0x46070202)
--eeObj.WriteMem32(0x001095e4,0x3c013f40)
--eeObj.WriteMem32(0x001095e8,0x00000000)
--eeObj.WriteMem32(0x001095ec,0x4481f000)
--eeObj.WriteMem32(0x001095f0,0x461e4202)
--eeObj.WriteMem32(0x001095f4,0x08050b7e)
end

emuObj.AddVsyncHook(widescreen)