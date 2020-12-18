apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Trigger Man (E)(SLES-53076)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00132cf8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)