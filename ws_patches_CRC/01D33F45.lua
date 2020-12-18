apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f013c 00488144 40600146
eeObj.WriteMem32(0x00331114,0x3c013f20)

--Y-Fov
--803f013c 00208144 2001b1ff
eeObj.WriteMem32(0x00346ea4,0x3c013ffa)
end

emuObj.AddVsyncHook(widescreen)