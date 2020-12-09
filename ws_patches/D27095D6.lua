apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Sangoku Mosou 3 Empires(=Dynasty warriors 4 Empires) (SLKA_251.87)
--comment=widescreen 16:9 (NTSC-K) hack by 99skull
--credit goes to nemesis2000
eeObj.WriteMem32(0x0013A2A4,0x3C0243D6)
eeObj.WriteMem32(0x001899C0,0x3C023F2B)
end

emuObj.AddVsyncHook(widescreen)