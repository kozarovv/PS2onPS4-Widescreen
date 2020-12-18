apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00112504,0x3c013ed1)

--Zoom
eeObj.WriteMem32(0x002a1b58,0x3c013f1f)
end

emuObj.AddVsyncHook(widescreen)