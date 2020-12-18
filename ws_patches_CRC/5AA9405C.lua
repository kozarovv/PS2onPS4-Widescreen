apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--Zoom
--003f013c 00008144 2800b5e7
eeObj.WriteMem32(0x002c7ad4,0x3c013f1e)

--Y-Fov
--403f013c 00008144 d00b8224
eeObj.WriteMem32(0x00180018,0x3c013f10)
end

emuObj.AddVsyncHook(widescreen)