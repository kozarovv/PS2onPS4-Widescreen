apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0030ee2c,0x44554000)

--Render Fix
eeObj.WriteMem32(0x0030ee28,0x43A00000)
eeObj.WriteMem32(0x0030ee34,0x44100000)

--Y-Fov
--eeObj.WriteMem32(0x0030ee48,0x43b40000)
--ZOOM
--eeObj.WriteMem32(0x0030fe40,0x3Fb00000)
end

emuObj.AddVsyncHook(widescreen)