apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--403f013c 00008144 2d200002
eeObj.WriteMem32(0x001add98,0x3c013f10)

--Zoom
--00bf013c 00388144 2000b07f (2nd)
eeObj.WriteMem32(0x002bd2dc,0x3c01bec0)
end

emuObj.AddVsyncHook(widescreen)