apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 72 - The Ninkyou (J)(SLPM-62589)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--803f053c 7fcb023c
eeObj.WriteMem32(0x0017657c,0x3c053f40)

--Zoom
--1844043c 0046033c
eeObj.WriteMem32(0x001769e0,0x3c0443e4)
end

emuObj.AddVsyncHook(widescreen)