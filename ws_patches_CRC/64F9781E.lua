apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Tiger Woods PGA Tour 2004 NTSC-U (SLUS-20757) Widescreen Hack by VIRGIN KLM and Arapapa

--Gameplay 3D
eeObj.WriteMem32(0x007C3880,0x3F400000)

--Menu 3D
eeObj.WriteMem32(0x005A7C80,0x3F400000)

--Game Play Render Fix
eeObj.WriteMem32(0x007C3890,0x44800000)
eeObj.WriteMem32(0x007C3898,0x40000000)
end

emuObj.AddVsyncHook(widescreen)