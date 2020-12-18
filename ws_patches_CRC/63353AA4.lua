apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0010319c,0x3c013f40)
eeObj.WriteMem32(0x001031a8,0x44810000)
eeObj.WriteMem32(0x001031ac,0x4600c602)
eeObj.WriteMem32(0x001cba90,0x3c053f50)

-- 16:10
--eeObj.WriteMem32(0x0010319c,0x3c013f55)
--eeObj.WriteMem32(0x001031a0,0x34215555)
--eeObj.WriteMem32(0x001031a8,0x44810000)
--eeObj.WriteMem32(0x001031ac,0x4600c602)
--eeObj.WriteMem32(0x001cba90,0x3c053f60)
end

emuObj.AddVsyncHook(widescreen)