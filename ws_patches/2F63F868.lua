apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00e08144
eeObj.WriteMem32(0x001c8974,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)