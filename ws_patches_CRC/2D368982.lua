apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00166114,0x3c013f40)
eeObj.WriteMem32(0x00166120,0x44810000)
eeObj.WriteMem32(0x00166124,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)