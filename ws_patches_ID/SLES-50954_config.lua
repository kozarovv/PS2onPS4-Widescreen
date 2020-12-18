apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tokyo Road Race (E)(SLES-50954)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00607888,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)