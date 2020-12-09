apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
--d0ffbd27003f013c00108144 to d0ffbd27103f013c00108144
--00000000aa3f013cabaa213400608144 to 00000000e33f013c398e213400608144
eeObj.WriteMem32(0x00127cd4,0x3c013f10)
eeObj.WriteMem32(0x00157dc4,0x3c013fe3)
eeObj.WriteMem32(0x00157dc8,0x34218e39)
end

emuObj.AddVsyncHook(widescreen)