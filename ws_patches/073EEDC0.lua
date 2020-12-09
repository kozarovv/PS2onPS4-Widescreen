apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0011a4f4,0x3c013f1d)

--Y-Fov
eeObj.WriteMem32(0x0011a598,0x3c014080)
end

emuObj.AddVsyncHook(widescreen)