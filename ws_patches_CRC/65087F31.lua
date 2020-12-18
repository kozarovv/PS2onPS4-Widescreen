apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x001a8da8,0x3c013f40)
eeObj.WriteMem32(0x001a8dac,0x4481f000)
eeObj.WriteMem32(0x001a8de8,0x461e6303)
end

emuObj.AddVsyncHook(widescreen)