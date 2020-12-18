apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Battle Assault 3 featuring Gundam Seed SLUS_209.29
--comment=Widescreen Hack
eeObj.WriteMem32(0x001d5b04,0x3c0243e6)
eeObj.WriteMem32(0x001d5b0c,0x34426666)
eeObj.WriteMem32(0x001d5b30,0x3c02442b)
end

emuObj.AddVsyncHook(widescreen)