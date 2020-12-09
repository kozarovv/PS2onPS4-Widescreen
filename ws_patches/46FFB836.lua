apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f0a3c ec0060ac
eeObj.WriteMem32(0x0012a92c,0x3c0a3f40)

--Render Fix
--803f033c 80b01646
eeObj.WriteMem32(0x00185e04,0x3c033fb0)

--Zoom
--eeObj.WriteMem32(0x0012a42c,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)