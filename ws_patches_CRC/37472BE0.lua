apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00137410,0x3c013f40)
eeObj.WriteMem32(0x0013741c,0x4481f000)
eeObj.WriteMem32(0x0013d6a4,0x461edec2)
end

emuObj.AddVsyncHook(widescreen)