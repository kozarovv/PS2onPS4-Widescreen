apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Ultimate Vol.18 - Love Aerobie (J)(SLPM-62467)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x00178cd4,0x3c013f40)
eeObj.WriteMem32(0x00178cd8,0x44810000)
eeObj.WriteMem32(0x00178ce0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)