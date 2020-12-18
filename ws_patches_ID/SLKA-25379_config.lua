apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sengoku Musou 2 (K)(SLKA-25379)
--comment=Widescreen Hack (16:9) by ElHecht (NTSC-K by Arapapa)

eeObj.WriteMem32(0x00179868,0x3c023f19)
eeObj.WriteMem32(0x00179870,0x3442999a)

eeObj.WriteMem32(0x00179a28,0x3c023f19)
eeObj.WriteMem32(0x00179a30,0x3442999a)

eeObj.WriteMem32(0x00179cf4,0x3c03440a)
eeObj.WriteMem32(0x00179c94,0x3c03440a)
end

emuObj.AddVsyncHook(widescreen)