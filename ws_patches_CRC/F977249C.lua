apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Viewtiful Joe 2 (NTSC-J)(SLPM-65824)
--comment=Widescreen Hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

--aa3f013c abaa2134 00688144
eeObj.WriteMem32(0x002d9248,0x3c013fe3)
eeObj.WriteMem32(0x002d924c,0x34218e38)
end

emuObj.AddVsyncHook(widescreen)