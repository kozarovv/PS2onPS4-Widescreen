apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gigantic Drive (NTSC-J) [SLPM-62209]
--comment=Widescreen hacks by ElHecht-- port and updates by Aced14

-- 16:9
eeObj.WriteMem32(0x001958c4,0x3c033f00)
eeObj.WriteMem32(0x001f3868,0x3c023f40)
eeObj.WriteMem32(0x001fc5a8,0x3c023f40)

-- 16:10 (normal)
--eeObj.WriteMem32(0x001958c4,0x3c033f30)
--eeObj.WriteMem32(0x0015429c,0x1040fffc)
--eeObj.WriteMem32(0x001542a4,0x3c1b3f55)
--eeObj.WriteMem32(0x001542a8,0x377b5555)
--eeObj.WriteMem32(0x001fc5ac,0x449b6000)
--eeObj.WriteMem32(0x001f386c,0x449b6000)

-- 16:10 (ultra)
--eeObj.WriteMem32(0x001958c4,0x3c033f00)
--eeObj.WriteMem32(0x001f3868,0x3c023f40)
--eeObj.WriteMem32(0x001f3870,0x3c023f4a)
--eeObj.WriteMem32(0x001f3874,0x3442c083)
--eeObj.WriteMem32(0x001fc5a8,0x3c023f40)
--eeObj.WriteMem32(0x001fc5b0,0x3c023f4a)
--eeObj.WriteMem32(0x001fc5b4,0x3442c083)
end

emuObj.AddVsyncHook(widescreen)