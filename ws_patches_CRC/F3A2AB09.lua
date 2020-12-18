apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 107 - The Honoo no Kakutou Banchou (J)(SLPS-20474)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom in
--003f013c 00008144 2000b07f
eeObj.WriteMem32(0x001843cc,0x3c013ec5)

--X-Fov + Zoom Out
--803f013c 00708144 80000426
eeObj.WriteMem32(0x00184450,0x3c013f40)
--eeObj.WriteMem32(0x00184520,0x3c013fb0)
end

emuObj.AddVsyncHook(widescreen)