apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002c3450,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46072103)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e2102)
eeObj.WriteMem32(0x000c0010,0x080b0d15)
end

emuObj.AddVsyncHook(widescreen)