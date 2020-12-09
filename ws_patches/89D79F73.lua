apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0031def4,0x3c013f40)
eeObj.WriteMem32(0x0031df00,0x44810000)
eeObj.WriteMem32(0x0031df04,0x4600c602)
eeObj.WriteMem32(0x00194088,0x3c0143d6)

-- 16:10
--eeObj.WriteMem32(0x0031def4,0x3c013f55)
--eeObj.WriteMem32(0x0031def8,0x34215555)
--eeObj.WriteMem32(0x0031df00,0x44810000)
--eeObj.WriteMem32(0x0031df04,0x4600c602)
--eeObj.WriteMem32(0x00194088,0x3c0143c1)
end

emuObj.AddVsyncHook(widescreen)