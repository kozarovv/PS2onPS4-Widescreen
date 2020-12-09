apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00439690,0x3f100000)

--Zoom
eeObj.WriteMem32(0x00285334,0x3c01bec0)
end

emuObj.AddVsyncHook(widescreen)