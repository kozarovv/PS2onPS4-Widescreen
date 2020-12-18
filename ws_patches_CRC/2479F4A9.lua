apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x00367be8,0x3c033f1f)
eeObj.WriteMem32(0x00826F10,0x0014A709)

-- menu fix
eeObj.WriteMem32(0x00B63FE0,0x43A80000)
eeObj.WriteMem32(0x00B665B0,0x43440000)
end

emuObj.AddVsyncHook(widescreen)