apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Metal Gear Solid 3 - Snake Eater (PAL-G) (SLES-82032) Widescreen Hack (16:9) by ElHecht
eeObj.WriteMem32(0x00203FAC,0x3F400000)
--eeObj.WriteMem32(0x00203FF0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)