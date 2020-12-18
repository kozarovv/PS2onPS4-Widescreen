apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by synce (NTSC-K by Arapapa)

--16:9 (00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x00303fac,0x3c013f40)
eeObj.WriteMem32(0x00303fb0,0x44810000)
eeObj.WriteMem32(0x00303fb8,0x4600c602)

--Partial HUD fix 
--0000803f(*) 0000803f 0000803f 0000803f (search *4)
eeObj.WriteMem32(0x00518000,0x3f400000)
eeObj.WriteMem32(0x00519000,0x3f400000)
eeObj.WriteMem32(0x0051A000,0x3f400000)
eeObj.WriteMem32(0x0051B000,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)