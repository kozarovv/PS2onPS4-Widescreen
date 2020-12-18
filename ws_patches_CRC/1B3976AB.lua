apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x002AF750,0x3f1f3b64)
eeObj.WriteMem32(0x002AF6FC,0xbf1f3b64)
eeObj.WriteMem32(0x0079F478,0x0015120C)
end

emuObj.AddVsyncHook(widescreen)