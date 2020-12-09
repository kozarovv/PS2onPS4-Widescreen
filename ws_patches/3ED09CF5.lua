apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht
-- 16:9
eeObj.WriteMem32(0x00102e34,0x3c013f40)
eeObj.WriteMem32(0x00102e38,0x44810000)
eeObj.WriteMem32(0x00102e40,0x4600c602)
eeObj.WriteMem32(0x00217b6c,0x3c033fb4)
end

emuObj.AddVsyncHook(widescreen)