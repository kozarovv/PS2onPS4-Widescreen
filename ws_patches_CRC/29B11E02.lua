apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0028ab58,0x3f400000)
eeObj.WriteMem32(0x00273400,0x43d55555)

-- 16:10
--eeObj.WriteMem32(0x0028ab58,0x3f555555)
--eeObj.WriteMem32(0x00273400,0x43c00000)
end

emuObj.AddVsyncHook(widescreen)