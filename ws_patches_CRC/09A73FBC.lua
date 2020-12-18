apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov Re-play
--803f023c 01000426
eeObj.WriteMem32(0x0025ab34,0x3c023fab)

--X-Fov Game play
--803f023c 01000424 00608244 (3rd)
eeObj.WriteMem32(0x0025a388,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)