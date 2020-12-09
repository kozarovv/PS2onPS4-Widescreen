apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x008cbaf0,0x43400000)
eeObj.WriteMem32(0x00660acc,0x3c093c02)
eeObj.WriteMem32(0x00660ad0,0x35293fab)
eeObj.WriteMem32(0x00660b18,0x3c0a0028)
eeObj.WriteMem32(0x00660b1c,0xad499298)

-- 16:10
--eeObj.WriteMem32(0x008cbaf0,0x43555555)
--eeObj.WriteMem32(0x00660acc,0x3c093c02)
--eeObj.WriteMem32(0x00660ad0,0x35293f9a)
--eeObj.WriteMem32(0x00660b18,0x3c0a0028)
--eeObj.WriteMem32(0x00660b1c,0xad499298)
end

emuObj.AddVsyncHook(widescreen)