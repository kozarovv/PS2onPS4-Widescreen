apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=An American Tail (E)((SLES-54626)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0017ed70,0x3c01bf2a)
end

emuObj.AddVsyncHook(widescreen)