apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f033c 9c00a227 (2nd)
eeObj.WriteMem32(0x00231ac8,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)