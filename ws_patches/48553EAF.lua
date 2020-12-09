apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002b9534,0x3FE38E08)
eeObj.WriteMem32(0x002b955c,0x3FE38E08)
end

emuObj.AddVsyncHook(widescreen)