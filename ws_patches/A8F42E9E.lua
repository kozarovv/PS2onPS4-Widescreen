apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sega Ages 2500 Series Vol.04 - Space Harrier (NTSC-J) [SLPM-62384] [A8F42E9E]
--comment=Widescreen hacks by FeRcHuLeS (original NTSC-U hacks) and Aced14 (port/ELF hacks)

eeObj.WriteMem32(0x002e3598,0x44091c00)
eeObj.WriteMem32(0x002e4070,0x43f3c000)
eeObj.WriteMem32(0x002e4068,0x3f999999)
end

emuObj.AddVsyncHook(widescreen)