apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0017ac74,0x3c023f08)
eeObj.WriteMem32(0x0017ac7c,0x34438883)

--smoke distance
--eeObj.WriteMem32(0x0024f3b4,0x3c013f00)

--Zoom
--eeObj.WriteMem32(0x00257ee4,0x3c013f80)
--eeObj.WriteMem32(0x002571e4,0x3c01bec0)

--Y-Fov
--eeObj.WriteMem32(0x0017ac84,0x3c023e60)
end

emuObj.AddVsyncHook(widescreen)