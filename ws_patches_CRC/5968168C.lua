apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00136a60,0x3c023f25)

--Y-Fov
eeObj.WriteMem32(0x0012e6c0,0x3c023f1f)
eeObj.WriteMem32(0x0012e6c4,0x344249f1)

eeObj.WriteMem32(0x0012e394,0x3c023f1f)
eeObj.WriteMem32(0x0012e398,0x344249f1)

--Fog distance
--eeObj.WriteMem32(0x00161408,0x3c033e80)
end

emuObj.AddVsyncHook(widescreen)