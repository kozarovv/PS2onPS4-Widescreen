apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 4 - Empires (PAL-G) (SLES-52592)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x00139db8,0x3c0243b4)
eeObj.WriteMem32(0x00139e64,0x3c0243f0)
eeObj.WriteMem32(0x0026f524,0x3c023f40)
eeObj.WriteMem32(0x00188d20,0x3c023f18)
end

emuObj.AddVsyncHook(widescreen)