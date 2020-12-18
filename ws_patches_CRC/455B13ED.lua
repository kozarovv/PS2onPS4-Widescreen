apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002dd514,0x08030000)

eeObj.WriteMem32(0x000c0000,0x7fb50080)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x080b7546)

eeObj.WriteMem32(0x002dd588,0x461e7bc2)
end

emuObj.AddVsyncHook(widescreen)