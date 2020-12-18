apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--803f023c 4000a2af 80bf023c
eeObj.WriteMem32(0x0014a86c,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)