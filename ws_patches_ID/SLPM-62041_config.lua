apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=ESPN National Hockey Night (J)(SLPM-62041)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix Hack
eeObj.WriteMem32(0x00103724,0x3c013f40)
eeObj.WriteMem32(0x00103728,0x44810000)
eeObj.WriteMem32(0x00103730,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)