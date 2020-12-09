apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00188144 2a09c14b
eeObj.WriteMem32(0x00214cf4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)