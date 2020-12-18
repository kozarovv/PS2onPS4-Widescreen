apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x004d13d4,0x3fe38e2a)

--Zoom
eeObj.WriteMem32(0x002b5c64,0x3c013c28)
end

emuObj.AddVsyncHook(widescreen)