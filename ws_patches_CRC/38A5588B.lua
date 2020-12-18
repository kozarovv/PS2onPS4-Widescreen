apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x0085cb30,0x43400000)
eeObj.WriteMem32(0x0068f7a4,0x3c093c02)
eeObj.WriteMem32(0x0068f7a8,0x35293fab)
eeObj.WriteMem32(0x0068f7f0,0x3c0a0028)
eeObj.WriteMem32(0x0068f7f4,0xad493d78)

-- 16:10
--eeObj.WriteMem32(0x0085cb30,0x43555555)
--eeObj.WriteMem32(0x0068f7a4,0x3c093c02)
--eeObj.WriteMem32(0x0068f7a8,0x35293f9a)
--eeObj.WriteMem32(0x0068f7f0,0x3c0a0028)
--eeObj.WriteMem32(0x0068f7f4,0xad493d78)

--optional cut-scenes black bar removal
--eeObj.WriteMem32(0x00767F94,0x40000000)
end

emuObj.AddVsyncHook(widescreen)