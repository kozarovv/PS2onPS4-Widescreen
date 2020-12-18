apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x00343ff8,0x44554000)
eeObj.WriteMem32(0x00344000,0x44100000)
end

emuObj.AddVsyncHook(widescreen)