apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Virtua Fighter 4 - Evolution (U)(SLUS-20616)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x003aaa74,0x3c194455)
eeObj.WriteMem32(0x003aaa7c,0x37395555)
eeObj.WriteMem32(0x003aaa94,0x44990800)
eeObj.WriteMem32(0x00217b48,0x3c024456)
end

emuObj.AddVsyncHook(widescreen)