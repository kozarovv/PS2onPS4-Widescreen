apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--06a00046 003f023c 00008244
eeObj.WriteMem32(0x001cda4c,0x3c023f21)

--Y-Fov
eeObj.WriteMem32(0x001cda98,0x3c023f10)
end

emuObj.AddVsyncHook(widescreen)