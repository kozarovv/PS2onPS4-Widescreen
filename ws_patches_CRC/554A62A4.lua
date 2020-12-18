apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x002facac,0x3c013ec0)

--Y-Fov
eeObj.WriteMem32(0x0038b768,0x3c013ec0)

--Render fix
eeObj.WriteMem32(0x0038b87c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)