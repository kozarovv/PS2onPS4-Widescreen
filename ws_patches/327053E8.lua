apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x00641770,0x3faaaaaa)
eeObj.WriteMem32(0x00641774,0x3fe38e38)

--coop
eeObj.WriteMem32(0x00641930,0x402aaaaa)
eeObj.WriteMem32(0x00641934,0x40638e38)
eeObj.WriteMem32(0x0064194c,0x402aaaaa)
eeObj.WriteMem32(0x00641950,0x40638e38)
eeObj.WriteMem32(0x002CD9C4,0x24110001)

--cutscenes fix
--eeObj.WriteMem32(0x0036512c,0x3c033fab)
eeObj.WriteMem32(0x006c2c68,0x3fe38e38)

--text width fix
eeObj.WriteMem32(0x0040da28,0x3c034455)

--custscenes black border's fix
eeObj.WriteMem32(0x0065ca78,0x00000000)
eeObj.WriteMem32(0x003de3dc,0x3c020000)
eeObj.WriteMem32(0x003de4ec,0x3c020000)
eeObj.WriteMem32(0x003de508,0x3c030000)

--subtitles fix
eeObj.WriteMem32(0x0036bb74,0x24030000)

--FMV's fix
eeObj.WriteMem32(0x003c5218,0x3c0143fe)
eeObj.WriteMem32(0x003c5230,0x44810800)
eeObj.WriteMem32(0x003c522c,0x00000000)
eeObj.WriteMem32(0x003c5234,0xe7a10104)
eeObj.WriteMem32(0x003c5248,0xc4600000)
eeObj.WriteMem32(0x003c524c,0xe7a00088)
eeObj.WriteMem32(0x003c5254,0xe7a000c8)
eeObj.WriteMem32(0x003c5258,0x3c01c270)
eeObj.WriteMem32(0x003c525c,0x44810800)
eeObj.WriteMem32(0x003c5260,0xe7a10044)
eeObj.WriteMem32(0x003c5264,0xe7a100c4)

--480p
eeObj.WriteMem32(0x0045aaa4,0x3c050000)
eeObj.WriteMem32(0x0045aaac,0x3c060050)
eeObj.WriteMem32(0x0045aab4,0x3c070001)
eeObj.WriteMem32(0x0045ad74,0x3c090010)
end

emuObj.AddVsyncHook(widescreen)