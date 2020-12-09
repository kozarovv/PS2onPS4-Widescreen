apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--80bf033c 6000a427
eeObj.WriteMem32(0x00469f10,0x3c03bfab)

--Y-Fov
--00bf033c 00088244 2d204002
eeObj.WriteMem32(0x00469f9c,0x3c03bf2a)
end

emuObj.AddVsyncHook(widescreen)