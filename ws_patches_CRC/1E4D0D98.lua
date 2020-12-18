apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001857b8,0x3c013fe2)
eeObj.WriteMem32(0x001857bc,0x342193fc)
end

emuObj.AddVsyncHook(widescreen)