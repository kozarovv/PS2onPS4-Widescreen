apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Samurai Warriors (NTSC-U) (SLUS-20878)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x0013eb18,0x3c024328)
eeObj.WriteMem32(0x0013ed08,0x3c013f40)
eeObj.WriteMem32(0x0013ed0c,0x4481f000)
eeObj.WriteMem32(0x0013ed10,0x461e6b43)
eeObj.WriteMem32(0x0013ed14,0x03e00008)
eeObj.WriteMem32(0x0013ed18,0xe46d02bc)

-- 16:10
--eeObj.WriteMem32(0x0013eb18,0x3c02433a)
--eeObj.WriteMem32(0x0013eb20,0x3442aaab)
--eeObj.WriteMem32(0x0013eb24,0x44820800)
--eeObj.WriteMem32(0x0013ed08,0x3c013f55)
--eeObj.WriteMem32(0x0013ed0c,0x34215555)
--eeObj.WriteMem32(0x0013ed10,0x4481f000)
--eeObj.WriteMem32(0x0013ed14,0x461e6b43)
--eeObj.WriteMem32(0x0013ed18,0x03e00008)
--eeObj.WriteMem32(0x0013ed1c,0xe46d02bc)
end

emuObj.AddVsyncHook(widescreen)