apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f013c 00988144 42280146
eeObj.WriteMem32(0x002fb83c,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)