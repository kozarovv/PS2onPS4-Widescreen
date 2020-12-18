apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0015b1fc,0x3c013f40)
eeObj.WriteMem32(0x0015b214,0x34210000)
eeObj.WriteMem32(0x0015b218,0x4481f000)
eeObj.WriteMem32(0x0015b21c,0x461e6302)
eeObj.WriteMem32(0x0015b240,0x460c7382)
eeObj.WriteMem32(0x0015b244,0xe48e0000)
eeObj.WriteMem32(0x0017f49c,0x00000000)
eeObj.WriteMem32(0x0017f4f0,0x00000000)
eeObj.WriteMem32(0x0017b384,0x3c193f40)
eeObj.WriteMem32(0x0017b388,0x4499f000)
eeObj.WriteMem32(0x0017b3a0,0x4600b047)
eeObj.WriteMem32(0x0017b3a4,0x461ece43)

-- 16:10
--eeObj.WriteMem32(0x0015b1fc,0x3c013f55)
--eeObj.WriteMem32(0x0015b214,0x34215555)
--eeObj.WriteMem32(0x0015b218,0x4481f000)
--eeObj.WriteMem32(0x0015b21c,0x461e6302)
--eeObj.WriteMem32(0x0015b240,0x460c7382)
--eeObj.WriteMem32(0x0015b244,0xe48e0000)
--eeObj.WriteMem32(0x0017f49c,0x00000000)
--eeObj.WriteMem32(0x0017f4f0,0x00000000)
--eeObj.WriteMem32(0x0017b340,0x4617bd80)
--eeObj.WriteMem32(0x0017b344,0x3c193f55)
--eeObj.WriteMem32(0x0017b384,0x37395555)
--eeObj.WriteMem32(0x0017b388,0x4499f000)
--eeObj.WriteMem32(0x0017b3a0,0x4600b047)
--eeObj.WriteMem32(0x0017b3a4,0x461ece43)
end

emuObj.AddVsyncHook(widescreen)