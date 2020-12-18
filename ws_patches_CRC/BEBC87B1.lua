apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Grandia II (PAL-E) (SLES-50498)
--comment=Widescreen Hack (16:9) by ElHecht
--
-- jump to code-inject
eeObj.WriteMem32(0x0025ca80,0x0c101c0d)
eeObj.WriteMem32(0x0025ca84,0x00000000)
--
-- code-inject
eeObj.WriteMem32(0x00407034,0x3c013f40)
eeObj.WriteMem32(0x0040703c,0x44815800)
eeObj.WriteMem32(0x00407040,0x460b2942)
eeObj.WriteMem32(0x00407044,0x460b2102)
eeObj.WriteMem32(0x00407048,0x3c013f80)
eeObj.WriteMem32(0x0040704c,0x44815800)
eeObj.WriteMem32(0x00407050,0x03e00008)

end

emuObj.AddVsyncHook(widescreen)