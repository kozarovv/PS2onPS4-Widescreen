apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shox (K)(SLPM-64524)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--aa3f013c abaa2134 00008144 1000828d
--e33f013c 2a8e2134 00008144 1000828d
eeObj.WriteMem32(0x0020655c,0x3c013fe3)
eeObj.WriteMem32(0x00206560,0x34218e2a)
end

emuObj.AddVsyncHook(widescreen)