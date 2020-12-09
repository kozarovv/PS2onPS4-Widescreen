apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--000060e4 040062e4 080062e4
eeObj.WriteMem32(0x00249528,0x080c298c)

eeObj.WriteMem32(0x0030a630,0x3c023f40)
eeObj.WriteMem32(0x0030a634,0x4482f000)
eeObj.WriteMem32(0x0030a638,0x461e0002)
eeObj.WriteMem32(0x0030a63c,0xe4600000)
eeObj.WriteMem32(0x0030a640,0x0809254b)

--xxxx
--eeObj.WriteMem32(0x0013feb0,0x3c033ff0)
--eeObj.WriteMem32(0x002491fc,0x3c0845d0)
--eeObj.WriteMem32(0x002494e8,0x3c0645d0)
--eeObj.WriteMem32(0x0024923c,0x3c0345d0)
--eeObj.WriteMem32(0x002494e8,0x3c0645d0)
--eeObj.WriteMem32(0x00260d6c,0x3c033f00)
--eeObj.WriteMem32(0x00260d7c,0x3c033f00)
--eeObj.WriteMem32(0x00260f98,0x3c083f00)
--eeObj.WriteMem32(0x00261018,0x3c0b3f00)
end

emuObj.AddVsyncHook(widescreen)