apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002d7494,0x3c013f40)
eeObj.WriteMem32(0x002d74a0,0x44810000)
eeObj.WriteMem32(0x002d74a4,0x4600c602)
eeObj.WriteMem32(0x001c9570,0x3c013f40)
eeObj.WriteMem32(0x001c9588,0x4481f000)
eeObj.WriteMem32(0x001c958c,0x461e6b42)

-- 16:10
--eeObj.WriteMem32(0x002d7494,0x3c013f55)
--eeObj.WriteMem32(0x002d7498,0x34215555)
--eeObj.WriteMem32(0x002d74a0,0x44810000)
--eeObj.WriteMem32(0x002d74a4,0x4600c602)
--eeObj.WriteMem32(0x001c9570,0x3c013f55)
--eeObj.WriteMem32(0x001c9574,0x34215555)
--eeObj.WriteMem32(0x001c9588,0x4481f000)
--eeObj.WriteMem32(0x001c958c,0x461e6b42)
end

emuObj.AddVsyncHook(widescreen)