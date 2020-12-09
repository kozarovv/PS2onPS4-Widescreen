apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen Hack by VIRGIN KLM

--Widescreen - 3D Elements
eeObj.WriteMem32(0x00644D48,0x3FB60B61)
end

emuObj.AddVsyncHook(widescreen)