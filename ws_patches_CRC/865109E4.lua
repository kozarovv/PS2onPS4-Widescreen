apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom and XY-Fov
--803f013c 00008144 c3000146 04000010
eeObj.WriteMem32(0x002fe680,0x3c013f97)

--Zoom
--00bf013c 00388144 2000b07f 1000bfff (1st)
eeObj.WriteMem32(0x00302a74,0x3c01bec0)
end

emuObj.AddVsyncHook(widescreen)