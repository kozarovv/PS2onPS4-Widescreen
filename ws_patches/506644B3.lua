apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x001aa3f4,0x3c013f3a)

--Y-Fov
eeObj.WriteMem32(0x0037c730,0x3fe00000)
end

emuObj.AddVsyncHook(widescreen)