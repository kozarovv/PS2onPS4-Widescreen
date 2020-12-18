apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Search & Destroy (E)(SLES-54033)
--comment=Widescreen hack by Arapapa

--Wide Screen 16:9

eeObj.WriteMem32(0x001c8db8,0x3c014340)
end

emuObj.AddVsyncHook(widescreen)