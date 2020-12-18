apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x003e004c,0x3F19999A)
eeObj.WriteMem32(0x003e005c,0x3F19999A)

--Y-Fov
eeObj.WriteMem32(0x003dfc84,0x3FE38E2A)
eeObj.WriteMem32(0x003dfc88,0x3FE38E2A)
end

emuObj.AddVsyncHook(widescreen)