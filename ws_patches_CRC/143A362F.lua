apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--X-Fov 
eeObj.WriteMem32(0x003227ac,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)