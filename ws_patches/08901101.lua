apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00359e34,0x3c013f40)
eeObj.WriteMem32(0x00359e40,0x44810000)
eeObj.WriteMem32(0x00359e44,0x4600c602)

-- 16:10
--eeObj.WriteMem32(0x00359e34,0x3c013f55)
--eeObj.WriteMem32(0x00359e38,0x34215555)
--eeObj.WriteMem32(0x00359e40,0x44810000)
--eeObj.WriteMem32(0x00359e44,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)