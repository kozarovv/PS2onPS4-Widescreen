apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9 
eeObj.WriteMem32(0x0013e12c,0x3c013f40)
eeObj.WriteMem32(0x0013e138,0x44810000)
eeObj.WriteMem32(0x0013e13c,0x4600c602)
eeObj.WriteMem32(0x001d84d0,0x3c033f19)
eeObj.WriteMem32(0x001d84d8,0x3462999a)
eeObj.WriteMem32(0x00201e70,0x3c0243d6)

-- 16:10
--eeObj.WriteMem32(0x0013e12c,0x3c013f55)
--eeObj.WriteMem32(0x0013e130,0x34215555)
--eeObj.WriteMem32(0x0013e138,0x44810000)
--eeObj.WriteMem32(0x0013e13c,0x4600c602)
--eeObj.WriteMem32(0x001d84d0,0x3c033f2a)
--eeObj.WriteMem32(0x001d84d8,0x3462aaab)
--eeObj.WriteMem32(0x00201e70,0x3c0243c1)
end

emuObj.AddVsyncHook(widescreen)