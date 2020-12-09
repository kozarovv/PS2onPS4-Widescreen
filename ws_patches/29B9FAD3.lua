apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0013bd18,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46010882)
eeObj.WriteMem32(0x000c0004,0x3c013f00)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e1082)
eeObj.WriteMem32(0x000c0010,0x0804ef47)
end

emuObj.AddVsyncHook(widescreen)