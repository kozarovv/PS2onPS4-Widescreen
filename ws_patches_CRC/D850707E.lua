apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Godfather (NTSC-U)(SLUS-21385)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00608144
eeObj.WriteMem32(0x0035f26c,0x3c013f20)

--Fov
--5b3f013c b86d2134 00008144 5c00053c
eeObj.WriteMem32(0x0036f468,0x3c013f24)
eeObj.WriteMem32(0x0036f46c,0x34219247)

--Cutscene Bars
eeObj.WriteMem32(0x006617B8,0x00000001)
end

emuObj.AddVsyncHook(widescreen)