apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Spider-Man 2 (NTSC-U) (SLUS_207.76)
--comment=Widescreen fix by flameofrecca
eeObj.WriteMem32(0x0067a910,0x3f947ae1)
eeObj.WriteMem32(0x0067a8ec,0x3ec00000)

--Map Screen HUD, text fixes
--search the 206d**** address range for more map screen hud fixes
eeObj.WriteMem32(0x006db628,0x41580000)
eeObj.WriteMem32(0x006db634,0x41580000)
eeObj.WriteMem32(0x006dfab8,0x3f400000)
eeObj.WriteMem32(0x006df9e8,0x3f400000)
eeObj.WriteMem32(0x006df918,0x3f400000)
eeObj.WriteMem32(0x006df848,0x3f400000)
eeObj.WriteMem32(0x006d8034,0x425c0000)
eeObj.WriteMem32(0x006d8048,0x42fa0000)

--Onscreen HUD
eeObj.WriteMem32(0x00720ff4,0x42340000)
eeObj.WriteMem32(0x007223f0,0x42900000)
eeObj.WriteMem32(0x00722404,0x42900000)
eeObj.WriteMem32(0x00722418,0x42f40000)
eeObj.WriteMem32(0x0072242c,0x42f40000)
eeObj.WriteMem32(0x00720d08,0x43140000)
eeObj.WriteMem32(0x00720d1c,0x43140000)
eeObj.WriteMem32(0x00720cf4,0x42680000)
eeObj.WriteMem32(0x00720ce0,0x42680000)
eeObj.WriteMem32(0x0072a0d8,0x43140000)
eeObj.WriteMem32(0x0072a0ec,0x43140000)
eeObj.WriteMem32(0x0072a180,0x43140000)
eeObj.WriteMem32(0x0072a194,0x43140000)
eeObj.WriteMem32(0x0072a158,0x42680000)
eeObj.WriteMem32(0x0072a16c,0x42680000)
eeObj.WriteMem32(0x0072a0c4,0x42680000)
eeObj.WriteMem32(0x0072a0b0,0x42680000)
eeObj.WriteMem32(0x007212b4,0x421c0000)
end

emuObj.AddVsyncHook(widescreen)