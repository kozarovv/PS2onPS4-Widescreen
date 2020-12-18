apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by VIRGIN KLM

--Widescreen hack 16:9

--Menu 3D
eeObj.WriteMem32(0x0054CE70,0x3f400000)

--Game Play Fov
eeObj.WriteMem32(0x007983F0,0x3f400000)

--Game Play Render Fix
eeObj.WriteMem32(0x00798400,0x44800000)
eeObj.WriteMem32(0x00798408,0x40000000)
end

emuObj.AddVsyncHook(widescreen)