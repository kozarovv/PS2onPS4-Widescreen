apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Darkwatch [PAL] (SLES_535.64)
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x006429F0,0x3FAAAAAB)
eeObj.WriteMem32(0x006429F4,0x3FE38E38)

--Cooperative
eeObj.WriteMem32(0x00642BB0,0x3FEEEEEE)
eeObj.WriteMem32(0x00642BB4,0x40638E39)
eeObj.WriteMem32(0x00642BCC,0x3FEEEEEE)
eeObj.WriteMem32(0x00642BD0,0x40638E39)

--Cutscenes fix
eeObj.WriteMem32(0x006C4388,0x3FE38E38)

--Cutscenes black border's fix
eeObj.WriteMem32(0x0065DFC8,0x00000000)
eeObj.WriteMem32(0x003DEACC,0x3C020000)
eeObj.WriteMem32(0x003DEBDC,0x3C020000)
eeObj.WriteMem32(0x003DEBF8,0x3C030000)

--Text width fix
eeObj.WriteMem32(0x0040E3C8,0x3C034455)

--Subtitles fix
eeObj.WriteMem32(0x0036C024,0x24030000)

--FMV's fix
eeObj.WriteMem32(0x003C5908,0x3C0143FE)
eeObj.WriteMem32(0x003C591C,0x00000000)
eeObj.WriteMem32(0x003C5920,0x44810800)
eeObj.WriteMem32(0x003C5924,0xE7A10104)
eeObj.WriteMem32(0x003C5938,0xC4600000)
eeObj.WriteMem32(0x003C593C,0xE7A00088)
eeObj.WriteMem32(0x003C5944,0xE7A000C8)
eeObj.WriteMem32(0x003C5948,0x3C01C270)
eeObj.WriteMem32(0x003C594C,0x44810800)
eeObj.WriteMem32(0x003C5950,0xE7A10044)
eeObj.WriteMem32(0x003C5954,0xE7A100C4)

--480p
--eeObj.WriteMem32(0x0045B6A4,0x3C050000)
--eeObj.WriteMem32(0x0045B6AC,0x3C060050)
--eeObj.WriteMem32(0x0045B6B4,0x3C070001)
--eeObj.WriteMem32(0x0045B974,0x3C090010)
end

emuObj.AddVsyncHook(widescreen)