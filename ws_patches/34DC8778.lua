apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00216954,0x3c023f20)
eeObj.WriteMem32(0x00216958,0x34426d2f)

--Zoom
eeObj.WriteMem32(0x00216944,0x3c02443b)
end

emuObj.AddVsyncHook(widescreen)