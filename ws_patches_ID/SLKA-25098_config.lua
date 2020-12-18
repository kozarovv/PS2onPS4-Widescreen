apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Lord of the Rings - The Return of the King (K) (SLKA_250.98)
--comment=Widescreen Hack (NTSC-K by Arapapa)


--0000803f 0000803f 00000044, 
eeObj.WriteMem32(0x01016610,0x3F400000)

--00000044 0000e043 0000803f
eeObj.WriteMem32(0x01016620,0x442b0000)

--0000803f 0000803f 0000603f
eeObj.WriteMem32(0x01016628,0x3fab0000)

--Font fix
--0000803f 0000803f 00000000 00000000 80971f00
eeObj.WriteMem32(0x002a3780,0x3f400000)

--HUD fix
--0000803f 0000803f 00000000 0000803f 00000000 00000000 00000000 0000803f
eeObj.WriteMem32(0x002a6d20,0x3faaaaab)


------------------------------------------------------/
--Hud Zoom
--eeObj.WriteMem32(0x00249230,0x3c033f40)

--Font fix
--613f023c 110e4234 00088244
--eeObj.WriteMem32(0x002039d4,0x0809d4b0)
--eeObj.WriteMem32(0x002039dc,0x00000000)
--eeObj.WriteMem32(0x002752c0,0x46000b02)
--eeObj.WriteMem32(0x002752c4,0x3c013f40)
--eeObj.WriteMem32(0x002752c8,0x4481f000)
--eeObj.WriteMem32(0x002752cc,0x461e6302)
--eeObj.WriteMem32(0x002752d0,0x46000b42)
--eeObj.WriteMem32(0x002752d4,0x08080e76)

end

emuObj.AddVsyncHook(widescreen)