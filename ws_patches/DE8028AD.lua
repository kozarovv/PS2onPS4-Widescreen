apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Ultimate Vol.13 - Kyousou Tansha King (J)(SLPM-62399)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--803f013c 00288144 e0000224
eeObj.WriteMem32(0x0013068c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)