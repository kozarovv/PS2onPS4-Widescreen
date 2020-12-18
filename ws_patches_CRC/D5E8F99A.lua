apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Keisatsukan - Shinjuku Cop 24 Hours (J)(SLPM-62097)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001cf974,0x3c043fcd)
end

emuObj.AddVsyncHook(widescreen)