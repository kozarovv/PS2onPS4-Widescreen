apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Super Robot Taisen OG Gaiden (J)(SLPS-25733)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x007FAB94,0x3f400000)

--Zoom
--eeObj.WriteMem32(0x00143810,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)