apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--0000803f 00000000 efeeee3e 00000000
eeObj.WriteMem32(0x002988c0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)