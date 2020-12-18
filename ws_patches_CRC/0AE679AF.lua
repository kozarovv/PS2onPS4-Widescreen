apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001d2978,0x3c023f19)
eeObj.WriteMem32(0x001d297c,0x3442999a)
end

emuObj.AddVsyncHook(widescreen)