apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00608144
eeObj.WriteMem32(0x00376e00,0x3c013f1e)

--Y-Fov
--82310446 0400aac4
eeObj.WriteMem32(0x00376e90,0x0811d194)

eeObj.WriteMem32(0x00474650,0x46043182)
eeObj.WriteMem32(0x00474654,0x3c013faa)
eeObj.WriteMem32(0x00474658,0x3421aaab)
eeObj.WriteMem32(0x0047465c,0x4481f000)
eeObj.WriteMem32(0x00474660,0x461e3182)
eeObj.WriteMem32(0x00474664,0x080ddba5)
end

emuObj.AddVsyncHook(widescreen)