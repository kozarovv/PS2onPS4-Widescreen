apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Power Volleyball (E)(SLES-54717)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002513b8,0x43c00000)
end

emuObj.AddVsyncHook(widescreen)