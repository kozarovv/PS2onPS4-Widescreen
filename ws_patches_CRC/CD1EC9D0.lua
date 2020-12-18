apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Standard Daisenryaku - Dengekisen (J)(SLPM-65704)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom (3D)
eeObj.WriteMem32(0x0013d618,0x3c023f26)

--Y-Fov (3D)
eeObj.WriteMem32(0x0013d6ec,0x08091664)
eeObj.WriteMem32(0x00245990,0x3c083f40)
eeObj.WriteMem32(0x00245994,0x4488f000)
eeObj.WriteMem32(0x00245998,0x461e0843)
eeObj.WriteMem32(0x0024599c,0xe7a10034)
eeObj.WriteMem32(0x002459a0,0x46141843)
eeObj.WriteMem32(0x002459a4,0x0804f5bc)
end

emuObj.AddVsyncHook(widescreen)