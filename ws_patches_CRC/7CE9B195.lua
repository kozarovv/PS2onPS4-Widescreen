apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00008144 00000000 03000146 (5th)
eeObj.WriteMem32(0x001088bc,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)