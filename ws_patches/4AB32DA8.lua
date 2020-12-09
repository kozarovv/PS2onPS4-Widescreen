apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--0000f043 eeee6e3f 0000e043
eeObj.WriteMem32(0x0024b6b8,0x44200000)
end

emuObj.AddVsyncHook(widescreen)