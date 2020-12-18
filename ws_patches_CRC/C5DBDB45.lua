apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Bloody Roar 4 (PAL) (SLES-51877) Widescreen Hack (16:9) by ElHecht
eeObj.WriteMem32(0x0060EC20,0x3FA3A283)
--eeObj.WriteMem32(0x0060EC20,0x40117402)
end

emuObj.AddVsyncHook(widescreen)