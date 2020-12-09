apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=F1 2002 (U)(SLUS-20455)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002c6c30,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)