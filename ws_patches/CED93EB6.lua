apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tengai Makyou III - Namida (J)(SLPM-65952)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--aa3f013c abaa2134 00688144
eeObj.WriteMem32(0x0012f5a8,0x3c013fe3)
eeObj.WriteMem32(0x0012f5ac,0x34218e32)
end

emuObj.AddVsyncHook(widescreen)