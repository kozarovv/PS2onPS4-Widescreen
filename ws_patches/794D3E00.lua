apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa


--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001aad14,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)