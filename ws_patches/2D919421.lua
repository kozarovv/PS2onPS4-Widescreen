apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00110d0c,0x3c01bf2a)

--Zoom
eeObj.WriteMem32(0x00110c78,0x3c01bfab)
end

emuObj.AddVsyncHook(widescreen)