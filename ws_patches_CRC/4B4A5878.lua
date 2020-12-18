apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x002f70a4,0x3c01bf40)

--Zoom
eeObj.WriteMem32(0x002f70d0,0x3c0145b4)
end

emuObj.AddVsyncHook(widescreen)