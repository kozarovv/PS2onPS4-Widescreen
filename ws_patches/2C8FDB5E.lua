apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0012fdbc,0x3c083f40)

------------------------------------------------/
--Zoom 
--eeObj.WriteMem32(0x0012fc94,0x3c023fd0)

--Y-Fov
--eeObj.WriteMem32(0x0012fde4,0x3c023f9e)
--eeObj.WriteMem32(0x0012fdec,0x3446b852)

--eeObj.WriteMem32(0x0012fdc4,0x3c0743A8)
end

emuObj.AddVsyncHook(widescreen)