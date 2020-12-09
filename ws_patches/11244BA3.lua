apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001c6468,0x3c013f40)
eeObj.WriteMem32(0x001c93dc,0x3c013f40)
eeObj.WriteMem32(0x0010d7b8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)