apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--aa3f013c 93a92134
eeObj.WriteMem32(0x0022f1a8,0x3c013fe3)
eeObj.WriteMem32(0x0022f1ac,0x34218cc1)

end

emuObj.AddVsyncHook(widescreen)