apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Extermination (J)(SCPS-15011)
--comment=Widescreen Hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x001d1ff8,0x3c023f19)
eeObj.WriteMem32(0x001d1ffc,0x3442999a)
end

emuObj.AddVsyncHook(widescreen)