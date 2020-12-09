apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0037e54c,0x3c013fdb)
eeObj.WriteMem32(0x0037e550,0x3421a5ef)
eeObj.WriteMem32(0x002d1594,0x3c014158)
eeObj.WriteMem32(0x0037d694,0x3c013fa4)
eeObj.WriteMem32(0x0037d698,0x3421bc76)

eeObj.WriteMem32(0x0031d1f4,0x3c013f80)
end

emuObj.AddVsyncHook(widescreen)