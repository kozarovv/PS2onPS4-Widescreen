apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@180129
 -- http:-- forums.pcsx2.net/Thread-PCSX2-Widescreen-Game- patches?pid=240786#pid240786
-- ==========
 --comment= Drakan - The Ancients' Gates * SCES-50006 * PAL-M5 * 04F9D87F
-- ==========
 -- Spoiler: Button-sequence for the skeleton-statue at Ravenshold: "S E E W S N N S".
-- ==========
 --comment=- Fix by pgert against displaycrap which arises with HD
 --comment=-  when using GSdx (in HW-mode) around the Health & Mana bars.
 eeObj.WriteMem32(0x001C2274,0x3C013F7F)
 eeObj.WriteMem32(0x001C228C,0x3C013E10)
-- ==========

-- ==========
 --comment=- Widescreen hack ported by Dreadmoth from the NTSC-U pnach by nemesis2000.
-- ==========
 eeObj.WriteMem32(0x001328C0,0x460200C3)
 eeObj.WriteMem32(0x001328C4,0x8E42011C)
 eeObj.WriteMem32(0x001328C8,0x3C014280)
 eeObj.WriteMem32(0x001328CC,0x44811000)
 eeObj.WriteMem32(0x001328D0,0xE64200EC)
 eeObj.WriteMem32(0x001328D4,0x46011842)
 eeObj.WriteMem32(0x001328D8,0x04400005)
 eeObj.WriteMem32(0x001328DC,0xE6410108)
 eeObj.WriteMem32(0x001328E0,0x44821000)
 eeObj.WriteMem32(0x001328E4,0x468010A0)
 eeObj.WriteMem32(0x001328E8,0x10000008)
 eeObj.WriteMem32(0x001328EC,0xC64000EC)
 eeObj.WriteMem32(0x001328F0,0x00021842)
 eeObj.WriteMem32(0x001328F4,0x30420001)
 eeObj.WriteMem32(0x001328F8,0x00431025)
 eeObj.WriteMem32(0x001328FC,0x44821000)
 eeObj.WriteMem32(0x00132900,0x468010A0)
 eeObj.WriteMem32(0x00132904,0x46021080)
 eeObj.WriteMem32(0x00132908,0xC64000EC)
 eeObj.WriteMem32(0x0013290C,0x2402FFFF)
 eeObj.WriteMem32(0x00132910,0xC641010C)
 eeObj.WriteMem32(0x00132914,0x24030007)
 eeObj.WriteMem32(0x00132918,0x46020002)
 eeObj.WriteMem32(0x0013291C,0xAE420008)
 eeObj.WriteMem32(0x00132920,0x46000847)
 eeObj.WriteMem32(0x00132924,0xAE43000C)
 eeObj.WriteMem32(0x00132928,0xAE400000)
 eeObj.WriteMem32(0x0013292C,0x46030003)
 eeObj.WriteMem32(0x00132930,0xAE400004)
 eeObj.WriteMem32(0x00132934,0x3C013F40)
-- eeObj.WriteMem32(0x00132934,0x3C013F55)
-- eeObj.WriteMem32(0x00132934,0x3C013F64)
 eeObj.WriteMem32(0x00132938,0x4481B800)
 eeObj.WriteMem32(0x0013293C,0x46170002)
 eeObj.WriteMem32(0x00132940,0x46170842)
-- ==========
 eeObj.WriteMem32(0x00132DF0,0x04400005)
 eeObj.WriteMem32(0x00132DFC,0x46800860)
 eeObj.WriteMem32(0x00132E00,0x10000006)
 eeObj.WriteMem32(0x00132E04,0x00000000)
 eeObj.WriteMem32(0x00132E08,0x30420001)
 eeObj.WriteMem32(0x00132E0C,0x00431025)
 eeObj.WriteMem32(0x00132E10,0x44820800)
 eeObj.WriteMem32(0x00132E14,0x46800860)
 eeObj.WriteMem32(0x00132E18,0x46010840)
 eeObj.WriteMem32(0x00132E1C,0x3C01BF00)
 eeObj.WriteMem32(0x00132E20,0x44810000)
 eeObj.WriteMem32(0x00132E24,0x46000B46)
 eeObj.WriteMem32(0x00132E28,0x3C014300)
 eeObj.WriteMem32(0x00132E2C,0x44812000)
 eeObj.WriteMem32(0x00132E30,0x46002B06)
 eeObj.WriteMem32(0x00132E34,0x46000842)
 eeObj.WriteMem32(0x00132E38,0x3C014280)
 eeObj.WriteMem32(0x00132E3C,0x44811800)
 eeObj.WriteMem32(0x00132E40,0x46002802)
 eeObj.WriteMem32(0x00132E44,0x3C014500)
 eeObj.WriteMem32(0x00132E48,0x44811000)
 eeObj.WriteMem32(0x00132E4C,0x46052103)
 eeObj.WriteMem32(0x00132E50,0xE60300EC)
 eeObj.WriteMem32(0x00132E54,0x46011181)
 eeObj.WriteMem32(0x00132E58,0x8E050018)
 eeObj.WriteMem32(0x00132E5C,0x460010C1)
 eeObj.WriteMem32(0x00132E60,0xE6000040)
 eeObj.WriteMem32(0x00132E64,0x46020940)
 eeObj.WriteMem32(0x00132E68,0xE6020100)
 eeObj.WriteMem32(0x00132E6C,0x46020000)
 eeObj.WriteMem32(0x00132E70,0xE606005C)
 eeObj.WriteMem32(0x00132E74,0xE6030054)
 eeObj.WriteMem32(0x00132E78,0xE6050058)
 eeObj.WriteMem32(0x00132E7C,0xE6040108)
 eeObj.WriteMem32(0x00132E80,0xE6010044)
 eeObj.WriteMem32(0x00132E84,0xE6020104)
 eeObj.WriteMem32(0x00132E88,0xE6000050)
 eeObj.WriteMem32(0x00132E8C,0x3C013C8E)
 eeObj.WriteMem32(0x00132E90,0x3421FA36)
 eeObj.WriteMem32(0x00132E94,0x4481B000)
 eeObj.WriteMem32(0x00132E98,0x8CA20000)
 eeObj.WriteMem32(0x00132E9C,0x3C013F00)
 eeObj.WriteMem32(0x00132EA0,0x4481B800)
 eeObj.WriteMem32(0x00132EA4,0x844400F0)
 eeObj.WriteMem32(0x00132EA8,0x8C4300F4)
 eeObj.WriteMem32(0x00132EAC,0x0060F809)
 eeObj.WriteMem32(0x00132EB0,0x00A42021)
 eeObj.WriteMem32(0x00132EB4,0xC60200EC)
 eeObj.WriteMem32(0x00132EB8,0xC601010C)
 eeObj.WriteMem32(0x00132EBC,0x46001002)
 eeObj.WriteMem32(0x00132EC0,0x8E030124)
 eeObj.WriteMem32(0x00132EC4,0x46000847)
 eeObj.WriteMem32(0x00132EC8,0x3C013F40)
-- eeObj.WriteMem32(0x00132EC8,0x3C013F55)
-- eeObj.WriteMem32(0x00132EC8,0x3C013F64)
 eeObj.WriteMem32(0x00132ECC,0x4481A000)
 eeObj.WriteMem32(0x00132ED0,0x46140002)
 eeObj.WriteMem32(0x00132ED4,0x46140842)
-- ==========
 eeObj.WriteMem32(0x00132FAC,0x04A00005)
 eeObj.WriteMem32(0x00132FB8,0x46806320)
 eeObj.WriteMem32(0x00132FBC,0x10000008)
 eeObj.WriteMem32(0x00132FC0,0x8E02011C)
 eeObj.WriteMem32(0x00132FC4,0x00051842)
 eeObj.WriteMem32(0x00132FC8,0x30A20001)
 eeObj.WriteMem32(0x00132FCC,0x00431025)
 eeObj.WriteMem32(0x00132FD0,0x44826000)
 eeObj.WriteMem32(0x00132FD4,0x46806320)
 eeObj.WriteMem32(0x00132FD8,0x460C6300)
 eeObj.WriteMem32(0x00132FDC,0x8E02011C)
 eeObj.WriteMem32(0x00132FE0,0x04400005)
 eeObj.WriteMem32(0x00132FE4,0x00021842)
 eeObj.WriteMem32(0x00132FE8,0x44826800)
 eeObj.WriteMem32(0x00132FEC,0x46806B60)
 eeObj.WriteMem32(0x00132FF0,0x10000007)
 eeObj.WriteMem32(0x00132FF4,0x8CC20004)
 eeObj.WriteMem32(0x00132FF8,0x30420001)
 eeObj.WriteMem32(0x00132FFC,0x00431025)
 eeObj.WriteMem32(0x00133000,0x44826800)
 eeObj.WriteMem32(0x00133004,0x46806B60)
 eeObj.WriteMem32(0x00133008,0x460D6B40)
 eeObj.WriteMem32(0x0013300C,0x8CC20004)
 eeObj.WriteMem32(0x00133010,0x0040F809)
 eeObj.WriteMem32(0x00133014,0x00000000)
 eeObj.WriteMem32(0x00133018,0xC60200EC)
 eeObj.WriteMem32(0x0013301C,0xC601010C)
 eeObj.WriteMem32(0x00133020,0x46001002)
 eeObj.WriteMem32(0x00133024,0x8E020118)
 eeObj.WriteMem32(0x00133028,0x46000847)
 eeObj.WriteMem32(0x0013302C,0x46141082)
 eeObj.WriteMem32(0x00133030,0x3C013F68)
-- eeObj.WriteMem32(0x00133030,0x3C013F65)
 eeObj.WriteMem32(0x00133034,0x44811800)
 eeObj.WriteMem32(0x00133038,0x46030002)
 eeObj.WriteMem32(0x0013303C,0x46030842)
-- ==========

end

emuObj.AddVsyncHook(widescreen)