apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0040c768,0x3c033f06)
eeObj.WriteMem32(0x0040c76c,0x34646666)

--Zoom
--eeObj.WriteMem32(0x0040c4e8,0x3c033f80)
--eeObj.WriteMem32(0x0040c524,0x3c03bec0)
end

emuObj.AddVsyncHook(widescreen)