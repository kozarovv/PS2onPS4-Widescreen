apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Army Men - Sarge's Heroes 2 (PAL-Unk)(SLES-50192)
--comment=Widescreen Hack by El_Patas and Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00008144 e0ffbd27
eeObj.WriteMem32(0x001b1878,0x3c013f22)

--Fov
--803f013c 00a08144 43480200
eeObj.WriteMem32(0x001db1a0,0x3c013fb3)

--Menu Screen and Energy bar fix
--803f013c 00208144 07000046
eeObj.WriteMem32(0x001b1ae0,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)