apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--963f013c 66662134
--c83f013c 83882134
eeObj.WriteMem32(0x0011194c,0x3c013fc8)
eeObj.WriteMem32(0x00111950,0x34218883)

--Zoom
--003f013c 00a08144 02000146
eeObj.WriteMem32(0x00111a5c,0x3c013f68)
end

emuObj.AddVsyncHook(widescreen)