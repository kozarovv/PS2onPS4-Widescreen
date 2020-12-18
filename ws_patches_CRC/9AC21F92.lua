apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Bokujou Monogatari - Pure Innocent Life (J)(SLPS-25763)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00236A30,0x3F19999A)
end

emuObj.AddVsyncHook(widescreen)