apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00298cd4,0x3c033f40)
eeObj.WriteMem32(0x00298cec,0x460318c3)
eeObj.WriteMem32(0x0072154c,0x3f19999a)

-- 16:10
--eeObj.WriteMem32(0x00298cd4,0x3c033f55)
--eeObj.WriteMem32(0x00298cd8,0x34635555)
--eeObj.WriteMem32(0x00298cdc,0x44831800)
--eeObj.WriteMem32(0x00298cec,0x460318c3)
--eeObj.WriteMem32(0x0072154c,0x3f2aaaab)
end

emuObj.AddVsyncHook(widescreen)