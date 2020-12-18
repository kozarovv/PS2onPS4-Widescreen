apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--803f013c 00688144 70001326
eeObj.WriteMem32(0x00101fcc,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)