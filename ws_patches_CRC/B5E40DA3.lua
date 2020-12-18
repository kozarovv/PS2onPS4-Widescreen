apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=TG DareDevil (E)(SLES-50068)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00143db4,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)