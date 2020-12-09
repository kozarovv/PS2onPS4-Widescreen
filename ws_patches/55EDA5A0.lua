apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x0018c690,0x3c013f40)
eeObj.WriteMem32(0x0018c6a0,0x4481f000)
eeObj.WriteMem32(0x0018c6a4,0x461e0842)
eeObj.WriteMem32(0x001180ec,0x461e6303)

-- 16:10
--eeObj.WriteMem32(0x0018c690,0x3c013f55)
--eeObj.WriteMem32(0x0018c694,0x34215555)
--eeObj.WriteMem32(0x0018c6a0,0x4481f000)
--eeObj.WriteMem32(0x0018c6a4,0x461e0842)
--eeObj.WriteMem32(0x001180ec,0x461e6303)
end

emuObj.AddVsyncHook(widescreen)