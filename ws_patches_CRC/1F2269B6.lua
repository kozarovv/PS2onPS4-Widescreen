apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02a51946 b00006e6
eeObj.WriteMem32(0x003bc004,0x08118044)

eeObj.WriteMem32(0x00460110,0x4619a502)
eeObj.WriteMem32(0x00460114,0x3c013f40)
eeObj.WriteMem32(0x00460118,0x4481f000)
eeObj.WriteMem32(0x0046011c,0x461ea502)
eeObj.WriteMem32(0x00460120,0x080ef002)
end

emuObj.AddVsyncHook(widescreen)