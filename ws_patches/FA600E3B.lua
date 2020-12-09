apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Momotarou Dentetsu USA (J)(SLPM-62555)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--3c0050c4 00000000 00000000 03a50046
eeObj.WriteMem32(0x002b2a00,0x080c4e28)

eeObj.WriteMem32(0x003138a0,0x3c013f40)
eeObj.WriteMem32(0x003138a4,0x4481f000)
eeObj.WriteMem32(0x003138a8,0x461e6b42)
eeObj.WriteMem32(0x003138ac,0x080aca81)
end

emuObj.AddVsyncHook(widescreen)