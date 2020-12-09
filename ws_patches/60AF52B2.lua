apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x00103364,0x3c013f40)
eeObj.WriteMem32(0x00103368,0x44810000)
eeObj.WriteMem32(0x00103370,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)