apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Tale Of Despereauxe (U)(SLUS-21852)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f013c 00a08144 4100023c
eeObj.WriteMem32(0x00247a88,0x3c013f40)

--Y-Fov
--03180446 2400a0e7
eeObj.WriteMem32(0x00247a74,0x08030000)
eeObj.WriteMem32(0x000c0000,0x46041803)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0003)
eeObj.WriteMem32(0x000c0010,0x08091e9e)

--Render fix
--003f013c 00008144 00a51446
eeObj.WriteMem32(0x0022b860,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)