apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Garfield - Saving Arlene (PAL)(SLES-53587)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f033c 4940023c 00188344
eeObj.WriteMem32(0x0010ed84,0x3c033f40)

--Fov
--803f033c 00088344 00000000 02a80046
eeObj.WriteMem32(0x0010ee8c,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)