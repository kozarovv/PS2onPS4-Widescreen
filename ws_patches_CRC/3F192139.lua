apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00158e40,0x3c034370)

--Y-Fov
eeObj.WriteMem32(0x001581dc,0x3c0343b4)
end

emuObj.AddVsyncHook(widescreen)