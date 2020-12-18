apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0011638c,0x3c013f40)
eeObj.WriteMem32(0x00116390,0x44811800)
eeObj.WriteMem32(0x00116398,0x46031883)
eeObj.WriteMem32(0x0011639c,0x46031f82)
eeObj.WriteMem32(0x001163c0,0xe61e0044)
eeObj.WriteMem32(0x0021cc20,0x3c013fee)
eeObj.WriteMem32(0x0021cc24,0x3421eeee)
end

emuObj.AddVsyncHook(widescreen)