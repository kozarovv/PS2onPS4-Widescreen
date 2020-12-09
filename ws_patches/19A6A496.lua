apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0037db3c,0x3c023f9b)
eeObj.WriteMem32(0x0037db40,0x34424e7f)
end

emuObj.AddVsyncHook(widescreen)