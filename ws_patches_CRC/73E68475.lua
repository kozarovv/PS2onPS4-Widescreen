apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9 ver
eeObj.WriteMem32(0x00138ab8,0x00000000)
eeObj.WriteMem32(0x0014b3a8,0x00000000)
eeObj.WriteMem32(0x0014c3ac,0x00000000)
eeObj.WriteMem32(0x002a1f88,0x00000000)
eeObj.WriteMem32(0x0031e0b8,0x00000000)
eeObj.WriteMem32(0x0031eea4,0x00000000)
end

emuObj.AddVsyncHook(widescreen)