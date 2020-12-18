apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002c45a4,0x3c013f40)
eeObj.WriteMem32(0x002c45b0,0x44810000)
eeObj.WriteMem32(0x002c45b4,0x4600c602)
eeObj.WriteMem32(0x001c7524,0x3c013f40)
eeObj.WriteMem32(0x001c7534,0x4481f000)
eeObj.WriteMem32(0x001c7538,0x461e6b42)

-- 16:10
--eeObj.WriteMem32(0x002c45a4,0x3c013f55)
--eeObj.WriteMem32(0x002c45a8,0x34215555)
--eeObj.WriteMem32(0x002c45b0,0x44810000)
--eeObj.WriteMem32(0x002c45b4,0x4600c602)
--eeObj.WriteMem32(0x001c7524,0x3c013f55)
--eeObj.WriteMem32(0x001c7528,0x34215555)
--eeObj.WriteMem32(0x001c7534,0x4481f000)
--eeObj.WriteMem32(0x001c7538,0x461e6b42)
end

emuObj.AddVsyncHook(widescreen)