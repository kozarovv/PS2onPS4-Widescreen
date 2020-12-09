apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00107414,0x3c013f40)
eeObj.WriteMem32(0x0012a67c,0x3c013f40)

--Y-Fov
eeObj.WriteMem32(0x002c6f40,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)