apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dennou Senki Virtual-On - Marz (J)(SLPM-65303)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 00608244 803f023c 00688244 (4th)
eeObj.WriteMem32(0x0014ff74,0x3c023f40)

--Zoom out + Y-Fov(-) 
--eeObj.WriteMem32(0x0014ff7c,0x3c023f70)
end

emuObj.AddVsyncHook(widescreen)