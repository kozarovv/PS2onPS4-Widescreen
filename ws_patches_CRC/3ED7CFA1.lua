apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=--comment=Widescreen hack by Arapapa and Somebody who fixed A.C.E 3

--Widescreen hack 16:9

--X-Fov
--4c3f023c 00288424 cdcc4334
eeObj.WriteMem32(0x001f1aac,0x3c023f40)

eeObj.WriteMem32(0x0014b630,0x3c0243d6)
eeObj.WriteMem32(0x001f1938,0x3C034099)
eeObj.WriteMem32(0x001f193c,0x34648666)
end

emuObj.AddVsyncHook(widescreen)