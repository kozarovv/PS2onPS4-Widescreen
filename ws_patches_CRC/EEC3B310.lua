apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Sangoku Musou 2 (J)(SLPM-65053)
--comment=Widescreen hack by 99skull (NTSC-J by Arapapa)

--16:9 widescreen hack 

eeObj.WriteMem32(0x001759b8,0x3c0243b4)

eeObj.WriteMem32(0x0018747c,0x3c024082)

eeObj.WriteMem32(0x0018770c,0x3c024370)

eeObj.WriteMem32(0x001878bc,0x3c0243b4)

eeObj.WriteMem32(0x0025e828,0x3c023faa)
eeObj.WriteMem32(0x0025e82c,0x3442aaab)
eeObj.WriteMem32(0x0025e830,0x44820000)

eeObj.WriteMem32(0x0025e83c,0x3C023FAA)
eeObj.WriteMem32(0x0025e840,0x3442AAAB)
eeObj.WriteMem32(0x0025e844,0x44820000)
end

emuObj.AddVsyncHook(widescreen)