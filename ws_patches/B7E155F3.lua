apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Baseball 2003 - Akikigou (J)(SLPM-65379))
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00612ea8,0x3faaaaab)

--Zoom
eeObj.WriteMem32(0x00612eac,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)