apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sunny Garcia Surfing [NTSC-U] [SLUS-20208]
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--803f013c 00108144 000001c6 (3rd)
eeObj.WriteMem32(0x0024f434,0x3c013fa5)

--Zoom
--003f013c 00108144 703f5324
eeObj.WriteMem32(0x00251b80,0x3c013ec6)
end

emuObj.AddVsyncHook(widescreen)