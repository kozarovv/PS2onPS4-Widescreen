apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00239304,0x3c013ed0)

--Zoom
--003f013c 00b08144 58010cc6
eeObj.WriteMem32(0x00239460,0x3c013f20)
end

emuObj.AddVsyncHook(widescreen)