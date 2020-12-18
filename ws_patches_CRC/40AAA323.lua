apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0017eed4,0x3c01bf2a)
eeObj.WriteMem32(0x0017eee8,0x3421aaab)
end

emuObj.AddVsyncHook(widescreen)