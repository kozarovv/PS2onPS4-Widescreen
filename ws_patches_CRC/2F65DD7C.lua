apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov  202208E8
eeObj.WriteMem32(0x00250e98,0x3FE38E2A)

--Zoom
--eeObj.WriteMem32(0x00196184,0x3c01bec0)
--eeObj.WriteMem32(0x00196e84,0x3c013f40)
eeObj.WriteMem32(0x002afef0,0x3F6EEEE9)
eeObj.WriteMem32(0x002afef8,0x3F6EEEE9)
end

emuObj.AddVsyncHook(widescreen)