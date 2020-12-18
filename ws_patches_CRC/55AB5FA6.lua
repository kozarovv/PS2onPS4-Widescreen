apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--00 00 80 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 39 B4 C8 3A F4 FD 7F 3F 00 00 00 00
eeObj.WriteMem32(0x0073e190,0x3f400000)

----------------------------------------------------------
--803f023c 940002ae
--eeObj.WriteMem32(0x002916bc,0x3c023f40)
--Zoom
--eeObj.WriteMem32(0x0022d92c,0x3c0343a0)
end

emuObj.AddVsyncHook(widescreen)