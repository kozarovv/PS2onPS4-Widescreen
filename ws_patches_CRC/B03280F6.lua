apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=ESPN International Winter Sports 2002 (U)(SLUS-20320)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--0040053c 80c7033c
eeObj.WriteMem32(0x0015421c,0x3c053fc0)
end

emuObj.AddVsyncHook(widescreen)