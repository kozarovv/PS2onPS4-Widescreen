apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00135de4,0x3c013f1e)

--Y-Fov
eeObj.WriteMem32(0x00135e28,0x3c013faa)
eeObj.WriteMem32(0x00135e2c,0x3421aaab)
eeObj.WriteMem32(0x00135e34,0x4481f000)
eeObj.WriteMem32(0x00135e38,0x461ebdc2)
end

emuObj.AddVsyncHook(widescreen)