apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0017e234,0x3c013f40)
eeObj.WriteMem32(0x001c3da8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)