apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002fdff4,0x3c194455)
eeObj.WriteMem32(0x002fdffc,0x37395555)
eeObj.WriteMem32(0x002fe014,0x44990800)
eeObj.WriteMem32(0x00217b48,0x3c024456)
end

emuObj.AddVsyncHook(widescreen)