apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

eeObj.WriteMem32(0x0010202c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)