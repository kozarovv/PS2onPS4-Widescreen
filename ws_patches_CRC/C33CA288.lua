apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Justice League Heroes SLUS_213.04
--comment=Widescreen hack 
eeObj.WriteMem32(0x001bbde8,0x3c014285)
eeObj.WriteMem32(0x001bbe70,0x3c013f1f)
eeObj.WriteMem32(0x001bbe74,0x34214a25)
eeObj.WriteMem32(0x0019054c,0x3c013f1f)
eeObj.WriteMem32(0x00190550,0x34214a25)
end

emuObj.AddVsyncHook(widescreen)