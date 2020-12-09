apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00688144 8c8493c7
eeObj.WriteMem32(0x0017f080,0x3c013f40)

--Y-Fov fix (When Wide option is turnned on)
--f4491f3f eeeeee3e 00e0eb44
--eeeeee3e eeeeee3e 00e0eb44
eeObj.WriteMem32(0x00284f34,0x3eeeeeee)
--eeObj.WriteMem32(0x00284f38,0x3F1F49F4)

--Zoom
--eeObj.WriteMem32(0x0017f078,0x3c0143B4)
end

emuObj.AddVsyncHook(widescreen)