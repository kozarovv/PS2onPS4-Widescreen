apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=F1 Championship Season 2000 (J)(SLPS-20044)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--aa3f013c abaa2134 00008144
eeObj.WriteMem32(0x00126840,0x3c013fe3)
eeObj.WriteMem32(0x00126844,0x34218e2a)
end

emuObj.AddVsyncHook(widescreen)