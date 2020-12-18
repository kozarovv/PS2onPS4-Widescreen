apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Metropolismania (E)(SLES-51162)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0012a92c,0x3c0a3f40)

--Y-Fov
eeObj.WriteMem32(0x00186564,0x3c033fb0)
end

emuObj.AddVsyncHook(widescreen)