apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Sangoku Musou 5 SP(=Dynasty warriors 6) (SLKA_350.05)
--comment=widescreen 16:9 (NTSC-K) hack by 99skull
eeObj.WriteMem32(0x0014701C,0x3C024082)
eeObj.WriteMem32(0x001471B0,0x3C0543A0)
eeObj.WriteMem32(0x00147AF4,0x3C024082)
end

emuObj.AddVsyncHook(widescreen)