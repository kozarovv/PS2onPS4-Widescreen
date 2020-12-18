apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00384af8,0x3f400000)

--Y-Fov
eeObj.WriteMem32(0x00385428,0x412AAAA4)
end

emuObj.AddVsyncHook(widescreen)