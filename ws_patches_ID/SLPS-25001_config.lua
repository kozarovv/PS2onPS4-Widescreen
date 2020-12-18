apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Eternal Ring (J)(SLPS-25001)
--comment=Widescreen hack by Arapapa

--Widescreen Hack 16:9

--X-Fov
--803f013c 00a88144 0045013c
eeObj.WriteMem32(0x00200fb4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)