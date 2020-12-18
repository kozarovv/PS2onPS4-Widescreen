apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--00bf013c 00308144 00188344 (1st)
eeObj.WriteMem32(0x00169a34,0x3c01bf2a)
end

emuObj.AddVsyncHook(widescreen)