apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Saiyuki Reload - Gunlock (K)(SLKA-15035)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f023c c03e033c
eeObj.WriteMem32(0x001b23fc,0x3c023F2A)
end

emuObj.AddVsyncHook(widescreen)