apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Chou Battle Houshi (K)(SLKA-25010)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom (Event)
--803f013c 00008144 (1st)
eeObj.WriteMem32(0x00107a94,0x3c013f40)

--Zoom (Gameplay)
--803f013c 00008144 (9th)
eeObj.WriteMem32(0x0012b13c,0x3c013f40)

--Y-Fov
--803f013c 00a08144 cc240b0c
eeObj.WriteMem32(0x002c8260,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)