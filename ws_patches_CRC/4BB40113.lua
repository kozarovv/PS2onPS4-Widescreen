apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--003f013c 00608144 be3c013c
eeObj.WriteMem32(0x001123c4,0x3c013ed8)

--Zoom
--003f013c 00a88144 2000b026
eeObj.WriteMem32(0x0029caf8,0x3c013f1b)
end

emuObj.AddVsyncHook(widescreen)