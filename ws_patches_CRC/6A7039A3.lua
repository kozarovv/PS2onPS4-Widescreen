apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x001cf6e0,0x3c014388)

--Y-Fov
eeObj.WriteMem32(0x002506bc,0x3c01bf2a)

--2D fix
eeObj.WriteMem32(0x002ae968,0x3c013fab)

--eeObj.WriteMem32(0x00250540,0x3c01bec0)
end

emuObj.AddVsyncHook(widescreen)