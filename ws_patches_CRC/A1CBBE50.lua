apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Prince Of Persia : The Two Thrones(SLKA_253.46)
--comment=widescreen 16:9 (NTSC-K) hack by 99skull
--credit goes to nemesis2000
eeObj.WriteMem32(0x005BAD2C,0x3C023F10)
eeObj.WriteMem32(0x005BAD88,0x3C02402B)
end

emuObj.AddVsyncHook(widescreen)