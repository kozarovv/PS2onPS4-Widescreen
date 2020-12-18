apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--X-Fov 
eeObj.WriteMem32(0x00306e5c,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)