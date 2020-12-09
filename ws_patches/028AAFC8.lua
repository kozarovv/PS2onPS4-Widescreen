apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
--A8 AA AA 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 B0 84 4D 00 78 01 00 00 C0 AA 47 00 80 B6 42 00
eeObj.WriteMem32(0x006F2A08,0x3fe38e39)


end

emuObj.AddVsyncHook(widescreen)