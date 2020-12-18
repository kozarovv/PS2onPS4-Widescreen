apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol.27 - The Pro Yakyuu - 2003 Pennant Race (J)(SLPM-62328)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x00209344,0x3c013f40)
eeObj.WriteMem32(0x00209348,0x44810000)
eeObj.WriteMem32(0x00209350,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)