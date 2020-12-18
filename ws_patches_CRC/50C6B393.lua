apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by VIRGIN KLM

--Widescreen hack 16:9

--Menu 3D
eeObj.WriteMem32(0x0021E060,0x3f400000)

--Game Play Fov
eeObj.WriteMem32(0x0060EE68,0x3f400000)
eeObj.WriteMem32(0x00619E68,0x3f400000)
eeObj.WriteMem32(0x00640668,0x3f400000)

--Game Play Render Fix
eeObj.WriteMem32(0x0060EE78,0x44800000)
eeObj.WriteMem32(0x0060EE80,0x40000000)
eeObj.WriteMem32(0x00619E78,0x44800000)
eeObj.WriteMem32(0x00619E80,0x40000000)
eeObj.WriteMem32(0x00640678,0x44800000)
eeObj.WriteMem32(0x00640680,0x40000000)
end

emuObj.AddVsyncHook(widescreen)