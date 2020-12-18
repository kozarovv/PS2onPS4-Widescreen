apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kaan - Barbarian's Blade (E)(SLES-52179)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x001849d4,0x3c023f40)

--Y-Fov
eeObj.WriteMem32(0x00177a1c,0x3c024010)
end

emuObj.AddVsyncHook(widescreen)