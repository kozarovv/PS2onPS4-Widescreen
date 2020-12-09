apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--82000c46 01000524 02000d46
eeObj.WriteMem32(0x0016a590,0x08043e84)

eeObj.WriteMem32(0x0010fa10,0x460c0082)
eeObj.WriteMem32(0x0010fa14,0x3c013f9b)
eeObj.WriteMem32(0x0010fa18,0x3421aaaa)
eeObj.WriteMem32(0x0010fa1c,0x4481f000)
eeObj.WriteMem32(0x0010fa20,0x461e1082)
eeObj.WriteMem32(0x0010fa24,0x0805a965)
end

emuObj.AddVsyncHook(widescreen)