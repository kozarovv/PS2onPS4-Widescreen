apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=K-1 World Grand Prix 2006 (J)(SLPS-25710)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002977c4,0x3c013f40)
eeObj.WriteMem32(0x002977c8,0x44810000)
eeObj.WriteMem32(0x002977d0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)