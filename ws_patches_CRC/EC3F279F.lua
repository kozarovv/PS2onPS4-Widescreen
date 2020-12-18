apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Contra - Shattered Soldier (PAL-M5) (SLES-51284)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x005dd10c,0x3c013f40)
eeObj.WriteMem32(0x005dd110,0x44810000)
eeObj.WriteMem32(0x005dd118,0x4600c602)
eeObj.WriteMem32(0x00678f00,0x44d8aaab)
eeObj.WriteMem32(0x00678f04,0xc4d8aaab)
end

emuObj.AddVsyncHook(widescreen)