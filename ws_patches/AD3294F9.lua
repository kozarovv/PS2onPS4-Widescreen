apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Smash Court Tennis - Pro Tournament (U)(SLUS-20286)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00208144 c89082c7
eeObj.WriteMem32(0x001ae5cc,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)