apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MVP 07 NCAA Baseball (U)(SLUS-21582)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00458e78,0x3c01bfab)

--Y-Fov
eeObj.WriteMem32(0x00460f24,0x3c013fe3)
eeObj.WriteMem32(0x00460f28,0x34218e39)
end

emuObj.AddVsyncHook(widescreen)