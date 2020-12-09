apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

eeObj.WriteMem32(0x001110e0,0x00000000)
--003f023c 00008244 8e3c033c
eeObj.WriteMem32(0x00219044,0x3C023F17)
eeObj.WriteMem32(0x00219070,0x3C023F10)
end

emuObj.AddVsyncHook(widescreen)