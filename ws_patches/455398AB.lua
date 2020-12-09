apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00123e9c,0x3c033f2a)

--Y-Fov
--3f333333 3f333333
eeObj.WriteMem32(0x004D235C,0x3F066666)
end

emuObj.AddVsyncHook(widescreen)