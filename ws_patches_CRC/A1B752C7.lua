apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sensible Soccer 2006 (PAL-M5) (SLES-53810)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x000ee2cc,0x3c1b3f40)
eeObj.WriteMem32(0x000ee2d0,0x377b0000)
eeObj.WriteMem32(0x000ee2d8,0xad3b001c)
eeObj.WriteMem32(0x0029c620,0x449b6000)
eeObj.WriteMem32(0x001ea204,0x449b6000)

-- 16:10
--eeObj.WriteMem32(0x000ee2cc,0x3c1b3f55)
--eeObj.WriteMem32(0x000ee2d0,0x377b5555)
--eeObj.WriteMem32(0x000ee2d8,0xad3b001c)
--eeObj.WriteMem32(0x0029c620,0x449b6000)
--eeObj.WriteMem32(0x001ea204,0x449b6000)
end

emuObj.AddVsyncHook(widescreen)