apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0017d72c,0x3c013f94)
eeObj.WriteMem32(0x0017d730,0x3421ef4e)

--Y-Fov
eeObj.WriteMem32(0x0017d62c,0x3c013fe3)
eeObj.WriteMem32(0x0017d630,0x3421ef4e)
end

emuObj.AddVsyncHook(widescreen)