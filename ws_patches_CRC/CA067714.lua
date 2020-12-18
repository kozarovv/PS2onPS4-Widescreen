apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tamamayu Monogatari 2
--comment=NTSC-J Widescreen Hack by synce
eeObj.WriteMem32(0x01E2BB8C,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)