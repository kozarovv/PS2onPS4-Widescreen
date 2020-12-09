apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00566ee0,0x3f400000)

--Y-Fov
eeObj.WriteMem32(0x001e8090,0x080ad6b9)
eeObj.WriteMem32(0x002b5ae4,0x3c013f40)
eeObj.WriteMem32(0x002b5ae8,0x4481f000)
eeObj.WriteMem32(0x002b5aec,0x461ec603)
eeObj.WriteMem32(0x002b5af0,0xe7b80010)
eeObj.WriteMem32(0x002b5af4,0x0807a025)
end

emuObj.AddVsyncHook(widescreen)