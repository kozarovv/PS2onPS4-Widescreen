apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by ElHecht-- updates by Aced14

-- 16:9
eeObj.WriteMem32(0x001c63b4,0x3c033f00)
eeObj.WriteMem32(0x0013e568,0x3c023f40)
eeObj.WriteMem32(0x001472b8,0x3c023f40)

-- 16:10 (normal)
--eeObj.WriteMem32(0x001c63b4,0x3c033f30)
--eeObj.WriteMem32(0x0023f51c,0x1040fffc)
--eeObj.WriteMem32(0x0023f524,0x3c1b3f55)
--eeObj.WriteMem32(0x0023f528,0x377b5555)
--eeObj.WriteMem32(0x0013e56c,0x449b6000)
--eeObj.WriteMem32(0x001472bc,0x449b6000)

-- 16:10 (ultra)
--eeObj.WriteMem32(0x001c63b4,0x3c033f00)
--eeObj.WriteMem32(0x0013e568,0x3c023f40)
--eeObj.WriteMem32(0x0013e570,0x3c023f4a)
--eeObj.WriteMem32(0x0013e574,0x3442c083)
--eeObj.WriteMem32(0x001472b8,0x3c023f40)
--eeObj.WriteMem32(0x001472c0,0x3c023f4a)
--eeObj.WriteMem32(0x001472c4,0x3442c083)
end

emuObj.AddVsyncHook(widescreen)