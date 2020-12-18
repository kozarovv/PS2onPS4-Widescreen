apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by VIRGIN KLM

--Game Play Fov
eeObj.WriteMem32(0x008F4E40,0x3f400000)

--Game Play Render Fix
eeObj.WriteMem32(0x008F4E50,0x44800000)
eeObj.WriteMem32(0x008F4E58,0x40000000)
end

emuObj.AddVsyncHook(widescreen)