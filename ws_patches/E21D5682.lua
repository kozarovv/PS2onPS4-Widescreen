apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kidou Senshi Gundam - Climax U.C. (J)(SLPS-25627)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0011156c,0x3c034370)

--Y-Fov
eeObj.WriteMem32(0x00111110,0x3c0243b4)
end

emuObj.AddVsyncHook(widescreen)