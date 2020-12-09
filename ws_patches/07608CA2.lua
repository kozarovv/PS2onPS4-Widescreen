apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9)
-- Original patch and value by No.47
-- Updated to ELf adresses by ElHecht

-- 16:9
eeObj.WriteMem32(0x00243d64,0x3c093f40)
eeObj.WriteMem32(0x00243d70,0x3c0a004a)
eeObj.WriteMem32(0x00243d74,0xad49eb84)
end

emuObj.AddVsyncHook(widescreen)