apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--663f023c 00208344 66664234 -> 993f023c 00208344 9a994234
eeObj.WriteMem32(0x00131fb4,0x3c023f99)
eeObj.WriteMem32(0x00131fbc,0x3442999a)
end

emuObj.AddVsyncHook(widescreen)