apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x001e5a94,0x3c093f40)
eeObj.WriteMem32(0x001e5aa0,0x3c0a003a)
eeObj.WriteMem32(0x001e5aa4,0xad49d354)
end

emuObj.AddVsyncHook(widescreen)