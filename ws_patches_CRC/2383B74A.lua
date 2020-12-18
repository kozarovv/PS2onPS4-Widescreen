apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0016aa5c,0x3c0243c0)
--eeObj.WriteMem32(0x00168dd0,0x3c023fe9)

--Y-Fov
eeObj.WriteMem32(0x0016aa74,0x3c023f36)
eeObj.WriteMem32(0x0016aa78,0x34429cfe)
end

emuObj.AddVsyncHook(widescreen)