apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Firefighter F.D. 18 (J)(SLPM-65470)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x002a3fcc,0x3c013f40)
eeObj.WriteMem32(0x002a3fd0,0x44810000)
eeObj.WriteMem32(0x002a3fd8,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)