apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--8041023c 9000bfff 00088244
eeObj.WriteMem32(0x0024aae4,0x3c024140)
end

emuObj.AddVsyncHook(widescreen)