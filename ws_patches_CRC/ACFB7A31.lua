apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Sangoku Mosou 3(=Dynasty warriors 4) (SLKA_250.50)
--comment=widescreen 16:9 (NTSC-K) hack by 99skull
--credit goes to nemesis2000
eeObj.WriteMem32(0x001379C0,0x3C0243D6)
eeObj.WriteMem32(0x00184D40,0x3C023F2B)
end

emuObj.AddVsyncHook(widescreen)