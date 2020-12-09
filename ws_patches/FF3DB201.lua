apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Extermination (J)
--comment=Widescreen hack by El_Patas (NTSC-J by Arapapa)

--Widescreen hack 16:9

--4c3f023c cdcc4234 00088244 1c0040ae
eeObj.WriteMem32(0x001d1ff8,0x3c023f19)
eeObj.WriteMem32(0x001d1ffc,0x3442aaab)
end

emuObj.AddVsyncHook(widescreen)