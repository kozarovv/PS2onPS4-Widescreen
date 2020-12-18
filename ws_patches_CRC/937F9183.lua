apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Steamboy (J)(SLPS-25502)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00132380,0x3c083fab)

--Zoom
eeObj.WriteMem32(0x0013c428,0x3c043f40)

end

emuObj.AddVsyncHook(widescreen)