apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--0040053c 80c7033c
eeObj.WriteMem32(0x00154bbc,0x3c053fc0)
end

emuObj.AddVsyncHook(widescreen)