apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MVP 06 NCAA Baseball (U)(SLUS-21367)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--80bf013c 00008144 1000a427
eeObj.WriteMem32(0x004494f8,0x3c01bfab)

--Y-Fov
--aa3f013c abaa2134 00008144 0800e003 (2nd)
eeObj.WriteMem32(0x004515a4,0x3c013fe3)
eeObj.WriteMem32(0x004515a8,0x34218e39)

end

emuObj.AddVsyncHook(widescreen)