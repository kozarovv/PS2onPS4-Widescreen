apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00008144 913f013c (1st)
eeObj.WriteMem32(0x001139d4,0x3c013f40)

--Render fix
--a043013c 00688144 06ab0046
eeObj.WriteMem32(0x001a4098,0x3c014330)
--9c3f013c f5282134 00088144 (1st)
eeObj.WriteMem32(0x001c83ac,0x3c014010)
eeObj.WriteMem32(0x001c83b0,0x34210000)
--a043013c 00688144 06b30046
eeObj.WriteMem32(0x002691a8,0x3c014330)

--HUD speedometer fix
eeObj.WriteMem32(0x002b59f0,0x3c013f40)
eeObj.WriteMem32(0x002b5e20,0x3c013f40)
eeObj.WriteMem32(0x002b64a0,0x3c013f40)

----------------------------------------------------/
--Always Turn on / off Wide option (Funny :D)
--eeObj.WriteMem32(0x0036D088,0x00000100)
end

emuObj.AddVsyncHook(widescreen)