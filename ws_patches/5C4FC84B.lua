apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by VIRGIN KLM and Arapapa

--Widescreen hack 16:9

--Menu 3D
--0000803f 0000003f 00000044 0000e042
eeObj.WriteMem32(0x00556430,0x3f400000)

--Game Play Fov
--0000803f 0000003f 00003044 0000f042
eeObj.WriteMem32(0x00772a80,0x3f400000)

--Game Play Render Fix
--00000044 0000e043 0000803f 00000040
eeObj.WriteMem32(0x00772a90,0x44800000)
eeObj.WriteMem32(0x00772a98,0x40000000)
end

emuObj.AddVsyncHook(widescreen)