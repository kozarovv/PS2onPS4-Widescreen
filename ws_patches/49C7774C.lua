apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0010a4cc,0x3c023f40)
eeObj.WriteMem32(0x001db3ec,0x3c023f40)
eeObj.WriteMem32(0x001db3f8,0x461294c3)

-- 16:10
--eeObj.WriteMem32(0x0010a4a8,0x3c193f55)
--eeObj.WriteMem32(0x0010a4cc,0x37395555)
--eeObj.WriteMem32(0x0010a4e0,0x44999000)
--eeObj.WriteMem32(0x001db3e4,0x3c023f55)
--eeObj.WriteMem32(0x001db3ec,0x34425555)
--eeObj.WriteMem32(0x001db3f8,0x461294c3)
end

emuObj.AddVsyncHook(widescreen)