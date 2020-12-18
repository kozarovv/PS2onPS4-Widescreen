apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Formula One 2001 (J)(SCPS-15019)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--abaaaa3e 8988083e
eeObj.WriteMem32(0x002ed188,0x3FECCCCD)
--39b4283f 39b4283f 39b4283f 39b4283f 39b4283f 39b4283f 39b4283f 39b4283f 00000000
eeObj.WriteMem32(0x002c3364,0x3f1a0000)

--Y-Fov
--0000003f 00000000 0000c042
eeObj.WriteMem32(0x002c6ef0,0x3F2AAA9F)

--Rendeer Fix
--c93f013c db0f2134 00c88144
eeObj.WriteMem32(0x00209d68,0x3c013ff0)
eeObj.WriteMem32(0x00209d6c,0x34210000)
end

emuObj.AddVsyncHook(widescreen)