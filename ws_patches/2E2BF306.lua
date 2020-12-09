apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001f6620,0x3c013f40)

eeObj.WriteMem32(0x001ace7c,0x3c013f40)
eeObj.WriteMem32(0x001ad618,0x3c013f40)

eeObj.WriteMem32(0x00182944,0x3c014330)
eeObj.WriteMem32(0x00185d74,0x3c014330)
eeObj.WriteMem32(0x002146fc,0x3c014010)
eeObj.WriteMem32(0x00214700,0x34210000)
end

emuObj.AddVsyncHook(widescreen)