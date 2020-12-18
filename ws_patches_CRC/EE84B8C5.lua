apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Another Century's Episode 2 [Special Vocal Version] (J)(SLPS-25829)
--comment=--comment=Widescreen hack by Arapapa and Somebody who fixed A.C.E 3

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001f1b7c,0x3c023f40)

eeObj.WriteMem32(0x0014b630,0x3c0243d6)
eeObj.WriteMem32(0x001f1a08,0x3C034099)
eeObj.WriteMem32(0x001f1a0c,0x34648666)
end

emuObj.AddVsyncHook(widescreen)