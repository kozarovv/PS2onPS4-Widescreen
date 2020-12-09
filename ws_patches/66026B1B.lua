apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--003f013c 00608144 ae0c090c (2nd)
eeObj.WriteMem32(0x001fa370,0x3c013ed0)

--Zoom
--003f013c 00b88144 58020cc6
eeObj.WriteMem32(0x001fa4c0,0x3c013f20)

--Render Fix
--003f013c 00a08144 40ad1026
eeObj.WriteMem32(0x001f9620,0x3c013f30)
end

emuObj.AddVsyncHook(widescreen)