apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002b4d18,0x3c013f40)
eeObj.WriteMem32(0x002b4d2c,0x4481f000)
eeObj.WriteMem32(0x002b4d70,0x461ec602)
end

emuObj.AddVsyncHook(widescreen)