apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x001a917c,0x3c01bec0)

--Y-Fov
eeObj.WriteMem32(0x00222d40,0x3c023fe3)
eeObj.WriteMem32(0x00222d48,0x34428e2a)
end

emuObj.AddVsyncHook(widescreen)