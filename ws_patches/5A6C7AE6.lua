apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0016a324,0x3c023f99)
eeObj.WriteMem32(0x0016a32c,0x34429991)
end

emuObj.AddVsyncHook(widescreen)