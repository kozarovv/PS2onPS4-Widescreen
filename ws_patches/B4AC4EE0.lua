apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Bomberman Jetters (SLPM_65218) Widescreen Hack (gamemasterplc)
eeObj.WriteMem32(0x0048F7DC,0x00000000)
eeObj.WriteMem32(0x0049A89C,0x00000000)
eeObj.WriteMem32(0x004CCCD4,0x08030000)
eeObj.WriteMem32(0x000C0000,0x3C01005A)
eeObj.WriteMem32(0x000C0004,0x3C1B3F40)
eeObj.WriteMem32(0x000C0008,0x449B6000)
eeObj.WriteMem32(0x000C000C,0xC42E8D00)
eeObj.WriteMem32(0x000C0010,0x460E6382)
eeObj.WriteMem32(0x000C0014,0x03E00008)
eeObj.WriteMem32(0x000C0018,0xE42E8D00)
eeObj.WriteMem32(0x0024960C,0x240B00EA)
eeObj.WriteMem32(0x0024966C,0x240B00C0)
eeObj.WriteMem32(0x0024965C,0x24080190)
eeObj.WriteMem32(0x0023E2E4,0x3C0142A8)
eeObj.WriteMem32(0x00268EC0,0x2688011C)
eeObj.WriteMem32(0x00268EE8,0x240B000C)
eeObj.WriteMem32(0x00268E84,0x240B0012)
eeObj.WriteMem32(0x00268D8C,0x26B5000C)
eeObj.WriteMem32(0x00268DD8,0x26B5000C)
eeObj.WriteMem32(0x0026A224,0x240B0018)
eeObj.WriteMem32(0x0026A184,0x240B001E)
eeObj.WriteMem32(0x0026A1A8,0x241B0028)
eeObj.WriteMem32(0x0026A1B8,0xAFBB0018)
eeObj.WriteMem32(0x00269DEC,0x3C0141C0)
eeObj.WriteMem32(0x00269E04,0x3C014258)
eeObj.WriteMem32(0x00269F74,0x3C0142A2)
eeObj.WriteMem32(0x00269FB8,0x3C0142DE)
eeObj.WriteMem32(0x0026A054,0x3C01430A)
eeObj.WriteMem32(0x0026A098,0x3C014328)
eeObj.WriteMem32(0x0026B8D8,0x240B0018)
eeObj.WriteMem32(0x0026B820,0x2673001A)
eeObj.WriteMem32(0x0026B768,0x2673001A)
eeObj.WriteMem32(0x0026B750,0x24130128)
eeObj.WriteMem32(0x0026B7D8,0x241300DB)
eeObj.WriteMem32(0x0026885C,0x240B0018)
eeObj.WriteMem32(0x00268AE4,0x240B000C)
eeObj.WriteMem32(0x0063FE70,0x00000006)
eeObj.WriteMem32(0x0063FE80,0x0000000C)
eeObj.WriteMem32(0x0063FE68,0x0000000C)
eeObj.WriteMem32(0x002687B0,0x08030008)
eeObj.WriteMem32(0x002689D8,0x0803000C)
eeObj.WriteMem32(0x000C0020,0x3C1B3F40)
eeObj.WriteMem32(0x000C0024,0x449B6000)
eeObj.WriteMem32(0x000C0028,0x0809A1EE)
eeObj.WriteMem32(0x000C002C,0x460C0002)
eeObj.WriteMem32(0x000C0030,0x3C1B3F40)
eeObj.WriteMem32(0x000C0034,0x449BA000)
eeObj.WriteMem32(0x000C0038,0x0809A278)
eeObj.WriteMem32(0x000C003C,0x4614AD42)
eeObj.WriteMem32(0x00269690,0x240B0030)
eeObj.WriteMem32(0x00269704,0x2408020E)
eeObj.WriteMem32(0x00269710,0x240B0024)
eeObj.WriteMem32(0x002697B0,0x240B001B)
eeObj.WriteMem32(0x002697E0,0x240B000C)
eeObj.WriteMem32(0x0026980C,0x241B0010)
eeObj.WriteMem32(0x00269814,0xA7BB0018)
eeObj.WriteMem32(0x0026983C,0x240B000C)
eeObj.WriteMem32(0x0026986C,0x241B0010)
eeObj.WriteMem32(0x00269884,0xA7BB0018)
eeObj.WriteMem32(0x00269804,0x24080220)
eeObj.WriteMem32(0x00269854,0x2408022C)
eeObj.WriteMem32(0x00269A24,0x2408020B)
eeObj.WriteMem32(0x00269960,0x240B0030)
eeObj.WriteMem32(0x002699C4,0x240B0030)
eeObj.WriteMem32(0x00269A18,0x08030010)
eeObj.WriteMem32(0x000C0040,0x3C1B3F40)
eeObj.WriteMem32(0x000C0044,0x4490F800)
eeObj.WriteMem32(0x000C0048,0x4680FFE0)
eeObj.WriteMem32(0x000C004C,0x449BF000)
eeObj.WriteMem32(0x000C0050,0x461EFFC2)
eeObj.WriteMem32(0x000C0054,0x4600FFE4)
eeObj.WriteMem32(0x000C0058,0x0809A688)
eeObj.WriteMem32(0x000C005C,0x440BF800)
eeObj.WriteMem32(0x00269B40,0x24030000)
eeObj.WriteMem32(0x00269B50,0x246B000C)
eeObj.WriteMem32(0x00269B94,0x24020000)
eeObj.WriteMem32(0x00269BA4,0x244B000C)
eeObj.WriteMem32(0x00269BB4,0x240801FF)
eeObj.WriteMem32(0x00269B58,0x24080241)
eeObj.WriteMem32(0x00269C88,0x24080226)
eeObj.WriteMem32(0x00269C94,0x240B0030)
eeObj.WriteMem32(0x00269D10,0x240B0024)
eeObj.WriteMem32(0x00269D04,0x2408022C)
eeObj.WriteMem32(0x002EDBAC,0x240B0114)
eeObj.WriteMem32(0x00389F20,0x240D00E1)
eeObj.WriteMem32(0x00389F48,0x240A00D6)
eeObj.WriteMem32(0x00389F58,0xAFBB0028)
eeObj.WriteMem32(0x00389F1C,0x241B012C)
eeObj.WriteMem32(0x00518778,0x00000087)
eeObj.WriteMem32(0x00518790,0x0000005B)
eeObj.WriteMem32(0x005187C8,0x0000005A)
eeObj.WriteMem32(0x005187F0,0x00000069)
eeObj.WriteMem32(0x0023EFC8,0x240B0016)
eeObj.WriteMem32(0x0023EFCC,0x2631FFF3)
eeObj.WriteMem32(0x0023F1A0,0x240B0016)
eeObj.WriteMem32(0x0023F174,0x26520007)
eeObj.WriteMem32(0x0023F1E8,0x26100023)
eeObj.WriteMem32(0x0023F27C,0x240B0016)
eeObj.WriteMem32(0x0023F28C,0x26100019)
end

emuObj.AddVsyncHook(widescreen)