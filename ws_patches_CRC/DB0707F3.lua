apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gregory Horror Show - Soul Collector (K)(SLKA-25033)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--803f023c ac9c80c7 0045033c
eeObj.WriteMem32(0x00165b58,0x3c023f40)

--2D X-Fov
--803f023c 00688244 9644033c
eeObj.WriteMem32(0x00165ae0,0x3c023f40)

--Font Zoom
--803f023c 00708244 06a40046 (2 times)
eeObj.WriteMem32(0x00255fb0,0x3c023f40)
eeObj.WriteMem32(0x00255fd8,0x3c023f40)

--Font Y-fov
--8042033c 7e42023c
eeObj.WriteMem32(0x00255f98,0x3c0342ab)
--7e42023c 8042033c
eeObj.WriteMem32(0x00255fc8,0x3c0342ab)

--No interlacing by asasega
eeObj.WriteMem32(0x0010210C,0x00000000)

----------------------------------------------/
--eeObj.WriteMem32(0x0032e804,0x3a000000)
--eeObj.WriteMem32(0x001649c8,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)