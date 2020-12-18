apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=7 Blades (J)(SLPM-65008)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--0044013c 00608144 2044013c (4th)
eeObj.WriteMem32(0x002f40c4,0x3c0143c0)

--Y-Fov
--3333733f 00401c46 (4th)
eeObj.WriteMem32(0x004ef9c4,0x3fa2221d)

--X-Fov
--803f013c 00608144 b0720e0c
--eeObj.WriteMem32(0x003b3d14,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)