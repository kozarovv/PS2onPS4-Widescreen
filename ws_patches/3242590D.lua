apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001c235c,0x3c013f40)

--Render fix
eeObj.WriteMem32(0x00161f70,0x3c014330)
eeObj.WriteMem32(0x001ea984,0x3c014330)
eeObj.WriteMem32(0x002255e4,0x3c014010)
eeObj.WriteMem32(0x002255e8,0x34210000)

--HUD speedometer fix
--803f013c 00008144
eeObj.WriteMem32(0x002570e8,0x3c013f40)
eeObj.WriteMem32(0x002574d0,0x3c013f40)
eeObj.WriteMem32(0x00257b40,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)