apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-fov
--803f013c 00008144 913f013c
eeObj.WriteMem32(0x001c1ac4,0x3c013f40)

--Render fix
eeObj.WriteMem32(0x00161c98,0x3c014330)
eeObj.WriteMem32(0x001ea0dc,0x3c014330)
eeObj.WriteMem32(0x00214fc4,0x3c014010)
eeObj.WriteMem32(0x00214fc8,0x34210000)

--HUD speedometer fix
--803f013c 00008144
eeObj.WriteMem32(0x00246ac0,0x3c013f40)
eeObj.WriteMem32(0x00246ea8,0x3c013f40)
eeObj.WriteMem32(0x00247518,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)