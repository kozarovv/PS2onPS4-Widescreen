apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Busin 0 - Wizardry Alternative NEO (J)(SLPM-65378)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--8c3f023c cdcc4234
eeObj.WriteMem32(0x00130080,0x3c023f53)
eeObj.WriteMem32(0x00130084,0x34423333)
end

emuObj.AddVsyncHook(widescreen)