apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--80bf023c e001b027 
eeObj.WriteMem32(0x002ac6f8,0x3c02bf40)
end

emuObj.AddVsyncHook(widescreen)