apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00378d70,0x3c013f1e)

--Y-Fov
eeObj.WriteMem32(0x00378e00,0x0811b3b4)

eeObj.WriteMem32(0x0046ced0,0x46043182)
eeObj.WriteMem32(0x0046ced4,0x3c013faa)
eeObj.WriteMem32(0x0046ced8,0x3421aaab)
eeObj.WriteMem32(0x0046cedc,0x4481f000)
eeObj.WriteMem32(0x0046cee0,0x461e3182)
eeObj.WriteMem32(0x0046cee4,0x080de381)
end

emuObj.AddVsyncHook(widescreen)