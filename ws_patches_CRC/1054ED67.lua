apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9)
-- Original patch and value by sergx12
-- Updated to ELf address by ElHecht

-- 16:9
eeObj.WriteMem32(0x00252bf8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)