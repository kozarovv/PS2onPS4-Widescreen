apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=This is Football 2003 (K)(SCPS-56013)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00188144 6e3f013c
eeObj.WriteMem32(0x001548b4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)