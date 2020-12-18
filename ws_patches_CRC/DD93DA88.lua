apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bakusou Convoy Densetsu - Otoko Hanamichi America Roman (J)(SLPM-62378)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f013c 00588144 81100846
eeObj.WriteMem32(0x001b2c34,0x3c013f3a)

--Y-Fov
--9a99993f 00000045
eeObj.WriteMem32(0x00381840,0x3Fe00000)

--------------------------------------------------/
--eeObj.WriteMem32(0x00382194,0x3e800000)
end

emuObj.AddVsyncHook(widescreen)