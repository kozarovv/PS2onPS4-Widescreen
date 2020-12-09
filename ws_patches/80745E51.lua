apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00174fb4,0x3c023f19)
eeObj.WriteMem32(0x00174fb8,0x3443999a)
end

emuObj.AddVsyncHook(widescreen)