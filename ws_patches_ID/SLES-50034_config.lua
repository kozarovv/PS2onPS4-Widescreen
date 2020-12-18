apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Moto GP (E)(SLES-50034)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-fov
--803f013c 00088144 80020524
eeObj.WriteMem32(0x00206cc0,0x3c013f40)

--HUD speedometer fix
eeObj.WriteMem32(0x001b089c,0x3c013f40)
eeObj.WriteMem32(0x001b1038,0x3c013f40)

--Render fix
eeObj.WriteMem32(0x00185704,0x3c014330)
eeObj.WriteMem32(0x00188c34,0x3c014330)
eeObj.WriteMem32(0x002257dc,0x3c014010)
eeObj.WriteMem32(0x002257e0,0x34210000)
end

emuObj.AddVsyncHook(widescreen)