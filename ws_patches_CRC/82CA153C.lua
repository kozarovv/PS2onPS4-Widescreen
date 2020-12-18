apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00251238,0x3c013fab)


--Zoom
--eeObj.WriteMem32(0x00251194,0x3c013c93)
--eeObj.WriteMem32(0x002512c8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)