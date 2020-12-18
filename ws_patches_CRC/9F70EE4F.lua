apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Star Trek Voyager - Elite Force (U)(SLUS-20227)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--80bf013c 00108144 c0b01446
eeObj.WriteMem32(0x00217cd8,0x3c01bfab)

--Y-Fov
--803f013c 00108144 0040013c
eeObj.WriteMem32(0x0029acec,0x3c013fab)

--Render fix
--003f013c 00b08144 02001546
eeObj.WriteMem32(0x00217e2c,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)