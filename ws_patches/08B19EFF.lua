apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa and Somebody who fixed A.C.E 3

--Widescreen hack 16:9

--X-Fov
--4c3f023c 00288424 cdcc4334
eeObj.WriteMem32(0x0022e89c,0x3c023f19)
eeObj.WriteMem32(0x0022e8a4,0x3443999a)

eeObj.WriteMem32(0x0016c190,0x3c0243d6)
eeObj.WriteMem32(0x0022e718,0x3C034099)
eeObj.WriteMem32(0x0022e724,0x34648666)

--/HUD fix
--4c3f033c 803f023c cdcc6734
--eeObj.WriteMem32(0x001c5b7c,0x3c033f19)
--eeObj.WriteMem32(0x001c5b84,0x3467999a)
end

emuObj.AddVsyncHook(widescreen)