apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0016595c,0x3c013f40)
eeObj.WriteMem32(0x00165974,0x34210000)
eeObj.WriteMem32(0x00165978,0x4481f000)
eeObj.WriteMem32(0x0016597c,0x461e6302)
eeObj.WriteMem32(0x001659a0,0x460c7382)
eeObj.WriteMem32(0x001659a4,0xe48e0000)
eeObj.WriteMem32(0x0018ac2c,0x00000000)
eeObj.WriteMem32(0x0018ac80,0x00000000)
eeObj.WriteMem32(0x001869d0,0x3c193f40)
eeObj.WriteMem32(0x001869d4,0x4499f000)
eeObj.WriteMem32(0x001869ec,0x4600b047)
eeObj.WriteMem32(0x001869f0,0x461ece43)

-- 16:10
--eeObj.WriteMem32(0x0016595c,0x3c013f55)
--eeObj.WriteMem32(0x00165974,0x34215555)
--eeObj.WriteMem32(0x00165978,0x4481f000)
--eeObj.WriteMem32(0x0016597c,0x461e6302)
--eeObj.WriteMem32(0x001659a0,0x460c7382)
--eeObj.WriteMem32(0x001659a4,0xe48e0000)
--eeObj.WriteMem32(0x0018ac2c,0x00000000)
--eeObj.WriteMem32(0x0018ac80,0x00000000)
--eeObj.WriteMem32(0x0018698c,0x4617bd80)
--eeObj.WriteMem32(0x00186990,0x3c193f55)
--eeObj.WriteMem32(0x001869d0,0x37395555)
--eeObj.WriteMem32(0x001869d4,0x4499f000)
--eeObj.WriteMem32(0x001869ec,0x4600b047)
--eeObj.WriteMem32(0x001869f0,0x461ece43)
end

emuObj.AddVsyncHook(widescreen)