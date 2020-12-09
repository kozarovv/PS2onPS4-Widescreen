apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001139d4,0x3c013f40)

--Render fix
eeObj.WriteMem32(0x001a4040,0x3c014330)
eeObj.WriteMem32(0x001c8354,0x3c014010)
eeObj.WriteMem32(0x001c8358,0x34210000)
eeObj.WriteMem32(0x002692a0,0x3c014330)


--HUD speedometer fix
eeObj.WriteMem32(0x002b5a98,0x3c013f40)
eeObj.WriteMem32(0x002b5ec8,0x3c013f40)
eeObj.WriteMem32(0x002b6510,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)