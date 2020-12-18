apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Lotus Challenge (J)(SLPS-20247)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0012d8e0,0x3c023ec0)

--Y-Fov
eeObj.WriteMem32(0x0012d8ec,0x3c023fe3)
eeObj.WriteMem32(0x0012d8f0,0x34428e38)
end

emuObj.AddVsyncHook(widescreen)