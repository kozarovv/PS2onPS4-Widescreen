apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Lord of the Rings - Ou no Kikan (J)(SLPM-65503)
--comment=Widescreen Hack (NTSC-J by Arapapa)


--0000803f 0000803f 00000044, 
eeObj.WriteMem32(0x01033310,0x3F400000)

--00000044 0000e043 0000803f
eeObj.WriteMem32(0x01033320,0x442b0000)

--0000803f 0000803f 0000603f
eeObj.WriteMem32(0x01033328,0x3fab0000)

--Font fix
--0000803f 0000803f 00000000 00000000 80971f00
eeObj.WriteMem32(0x002c0480,0x3f400000)

--HUD fix
--0000803f 0000803f 00000000 0000803f 00000000 00000000 00000000 0000803f
eeObj.WriteMem32(0x002c3a20,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)