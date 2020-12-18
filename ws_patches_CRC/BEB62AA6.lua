apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WWE All-Stars (U)(SLUS-21940)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002d94e0,0x3c013fab)

end

emuObj.AddVsyncHook(widescreen)