apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=World Wrestling Championship (E)(SLES-54792)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002dc1f4,0x3faaaaab)
eeObj.WriteMem32(0x002df284,0x3F24CBDA)
end

emuObj.AddVsyncHook(widescreen)