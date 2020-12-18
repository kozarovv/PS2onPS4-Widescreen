apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Champions of Norrath [PAL-M2] [En,Es] (SLES-52373)
--comment=Widescreen hack by El_Patas

-- 16:9
eeObj.WriteMem32(0x0015b294,0x3c013f40)
eeObj.WriteMem32(0x0015b2ac,0x34210000)
eeObj.WriteMem32(0x0015b2b0,0x4481f000)
eeObj.WriteMem32(0x0015b2b4,0x461e6302)
eeObj.WriteMem32(0x0015b2d8,0x460c7382)
eeObj.WriteMem32(0x0015b2dc,0xe48e0000)
eeObj.WriteMem32(0x0017f55c,0x00000000)
eeObj.WriteMem32(0x0017f5b0,0x00000000)
eeObj.WriteMem32(0x0017b41c,0x3c193f40)
eeObj.WriteMem32(0x0017b420,0x4499f000)
eeObj.WriteMem32(0x0017b438,0x4600b047)
eeObj.WriteMem32(0x0017b43c,0x461ece43)

-- 16:10
--eeObj.WriteMem32(0x0015b294,0x3c013f55)
--eeObj.WriteMem32(0x0015b2ac,0x34215555)
--eeObj.WriteMem32(0x0015b2b0,0x4481f000)
--eeObj.WriteMem32(0x0015b2b4,0x461e6302)
--eeObj.WriteMem32(0x0015b2d8,0x460c7382)
--eeObj.WriteMem32(0x0015b2dc,0xe48e0000)
--eeObj.WriteMem32(0x0017f55c,0x00000000)
--eeObj.WriteMem32(0x0017f5b0,0x00000000)
--eeObj.WriteMem32(0x0017b3d8,0x4617bd80)
--eeObj.WriteMem32(0x0017b3dc,0x3c193f55)
--eeObj.WriteMem32(0x0017b41c,0x37395555)
--eeObj.WriteMem32(0x0017b420,0x4499f000)
--eeObj.WriteMem32(0x0017b438,0x4600b047)
--eeObj.WriteMem32(0x0017b43c,0x461ece43)
end

emuObj.AddVsyncHook(widescreen)