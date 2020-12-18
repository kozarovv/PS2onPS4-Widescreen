apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Trigger Man (U)(SLUS-20931)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00a88144 f0805624
eeObj.WriteMem32(0x00132b70,0x3c013f40)

end

emuObj.AddVsyncHook(widescreen)