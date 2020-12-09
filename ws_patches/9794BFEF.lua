apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hot Shots Golf 3 (U)(SCUS-97130)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00304540,0x42500000)
eeObj.WriteMem32(0x002f47a0,0x42500000)
eeObj.WriteMem32(0x002f480c,0x42500000)

--Y-Fov
--000060430000a043
eeObj.WriteMem32(0x0034a90c,0x43955553)
end

emuObj.AddVsyncHook(widescreen)