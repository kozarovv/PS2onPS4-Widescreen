apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001f1db4,0x3c013f40)
eeObj.WriteMem32(0x001f1db8,0x44810000)
eeObj.WriteMem32(0x001f1dc0,0x4600c602)
eeObj.WriteMem32(0x001b54bc,0x3c0140a7)
end

emuObj.AddVsyncHook(widescreen)