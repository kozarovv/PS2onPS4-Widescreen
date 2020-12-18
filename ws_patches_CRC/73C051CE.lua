apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x0013eae8,0x3c024328)
eeObj.WriteMem32(0x0013ecd8,0x3c013f40)
eeObj.WriteMem32(0x0013ecdc,0x4481f000)
eeObj.WriteMem32(0x0013ece0,0x461e6b43)
eeObj.WriteMem32(0x0013ece4,0x03e00008)
eeObj.WriteMem32(0x0013ece8,0xe46d02bc)

-- 16:10
--eeObj.WriteMem32(0x0013eae8,0x3c02433a)
--eeObj.WriteMem32(0x0013eaf0,0x3442aaab)
--eeObj.WriteMem32(0x0013eaf4,0x44820800)
--eeObj.WriteMem32(0x0013ecd8,0x3c013f55)
--eeObj.WriteMem32(0x0013ecdc,0x34215555)
--eeObj.WriteMem32(0x0013ece0,0x4481f000)
--eeObj.WriteMem32(0x0013ece4,0x461e6b43)
--eeObj.WriteMem32(0x0013ece8,0x03e00008)
--eeObj.WriteMem32(0x0013ecec,0xe46d02bc)
end

emuObj.AddVsyncHook(widescreen)