apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00112c34,0x3c013fc8)
eeObj.WriteMem32(0x00112c38,0x34218883)

--Zoom
eeObj.WriteMem32(0x00112d44,0x3c013f68)
end

emuObj.AddVsyncHook(widescreen)