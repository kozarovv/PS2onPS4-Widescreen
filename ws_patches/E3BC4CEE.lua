apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=ESPN MLS Extra Time (U)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--803f013c 00688144
eeObj.WriteMem32(0x001123b0,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)