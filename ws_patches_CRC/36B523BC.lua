apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Fov
eeObj.WriteMem32(0x002be1f8,0x3c013fd5)

--Zoom
eeObj.WriteMem32(0x003725b8,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)