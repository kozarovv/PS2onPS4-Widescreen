apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Unlimited Saga (PAL-E) (SLES-51606)
--comment=Widescreen Hack by ElHecht

-- 16:9 battles
eeObj.WriteMem32(0x00703bfc,0x3c013f40)
eeObj.WriteMem32(0x00703c00,0x34210000)
eeObj.WriteMem32(0x00703c08,0x44810000)
eeObj.WriteMem32(0x00703c0c,0x4600c602)
eeObj.WriteMem32(0x007795d4,0x3c0243ab)

-- 16:10 battles
--eeObj.WriteMem32(0x00703bfc,0x3c013f55)
--eeObj.WriteMem32(0x00703c00,0x34215555)
--eeObj.WriteMem32(0x00703c08,0x44810000)
--eeObj.WriteMem32(0x00703c0c,0x4600c602)
--eeObj.WriteMem32(0x007795d4,0x3c02439a)
end

emuObj.AddVsyncHook(widescreen)