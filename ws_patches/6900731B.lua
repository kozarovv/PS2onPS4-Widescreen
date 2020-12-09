apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x001b9514,0x3c013f40)
eeObj.WriteMem32(0x001b9518,0x44810000)
eeObj.WriteMem32(0x001b9520,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)