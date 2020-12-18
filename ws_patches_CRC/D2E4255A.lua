apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mad Maestro! (U)(SLUS-20376)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--803f023c 00688244 10808cc7
eeObj.WriteMem32(0x00111400,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)