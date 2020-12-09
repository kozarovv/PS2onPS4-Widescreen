apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Full Spectrum Warrior - Ten Hammers (K)(SLKA-25368)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f013c 00108144 5b00033c (1st)
eeObj.WriteMem32(0x00186b94,0x3c013f40)

--eeObj.WriteMem32(0x004882d4,0x3c013f3a)
--eeObj.WriteMem32(0x00488404,0x3c013f80)


--Y-Fov
--883f013c c3f52134 (2nd) -> b63f013c fe9c2134
eeObj.WriteMem32(0x004d21ec,0x3c013fb6)
eeObj.WriteMem32(0x004d21f0,0x34219cfe)

--Render Fix
--003f013c 00008144 2800b7e7
eeObj.WriteMem32(0x0048848c,0x3c013f40)
--003f013c 00608144 2d284002
eeObj.WriteMem32(0x005779b0,0x3c013f80)


--Add it in the GameIndex.dbf
--EETimingHack = 1	--flickery textures
end

emuObj.AddVsyncHook(widescreen)