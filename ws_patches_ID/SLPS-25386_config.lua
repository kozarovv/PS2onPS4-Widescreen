apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= King of Fighters - Maximum Impact [NTSC-J] [SLPS-25386]
--comment= Widescreen Hack by nemesis2000 (pnach by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00384054,0x3c043f24)
eeObj.WriteMem32(0x0038408c,0x46010003)
eeObj.WriteMem32(0x0038ca58,0x3c023f24)
eeObj.WriteMem32(0x0038ca90,0x46010842)
eeObj.WriteMem32(0x0038ca98,0x46010903)

--eeObj.WriteMem32(0x00582a34,0x3fe3aaab)
--eeObj.WriteMem32(0x005a37d0,0x400caaab)
end

emuObj.AddVsyncHook(widescreen)