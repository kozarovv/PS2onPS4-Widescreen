apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47

eeObj.WriteMem32(0x0016eebc,0x3c023f40)
eeObj.WriteMem32(0x001d7314,0x3feeeeee)

-- 21:9
--eeObj.WriteMem32(0x0016eebc,0x3c023f10)
--eeObj.WriteMem32(0x001d7314,0x401F5C29)
end

emuObj.AddVsyncHook(widescreen)