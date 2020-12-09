apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Wide 16:9 (EA4ED1BC 00000000 7FAAAA3F 00000000)
eeObj.WriteMem32(0x003792B0,0x3F800000)

--00 00 80 3F 00 00 80 3F 00 00 00 00 25 64 20 00
eeObj.WriteMem32(0x003604B4,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)