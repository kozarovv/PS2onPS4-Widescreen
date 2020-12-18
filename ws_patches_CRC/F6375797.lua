apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Boxing Champions (PAL-E) (SLES_517.17)
--comment=Widescreen Hack by El_Patas

eeObj.WriteMem32(0x0016165C,0x3C013F40)
eeObj.WriteMem32(0x00161660,0x44810000)
eeObj.WriteMem32(0x00161668,0x4600C602)
eeObj.WriteMem32(0x0016BFAC,0x3C013F40)
eeObj.WriteMem32(0x0016BFB0,0x44810000)
eeObj.WriteMem32(0x0016BFB8,0x4600C602)


end

emuObj.AddVsyncHook(widescreen)