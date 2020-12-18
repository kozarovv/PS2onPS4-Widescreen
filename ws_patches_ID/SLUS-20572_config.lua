apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tiger Woods PGA Tour 2003 (NTSC-U) (SLUS-20572)
--comment=Widescreen Hack by VIRGIN KLM

--Widescreen hack 16:9

--Menu 3D
eeObj.WriteMem32(0x0055A000,0x3f400000)

--Game Play Fov
eeObj.WriteMem32(0x005784E0,0x3f400000)

--Game Play Render Fix
eeObj.WriteMem32(0x005784F0,0x44800000)
eeObj.WriteMem32(0x005784F8,0x40000000)
end

emuObj.AddVsyncHook(widescreen)