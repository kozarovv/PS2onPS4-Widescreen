apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--3D Scene which is proceeding automatically
--803f013c 00188144 9000b17f
eeObj.WriteMem32(0x001aa7cc,0x3c013fab)
--003f013c 00088144 080002c6
eeObj.WriteMem32(0x001aa80c,0x3c013f05)

--Game Play 
--803f013c 00a08144 43480200
eeObj.WriteMem32(0x001aa2d4,0x3c013fab)
--003f013c 00388144 080000c6
eeObj.WriteMem32(0x001aa70c,0x3c013f05)

--Render fix
--803f013c 00188144 43200146
--eeObj.WriteMem32(0x0020ed84,0x3c013fb0)

--Odd Zoom (able to avoid rendering fix)
--803f013c 00a08144
eeObj.WriteMem32(0x0020e9f4,0x3c013fb0)

----------------/
-- Memory Hack --
--3D Screen which is proceeding automatically
--0000803f 00000000 29010000 9097fb01
--eeObj.WriteMem32(0x00411260,0x3f400000)

--Game play
--c00e6f00 e6c4c83f(*) 00000000 00000000 00000000
--eeObj.WriteMem32(0x003fdf40,0x3F9693A7)
end

emuObj.AddVsyncHook(widescreen)