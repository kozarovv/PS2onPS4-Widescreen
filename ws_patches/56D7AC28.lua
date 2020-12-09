apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by VIRGIN KLM

--Game Play Fov
eeObj.WriteMem32(0x008CC390,0x3f400000)

--Game Play Render Fix
eeObj.WriteMem32(0x008CC3A0,0x44800000)
eeObj.WriteMem32(0x008CC3A8,0x40000000)
end

emuObj.AddVsyncHook(widescreen)