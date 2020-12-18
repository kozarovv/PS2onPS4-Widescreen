apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0017aca8,0x08030000)
eeObj.WriteMem32(0x000c0000,0x46010842)
eeObj.WriteMem32(0x000c0004,0x3c013fe2)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0842)
eeObj.WriteMem32(0x000c0010,0x0805eb2b)
end

emuObj.AddVsyncHook(widescreen)