apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00181258,0x3c013f40)

--Y-Fov fix (When Wide option is turnned on)
eeObj.WriteMem32(0x00288950,0x3f088888)
end

emuObj.AddVsyncHook(widescreen)