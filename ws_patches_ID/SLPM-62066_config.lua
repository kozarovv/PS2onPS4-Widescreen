apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Machi-ing Maker (J)(SLPM-62066)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f0a3c ff44023c
eeObj.WriteMem32(0x0012b278,0x3c0a3f40)

--Render Fix
--803f033c 80b01646
eeObj.WriteMem32(0x00127e14,0x3c033fb0)
end

emuObj.AddVsyncHook(widescreen)