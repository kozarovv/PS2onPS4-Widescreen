apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney's Chicken Little (NTSC-U)(SLUS-21088)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00310ee0,0x3c013fc0)
eeObj.WriteMem32(0x00310ef4,0x00000000)
eeObj.WriteMem32(0x00310eec,0x08030000)
eeObj.WriteMem32(0x000c0000,0x3c173f40)
eeObj.WriteMem32(0x000c0004,0x4497f000)
eeObj.WriteMem32(0x000c0008,0x461e6343)
eeObj.WriteMem32(0x000c000c,0x44817000)
eeObj.WriteMem32(0x000c0010,0x080c43bc)

--------------------------------------------------/
--Gameplay
--abaaaa3f 00000000 00504347 01000000 (Memory Hack)
--eeObj.WriteMem32(0x005c5cfc,0x3FE38E32)

--Start Menu and Left Status Bar (ELF Hack)
--2044013c 00608144 f043013c 00688144 
--eeObj.WriteMem32(0x00284638,0x3c014455)
end

emuObj.AddVsyncHook(widescreen)