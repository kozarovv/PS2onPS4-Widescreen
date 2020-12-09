apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 00608244
eeObj.WriteMem32(0x001d4450,0x3c023f40)

--Background picture fix (Zoom)
--a33c023c 0ad74234 00088244 2800a28f (3rd)
eeObj.WriteMem32(0x001d724c,0x3c023c86)

--HUD (Bullet info) Position fix
--a33c023c 0ad74234 00088244 1800a28f (3rd)
eeObj.WriteMem32(0x001d720c,0x3c023c8c)
eeObj.WriteMem32(0x001d722c,0x3c023c80)


end

emuObj.AddVsyncHook(widescreen)