apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen Hack 16:9

--X-Fov
--803f013c 00008144 30d66224
eeObj.WriteMem32(0x002c8c60,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)