apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00178c2c,0x3c013f40)
eeObj.WriteMem32(0x00178c30,0x4481f000)
eeObj.WriteMem32(0x00178c6c,0x461e0003)
eeObj.WriteMem32(0x002916e0,0x461ea502)
eeObj.WriteMem32(0x002b28c4,0x461ea302)
end

emuObj.AddVsyncHook(widescreen)