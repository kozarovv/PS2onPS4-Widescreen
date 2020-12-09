apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Godfather (NTSC-J)(SLPM-66710)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--zoom
--003f013c 00608144 ca7C0B0C 02a30c46
eeObj.WriteMem32(0x0036006c,0x3c013f20)

--Y fov
--5b3f013c b86d2134 00008144 5c00053c
eeObj.WriteMem32(0x003702a8,0x3c013f24)
eeObj.WriteMem32(0x003702ac,0x34219247)
end

emuObj.AddVsyncHook(widescreen)