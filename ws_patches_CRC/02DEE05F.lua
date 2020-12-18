apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0013dfc0,0x3c023f22)

--Y-Fov
eeObj.WriteMem32(0x0013dff0,0x3c023fe3)
eeObj.WriteMem32(0x0013dff4,0x34428e32)
end

emuObj.AddVsyncHook(widescreen)