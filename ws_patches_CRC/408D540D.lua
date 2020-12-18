apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--8041023c 00008244 00000000 (1st)
eeObj.WriteMem32(0x00129320,0x3c024140)
end

emuObj.AddVsyncHook(widescreen)