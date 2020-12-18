apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Frogger - The Great Quest (U)(SLUS-20257)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f023c 00008244 bc848ce7
eeObj.WriteMem32(0x0010dbd4,0x3c023f21)

--Y-Fov
--7fbf023c ffbe023c
eeObj.WriteMem32(0x0010e0ec,0x3c02bfaa)

--Render fix
--003f023c 000000c6 00088244
eeObj.WriteMem32(0x00140af0,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)