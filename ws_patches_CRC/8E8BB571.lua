apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dynasty Warriors 5 - Empires (PAL-G) (SLES-54097)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x00146de8,0x3c0243b4)
eeObj.WriteMem32(0x00146e9c,0x3c0243f0)
eeObj.WriteMem32(0x001a02cc,0x3c023f15)
end

emuObj.AddVsyncHook(widescreen)