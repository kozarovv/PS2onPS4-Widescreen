apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f013c 00008144 2803028e
eeObj.WriteMem32(0x0025909c,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)