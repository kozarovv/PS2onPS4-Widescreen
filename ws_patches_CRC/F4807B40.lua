apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Legend of Kay (SLUS_21248)
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x0063D9C0,0x3FAE8BA3)
eeObj.WriteMem32(0x0063D9C4,0x401B26CA)
eeObj.WriteMem32(0x006E6814,0x3FBBBBBB)

eeObj.WriteMem32(0x003047a4,0x3c0141f0)
end

emuObj.AddVsyncHook(widescreen)