apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kidou Senshi Gundam 00 - Gundam Meisters (J)(SLPS-25900)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001f0f40,0x3c023f19)
eeObj.WriteMem32(0x001f0f48,0x3443999a)
end

emuObj.AddVsyncHook(widescreen)