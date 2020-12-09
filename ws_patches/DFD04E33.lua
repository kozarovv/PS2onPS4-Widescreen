apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=HERDY GERDY (PAL-M5) (SLES_507)
--comment=Widescreen Hack (16:9) by ESPPIRAL
--16:9
eeObj.WriteMem32(0x011F2688,0x3F0CCCCD)
end

emuObj.AddVsyncHook(widescreen)