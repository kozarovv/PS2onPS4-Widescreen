apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Eternal Ring (E)(SLES-50051)
--comment=Widescreen hack by Arapapa

--Widescreen Hack 16:9

--X-Fov
--803f013c 00a88144
eeObj.WriteMem32(0x00101160,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)