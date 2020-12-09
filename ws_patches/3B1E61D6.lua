apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 00008244 00000000
eeObj.WriteMem32(0x001f1550,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)