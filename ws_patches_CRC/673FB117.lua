apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001080e0,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46006dc6)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461ebdc2)
eeObj.WriteMem32(0x000c0010,0x08042039)
end

emuObj.AddVsyncHook(widescreen)