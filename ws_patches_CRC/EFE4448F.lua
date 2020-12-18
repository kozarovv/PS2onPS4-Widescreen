apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jurassic - The Hunted (U)(SLUS-21907)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--403f013c 00008144 d00b8224
eeObj.WriteMem32(0x00178f80,0x3c013f10)

--Zoom
--003f013c 00008144 2800b5e7
eeObj.WriteMem32(0x002b5b44,0x3c013f1e)
end

emuObj.AddVsyncHook(widescreen)