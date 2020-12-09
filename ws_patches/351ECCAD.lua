apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--683f023c c2f54234
eeObj.WriteMem32(0x0037ef2c,0x3c023f9b)
eeObj.WriteMem32(0x0037ef30,0x34424e7f)
end

emuObj.AddVsyncHook(widescreen)