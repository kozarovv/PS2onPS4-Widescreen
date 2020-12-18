apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hot Wheels - World Race (U)(SLUS-20737)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00008144 1000b07f
eeObj.WriteMem32(0x0028ba2c,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)