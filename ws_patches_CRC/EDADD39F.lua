apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wild Arms 3 (PAL-E) (SLES-51307)
--comment=Widescreen Hack by nemesis2000
--Ported to PAL, added 16:10 support (ElHecht)
--
-- 16:9
eeObj.WriteMem32(0x00103444,0x3c013f40)
eeObj.WriteMem32(0x00103448,0x44810000)
eeObj.WriteMem32(0x00103454,0x4600c602)
eeObj.WriteMem32(0x00115d8c,0x3c054455)
eeObj.WriteMem32(0x00115a28,0x3c024455)

-- 16:10
--eeObj.WriteMem32(0x00103444,0x3c013f55)
--eeObj.WriteMem32(0x00103448,0x34215555)
--eeObj.WriteMem32(0x00103450,0x44810000)
--eeObj.WriteMem32(0x00103454,0x4600c602)
--eeObj.WriteMem32(0x00115d8c,0x3c054440)
--eeObj.WriteMem32(0x00115a28,0x3c024440)
end

emuObj.AddVsyncHook(widescreen)