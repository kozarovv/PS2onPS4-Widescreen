apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NASCAR Heat 2002 (U)(SLUS-20176)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00243550,0x3c013ec0)

--Y-Fov
eeObj.WriteMem32(0x0024356c,0x3c01bfa0)
eeObj.WriteMem32(0x00243570,0x34216d37)
end

emuObj.AddVsyncHook(widescreen)