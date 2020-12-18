apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Lupin Sansei - Columbus no Isan wa Akenisomaru (J)(SLPS-25430)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 00008244 00000000
eeObj.WriteMem32(0x00211b34,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)