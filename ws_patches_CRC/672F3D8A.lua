apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--a043023c 00088244 00000000 (2nd)
eeObj.WriteMem32(0x00158c40,0x3c024370)

--Y-Fov
--f043033c 00008344 3200013c
eeObj.WriteMem32(0x00158004,0x3c0343B4)

----------------------------------------------/
--Zoom
--eeObj.WriteMem32(0x00158c00,0x3c02402a)
end

emuObj.AddVsyncHook(widescreen)