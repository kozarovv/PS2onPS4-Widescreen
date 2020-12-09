apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Godfather (PAL)(SLES-53967)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00608144
eeObj.WriteMem32(0x0035f2ac,0x3c013f20)

--Y-Fov
--403f013c 00108144 
eeObj.WriteMem32(0x0036f42c,0x3c013f10)

--Cutscene Bars
eeObj.WriteMem32(0x006617B8,0x00000001)
end

emuObj.AddVsyncHook(widescreen)