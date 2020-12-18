apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cold Winter [PAL-M4] (SLES_529.63)
--comment=Widescreen pnach by El_Patas

eeObj.WriteMem32(0x003C6284,0x3C013F40)
eeObj.WriteMem32(0x003C628C,0x44810800)
eeObj.WriteMem32(0x003C6290,0x03E00008)
eeObj.WriteMem32(0x003C6294,0x4601A083)

--Weapon
eeObj.WriteMem32(0x00311774,0xC6740330)
eeObj.WriteMem32(0x0031177C,0xC7A30048)
eeObj.WriteMem32(0x00311788,0xE7A20050)
eeObj.WriteMem32(0x0031178C,0xC6620330)

--Gameplay
eeObj.WriteMem32(0x001DC63C,0x8E440058)
eeObj.WriteMem32(0x001DC648,0xE7A20040)

--480p
--eeObj.WriteMem32(0x004F7DAC,0x3C050000)
--eeObj.WriteMem32(0x004F7DB4,0x3C060050)
--eeObj.WriteMem32(0x004F7DBC,0x3C070001)
--eeObj.WriteMem32(0x004F8014,0x3C090010)
end

emuObj.AddVsyncHook(widescreen)