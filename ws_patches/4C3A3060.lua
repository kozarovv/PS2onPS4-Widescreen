apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001f1d74,0x3c013f40)
eeObj.WriteMem32(0x001f1d78,0x44810000)
eeObj.WriteMem32(0x001f1d80,0x4600c602)
eeObj.WriteMem32(0x001b5484,0x3c0140a7)
end

emuObj.AddVsyncHook(widescreen)