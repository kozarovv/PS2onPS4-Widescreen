apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Black & Bruised (E)(SLES-51620)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001118b8,0x3c023ec0)
end

emuObj.AddVsyncHook(widescreen)