apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001aae08,0x3c013f40)
eeObj.WriteMem32(0x001aae0c,0x4481f000)
eeObj.WriteMem32(0x001aae1c,0x461ef043)
eeObj.WriteMem32(0x001aae24,0xe61e0010)
end

emuObj.AddVsyncHook(widescreen)