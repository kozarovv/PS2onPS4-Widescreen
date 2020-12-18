apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Corvette (PAL)

--widescreen patch
eeObj.WriteMem32(0x014FEAF0,0x3FB60B60)
end

emuObj.AddVsyncHook(widescreen)