apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00133514,0x3c023f19)
eeObj.WriteMem32(0x0013351c,0x3444999a)
end

emuObj.AddVsyncHook(widescreen)