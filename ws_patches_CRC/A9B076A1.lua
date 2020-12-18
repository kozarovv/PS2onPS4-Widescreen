apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Ultimate Vol.24 - Makai Tenshou (J)(SLPM-65872)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x001e0444,0x3c013f40)
eeObj.WriteMem32(0x001e0448,0x44810000)
eeObj.WriteMem32(0x001e0450,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)