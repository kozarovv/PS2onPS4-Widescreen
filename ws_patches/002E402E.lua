apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002fc8c0,0x3c013f81)
eeObj.WriteMem32(0x002fc8c8,0x3421de4d)
eeObj.WriteMem32(0x002fc970,0xac810000)
eeObj.WriteMem32(0x0015a20c,0x3c013ec0)

eeObj.WriteMem32(0x00263e9c,0x3c013f9e)
eeObj.WriteMem32(0x00263f5c,0x3c013f49)
eeObj.WriteMem32(0x002fcb34,0x3c023faa)
eeObj.WriteMem32(0x002fcb38,0x3442aaab)
eeObj.WriteMem32(0x002fcb4c,0xac82003c)
end

emuObj.AddVsyncHook(widescreen)