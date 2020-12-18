apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Naruto Shippuden Narutimate Accel SLPS_257.68
--comment=Widescreen Hack
eeObj.WriteMem32(0x00a29914,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)