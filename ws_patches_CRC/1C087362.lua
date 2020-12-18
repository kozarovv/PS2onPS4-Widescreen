apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Wide Screen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00165a00,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)