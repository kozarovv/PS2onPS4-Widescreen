apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9)

-- orginal NTSC-patch by sergx12
-- ported to PAL, added widescreen support for 2player mode by elhecht

-- gameplay
eeObj.WriteMem32(0x00445668,0x3c024328)
eeObj.WriteMem32(0x00445678,0x3c023f1f)
eeObj.WriteMem32(0x0044567c,0x344349fc)

-- 2-player game
eeObj.WriteMem32(0x00445708,0x3c0242a8)
eeObj.WriteMem32(0x00445720,0x3c023f1f)
eeObj.WriteMem32(0x00445724,0x344349fc)

eeObj.WriteMem32(0x004457a4,0x3c0242a8)
eeObj.WriteMem32(0x004457bc,0x3c023f1f)
eeObj.WriteMem32(0x004457c0,0x344249fc)
end

emuObj.AddVsyncHook(widescreen)