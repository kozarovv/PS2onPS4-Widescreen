apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Moto GP (U)(SLUS-20058)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-fov
--803f013c 00088144 80020524
eeObj.WriteMem32(0x001f66a0,0x3c013f40)

--HUD speedometer fix
eeObj.WriteMem32(0x001acddc,0x3c013f40)
eeObj.WriteMem32(0x001ad578,0x3c013f40)

--Render fix
eeObj.WriteMem32(0x001828a4,0x3c014330)
eeObj.WriteMem32(0x00185cd4,0x3c014330)
eeObj.WriteMem32(0x0021477c,0x3c014010)
eeObj.WriteMem32(0x00214780,0x34210000)
end

emuObj.AddVsyncHook(widescreen)