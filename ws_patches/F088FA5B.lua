apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tekken Nina Williams In Death By Degree (K)(SCKA-20039)
--comment=Widescreen hack (NTSC-K by Arapapa)
eeObj.WriteMem32(0x00188250,0x3c023fe3)
eeObj.WriteMem32(0x00188258,0x3443bbd6)
eeObj.WriteMem32(0x0018606c,0x3c023fe3)
eeObj.WriteMem32(0x00186070,0x3443bbd6)
eeObj.WriteMem32(0x001f5c88,0x3c023fe3)
eeObj.WriteMem32(0x001f5c90,0x3442bbd6)

--black border's fix by nemesis2000
eeObj.WriteMem32(0x0032b0a8,0x3c023f80)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x005D9054,0x3faaaaaa)

--No interlacing codes by noblur88
--10 00 02 DE 00 00 C2 FC 18 00 03 DE 00 00 A3 FC
eeObj.WriteMem32(0x00102a84,0x34021400)
end

emuObj.AddVsyncHook(widescreen)