apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Metal Gear Solid 3 - Subsistence (PAL-G) (SLES-82046) Widescreen Hack (16:9) by ElHecht
eeObj.WriteMem32(0x00205D4C,0x3F400000)
--eeObj.WriteMem32(0x00205D90,0x3FAAA993)
end

emuObj.AddVsyncHook(widescreen)