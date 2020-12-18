apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001d589c,0x3c1b3f40)
eeObj.WriteMem32(0x001d58a8,0x449bf000)
eeObj.WriteMem32(0x001d58ac,0x461e0783)
eeObj.WriteMem32(0x001d58bc,0xe7be0028)

-- 16:10
--eeObj.WriteMem32(0x001d589c,0x3c1b3f55)
--eeObj.WriteMem32(0x001d58a0,0x377b5555)
--eeObj.WriteMem32(0x001d58a8,0x449bf000)
--eeObj.WriteMem32(0x001d58ac,0x461e0783)
--eeObj.WriteMem32(0x001d58bc,0xe7be0028)
end

emuObj.AddVsyncHook(widescreen)