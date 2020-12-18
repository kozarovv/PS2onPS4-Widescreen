apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Spongebob Squarepants Movie Game (NTSC-U) (SLUS-20904) Widescreen Hack (nemesis2000) (gamemasterplc)
eeObj.WriteMem32(0x00437714,0x46010083)
eeObj.WriteMem32(0x00437718,0xE7A20028)
eeObj.WriteMem32(0x0043771C,0x46010002)
eeObj.WriteMem32(0x00437720,0x0C0655BC)
eeObj.WriteMem32(0x00437724,0xE7A0002C)
eeObj.WriteMem32(0x00437728,0xDFBF0010)
eeObj.WriteMem32(0x0043772C,0x7BB00000)
eeObj.WriteMem32(0x00437730,0x03E00008)
eeObj.WriteMem32(0x00437734,0x27BD0030)
end

emuObj.AddVsyncHook(widescreen)