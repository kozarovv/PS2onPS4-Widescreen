apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--803f013c 00288144 e0000224
eeObj.WriteMem32(0x001310d4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)