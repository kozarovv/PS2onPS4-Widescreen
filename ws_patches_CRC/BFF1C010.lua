apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Stuntman Ignition (U)(SLUS-21626)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


--Zoom
eeObj.WriteMem32(0x002a83e4,0x3c023f10)

--Y-Fov
eeObj.WriteMem32(0x005AA760,0x3F252945)
end

emuObj.AddVsyncHook(widescreen)