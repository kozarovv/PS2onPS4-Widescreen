apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=This Is Football 2003 (E)(SCES-51039)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001541e4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)