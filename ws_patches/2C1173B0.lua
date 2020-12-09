apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov 
eeObj.WriteMem32(0x002ba160,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)