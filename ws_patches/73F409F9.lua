apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--803f013c 00108144 00000000 00000000
eeObj.WriteMem32(0x00209054,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)