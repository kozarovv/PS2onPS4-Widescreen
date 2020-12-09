apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x002ec078,0x3feccccd)
eeObj.WriteMem32(0x002c2264,0x3f1a0000)

--Y-Fov
eeObj.WriteMem32(0x002c5de0,0x3f2aaa9f)

--Rendeer Fix
eeObj.WriteMem32(0x002094e8,0x3c013ff0)
eeObj.WriteMem32(0x002094ec,0x34210000)
end

emuObj.AddVsyncHook(widescreen)