apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sega Ages 2500 Series Vol. 27 - Panzer Dragoon (J)(SLPM-62718)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x009e7838,0x3FE38E2A)
end

emuObj.AddVsyncHook(widescreen)