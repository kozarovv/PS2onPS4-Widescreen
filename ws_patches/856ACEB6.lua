apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--403f013c 00008144 3002c3e7
eeObj.WriteMem32(0x00199868,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)