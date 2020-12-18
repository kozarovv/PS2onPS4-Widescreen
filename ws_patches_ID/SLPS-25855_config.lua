apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Battle of Sunrise (J)(SLPS-25855)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002c1d54,0x3F19999A)
end

emuObj.AddVsyncHook(widescreen)