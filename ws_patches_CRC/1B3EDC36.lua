apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen Hack by VIRGIN KLM

--Widescreen - 3D Elements
eeObj.WriteMem32(0x002F5F20,0x3F400000)
eeObj.WriteMem32(0x00165b2c,0x3c033fab)
end

emuObj.AddVsyncHook(widescreen)