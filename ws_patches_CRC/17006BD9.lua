apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x001B2494,0x3FAAAAAB)
eeObj.WriteMem32(0x001B24A8,0x3FAAAAAB)
end

emuObj.AddVsyncHook(widescreen)