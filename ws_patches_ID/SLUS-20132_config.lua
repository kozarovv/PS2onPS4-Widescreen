apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Army Men - Sarge's Heroes 2 (U)(SLUS-20132)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00008144 e0ffbd27
eeObj.WriteMem32(0x001b1978,0x3c013f22)

--Fov
--803f013c 00a08144 43480200
eeObj.WriteMem32(0x001db2a0,0x3c013fb3)

--Menu Screen and Energy bar fix
--803f013c 00208144 07000046
eeObj.WriteMem32(0x001b1be0,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)