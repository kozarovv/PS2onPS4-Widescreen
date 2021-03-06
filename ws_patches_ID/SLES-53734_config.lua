apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=50 Cent - Bulletproof (E)(SLES-53734)
--comment=Widescreen hack by Arapapa and 60 FPS by asasega
 
--Gameplay 16:9

--X-Fov 4:3 fix
--e63e013c 1a8b2134 00608144 (2nd)
--083f013c 83882134 00608144
eeObj.WriteMem32(0x001eb448,0x3c013f08)
eeObj.WriteMem32(0x001eb44c,0x34218883)

--X-Fov Wide screen fix
--80df4426 cc3e013c cdcc2134 00608144
--80df4426 083f013c 83882134 00608144
eeObj.WriteMem32(0x001eb464,0x3c013F08)
eeObj.WriteMem32(0x001eb468,0x34218883)

--Font's Shadow fix
--803f013c 00888144 01630246
--403f013c 00888144 01630246
eeObj.WriteMem32(0x00158464,0x3c013f40)

--868c0046 ac00058e (1st)
eeObj.WriteMem32(0x00158484,0x0807d744)

eeObj.WriteMem32(0x001f5d10,0x3c013f80)
eeObj.WriteMem32(0x001f5d14,0x44819000)
eeObj.WriteMem32(0x001f5d18,0x08056122)

--Font fix
--803f013c 00888144 01030c46
--403f013c 00888144 01030c46
eeObj.WriteMem32(0x001584b8,0x3c013f40)

--868c0046 ac00058e (2nd)
eeObj.WriteMem32(0x001584d4,0x0807d747)

eeObj.WriteMem32(0x001f5d1c,0x3c013f80)
eeObj.WriteMem32(0x001f5d20,0x44819000)
eeObj.WriteMem32(0x001f5d24,0x08056136)

--Font fix (Menu)
eeObj.WriteMem32(0x004E9668,0x3F400000)
eeObj.WriteMem32(0x004E9858,0x3F400000)
eeObj.WriteMem32(0x004E9900,0x3F400000)
eeObj.WriteMem32(0x004E99A4,0x3F400000)
eeObj.WriteMem32(0x004E9A48,0x3F400000)
eeObj.WriteMem32(0x004E9AEC,0x3F400000)
eeObj.WriteMem32(0x004E9B90,0x3F400000)
eeObj.WriteMem32(0x004E9C34,0x3F400000)
eeObj.WriteMem32(0x004E9CD8,0x3F400000)
eeObj.WriteMem32(0x004E9D7C,0x3F400000)
eeObj.WriteMem32(0x004E9E20,0x3F400000)
eeObj.WriteMem32(0x004E9EC4,0x3F400000)
eeObj.WriteMem32(0x004E9F68,0x3F400000)
eeObj.WriteMem32(0x004EA00C,0x3F400000)
eeObj.WriteMem32(0x004EA0B0,0x3F400000)
eeObj.WriteMem32(0x004EA158,0x3F400000)
eeObj.WriteMem32(0x004EA1FC,0x3F400000)
eeObj.WriteMem32(0x004EA2A0,0x3F400000)
eeObj.WriteMem32(0x004EA344,0x3F400000)
eeObj.WriteMem32(0x004EA3E8,0x3F400000)
eeObj.WriteMem32(0x004EA490,0x3F400000)
eeObj.WriteMem32(0x004EA538,0x3F400000)
eeObj.WriteMem32(0x004EA5DC,0x3F400000)
eeObj.WriteMem32(0x004EA680,0x3F400000)
eeObj.WriteMem32(0x004EA724,0x3F400000)
eeObj.WriteMem32(0x004EA7C8,0x3F400000)
eeObj.WriteMem32(0x004EA86C,0x3F400000)
eeObj.WriteMem32(0x004EA910,0x3F400000)
eeObj.WriteMem32(0x004EA9B4,0x3F400000)
eeObj.WriteMem32(0x004EAA58,0x3F400000)
eeObj.WriteMem32(0x004EAAFC,0x3F400000)
eeObj.WriteMem32(0x004EABA0,0x3F400000)
eeObj.WriteMem32(0x004EAC44,0x3F400000)
eeObj.WriteMem32(0x004EACE8,0x3F400000)
eeObj.WriteMem32(0x004EAD8C,0x3F400000)
eeObj.WriteMem32(0x004EAE30,0x3F400000)
eeObj.WriteMem32(0x004EAED8,0x3F400000)
eeObj.WriteMem32(0x004EAF7C,0x3F400000)
eeObj.WriteMem32(0x004EB020,0x3F400000)
eeObj.WriteMem32(0x004EB0C4,0x3F400000)
eeObj.WriteMem32(0x004EB168,0x3F400000)
eeObj.WriteMem32(0x004EB20C,0x3F400000)
eeObj.WriteMem32(0x004EB2B0,0x3F400000)
eeObj.WriteMem32(0x004EB3F8,0x3F400000)
eeObj.WriteMem32(0x004EB49C,0x3F400000)
eeObj.WriteMem32(0x004EB540,0x3F400000)
eeObj.WriteMem32(0x004EB5E4,0x3F400000)
eeObj.WriteMem32(0x004EB688,0x3F400000)
eeObj.WriteMem32(0x004EB72C,0x3F400000)
eeObj.WriteMem32(0x004EB7D0,0x3F400000)
eeObj.WriteMem32(0x004EB874,0x3F400000)
eeObj.WriteMem32(0x004EB918,0x3F400000)
eeObj.WriteMem32(0x004EB9BC,0x3F400000)
eeObj.WriteMem32(0x004EBA60,0x3F400000)
eeObj.WriteMem32(0x004EBB04,0x3F400000)
eeObj.WriteMem32(0x004EBBA8,0x3F400000)
eeObj.WriteMem32(0x004EBC50,0x3F400000)
eeObj.WriteMem32(0x004EBCF4,0x3F400000)
eeObj.WriteMem32(0x004EBD98,0x3F400000)
eeObj.WriteMem32(0x004EBE3C,0x3F400000)
eeObj.WriteMem32(0x004EBEE0,0x3F400000)
eeObj.WriteMem32(0x004EBF84,0x3F400000)
eeObj.WriteMem32(0x004EC0D0,0x3F400000)
eeObj.WriteMem32(0x004EC174,0x3F400000)
eeObj.WriteMem32(0x004EC218,0x3F400000)
eeObj.WriteMem32(0x004EC2BC,0x3F400000)
eeObj.WriteMem32(0x004EC360,0x3F400000)
eeObj.WriteMem32(0x004EC404,0x3F400000)
eeObj.WriteMem32(0x004EC4A8,0x3F400000)
eeObj.WriteMem32(0x004EC54C,0x3F400000)
eeObj.WriteMem32(0x004EC5F0,0x3F400000)
eeObj.WriteMem32(0x004EC694,0x3F400000)
eeObj.WriteMem32(0x004EC738,0x3F400000)
eeObj.WriteMem32(0x004EC7DC,0x3F400000)
eeObj.WriteMem32(0x004EC880,0x3F400000)
eeObj.WriteMem32(0x004ECC58,0x3F400000)
eeObj.WriteMem32(0x004ECDA0,0x3F400000)
eeObj.WriteMem32(0x004ECE48,0x3F400000)
eeObj.WriteMem32(0x004ECF98,0x3F400000)
eeObj.WriteMem32(0x004ED750,0x3F400000)
eeObj.WriteMem32(0x004ED7F4,0x3F400000)
eeObj.WriteMem32(0x004ED898,0x3F400000)

--Yes and No
eeObj.WriteMem32(0x004F92DC,0x3f400000)
eeObj.WriteMem32(0x004F9380,0x3f400000)

--60 FPS by asasega (4th)
--2d20a003 f041013c 00608144
--2d20a003 7042013c 00608144
eeObj.WriteMem32(0x001b3ce8,0x3c014270)
end

emuObj.AddVsyncHook(widescreen)