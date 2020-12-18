apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00318ca0,0x3c033fe3)
eeObj.WriteMem32(0x00318ca4,0x34632a8e)
end

emuObj.AddVsyncHook(widescreen)