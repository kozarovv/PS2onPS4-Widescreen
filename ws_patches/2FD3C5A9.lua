apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov (Gameplay)
eeObj.WriteMem32(0x0024f560,0x0813fd94)
eeObj.WriteMem32(0x004ff650,0x3c013f40)
eeObj.WriteMem32(0x004ff654,0x4481f000)
eeObj.WriteMem32(0x004ff658,0x461e6303)
eeObj.WriteMem32(0x004ff65c,0x08093d59)

--Menu Zoom
--eeObj.WriteMem32(0x002d3998,0x3c043f40)


end

emuObj.AddVsyncHook(widescreen)