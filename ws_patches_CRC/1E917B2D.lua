apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002f0e50,0x3c013f40)
eeObj.WriteMem32(0x002f0e54,0x4481f000)
eeObj.WriteMem32(0x002f0e5c,0x461e0003)
end

emuObj.AddVsyncHook(widescreen)