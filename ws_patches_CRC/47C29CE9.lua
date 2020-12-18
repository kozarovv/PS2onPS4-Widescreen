apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--b63f013c 6ddb2134
eeObj.WriteMem32(0x0016d790,0x3c013ff3)
eeObj.WriteMem32(0x0016d794,0x3421cf35)
end

emuObj.AddVsyncHook(widescreen)