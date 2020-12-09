apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0013e560,0x3c024455)
eeObj.WriteMem32(0x0013e564,0x34425555)
eeObj.WriteMem32(0x0013e568,0x44820000)
eeObj.WriteMem32(0x0013e5fc,0x3c024455)
eeObj.WriteMem32(0x0013e600,0x34425555)
eeObj.WriteMem32(0x0013e604,0x44820000)
eeObj.WriteMem32(0x0014d37c,0x3c033fab)
end

emuObj.AddVsyncHook(widescreen)