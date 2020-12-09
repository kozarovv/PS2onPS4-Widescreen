apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x001ce734,0x3c013f26)

--Y-Fov
eeObj.WriteMem32(0x001ce764,0x3c013fe3)
eeObj.WriteMem32(0x001ce768,0x34218e32)
end

emuObj.AddVsyncHook(widescreen)