apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x008e1bf0,0x43400000)
eeObj.WriteMem32(0x0067142c,0x3c093c02)
eeObj.WriteMem32(0x00671430,0x35293fab)
eeObj.WriteMem32(0x00671478,0x3c0a0028)
eeObj.WriteMem32(0x0067147c,0xad4992f8)

-- 16:10
--eeObj.WriteMem32(0x008e1bf0,0x43555555)
--eeObj.WriteMem32(0x0067142c,0x3c093c02)
--eeObj.WriteMem32(0x00671430,0x35293f9a)
--eeObj.WriteMem32(0x00671478,0x3c0a0028)
--eeObj.WriteMem32(0x0067147c,0xad4992f8)
end

emuObj.AddVsyncHook(widescreen)