apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f023c 1000bfff
eeObj.WriteMem32(0x00236df4,0x3c023f1e)

--Y-Fov
--803f043c 80bf033c 
eeObj.WriteMem32(0x00237244,0x3c03bfac)
end

emuObj.AddVsyncHook(widescreen)