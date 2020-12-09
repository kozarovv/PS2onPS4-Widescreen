apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Naruto Shippuden Narutimate Accel 2 SLPS_258.37
--comment=Widescreen Hack
eeObj.WriteMem32(0x00af3694,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)