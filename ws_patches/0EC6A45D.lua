apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--X-Fov 

--cdcc4c3f 8d976e3f
eeObj.WriteMem32(0x002b427c,0x3F19999A)
end

emuObj.AddVsyncHook(widescreen)