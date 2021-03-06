apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tim Burton's The Nightmare Before Christmas: Oogie's Revenge [PAL-M5] (SLES_531.92)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00368C38,0x3F206D2F)

--All other stuff in 16:9
eeObj.WriteMem32(0x006FB57C,0x3F400000)
eeObj.WriteMem32(0x006FB4E0,0x3F400000)
eeObj.WriteMem32(0x006FB618,0x3F400000)
eeObj.WriteMem32(0x006FB6B4,0x3F400000)
eeObj.WriteMem32(0x006FB750,0x3F400000)
eeObj.WriteMem32(0x003941C0,0x3F400000)

eeObj.WriteMem32(0x00394060,0x3F400000)
eeObj.WriteMem32(0x00394020,0x3F400000)
eeObj.WriteMem32(0x00493A00,0x3F400000)

eeObj.WriteMem32(0x0049423C,0x3F400000)

eeObj.WriteMem32(0x00394160,0x3F400000)

eeObj.WriteMem32(0x006EA474,0x3F400000)
eeObj.WriteMem32(0x006EA510,0x3F400000)
eeObj.WriteMem32(0x006EA5AC,0x3F400000)
eeObj.WriteMem32(0x006EA3D8,0x3F400000)
eeObj.WriteMem32(0x006EA6E4,0x3F400000)
eeObj.WriteMem32(0x006EA780,0x3F400000)
eeObj.WriteMem32(0x006EA81C,0x3F400000)

eeObj.WriteMem32(0x00487E48,0x3F400000)
eeObj.WriteMem32(0x00487DAC,0x3F400000)
eeObj.WriteMem32(0x0049EB70,0x3F400000)

eeObj.WriteMem32(0x00489F1C,0x3F400000)
eeObj.WriteMem32(0x003940E0,0x3F400000)
eeObj.WriteMem32(0x00394100,0x3F400000)
eeObj.WriteMem32(0x00489BD4,0x3F700000)
eeObj.WriteMem32(0x008914C4,0x3F400000)
eeObj.WriteMem32(0x00891504,0x3F400000)
eeObj.WriteMem32(0x00489A00,0x3F400000)
eeObj.WriteMem32(0x00891764,0x3F400000)
eeObj.WriteMem32(0x008917A4,0x3F400000)
eeObj.WriteMem32(0x00489A9C,0x3F400000)
eeObj.WriteMem32(0x00891210,0x3F400000)
eeObj.WriteMem32(0x00891264,0x3F400000)
eeObj.WriteMem32(0x008919F0,0x3F400000)
eeObj.WriteMem32(0x00489C70,0x3F400000)

eeObj.WriteMem32(0x00394140,0x3f400000)

eeObj.WriteMem32(0x0094CDF0,0x3F400000)
eeObj.WriteMem32(0x0048AE20,0x3F400000)
eeObj.WriteMem32(0x0048AEBC,0x3F400000)
eeObj.WriteMem32(0x0048AF58,0x3F400000)

eeObj.WriteMem32(0x00489964,0x3F400000)
eeObj.WriteMem32(0x0048B27C,0x3F400000)
eeObj.WriteMem32(0x0048B144,0x3F400000)
eeObj.WriteMem32(0x0048B0A8,0x3F400000)
eeObj.WriteMem32(0x0048B00C,0x3F400000)
eeObj.WriteMem32(0x0048B1E0,0x3F400000)
eeObj.WriteMem32(0x0048B3B4,0x3F400000)
eeObj.WriteMem32(0x0048B318,0x3F400000)
eeObj.WriteMem32(0x0048C9BC,0x3F400000)
eeObj.WriteMem32(0x0048C920,0x3F400000)

eeObj.WriteMem32(0x016DE034,0x3F700000)
eeObj.WriteMem32(0x004A9B68,0x3F400000)
eeObj.WriteMem32(0x016E0290,0x3F400000)
eeObj.WriteMem32(0x016E02E4,0x3F400000)
--eeObj.WriteMem32(0x016DE964,0x3F400000)
eeObj.WriteMem32(0x016DE9B8,0x3F400000)
eeObj.WriteMem32(0x016DEA0C,0x3F400000)
eeObj.WriteMem32(0x016DEAB4,0x3F400000)
eeObj.WriteMem32(0x016DE088,0x3F400000)
eeObj.WriteMem32(0x016DEB08,0x3F400000)
eeObj.WriteMem32(0x016DE130,0x3F400000)
eeObj.WriteMem32(0x016E296C,0x3F400000)

eeObj.WriteMem32(0x006E54BC,0x3F400000)
eeObj.WriteMem32(0x006E5420,0x3F400000)
eeObj.WriteMem32(0x008AFE50,0x3F400000)
eeObj.WriteMem32(0x006E5558,0x3F400000)
eeObj.WriteMem32(0x006E55F4,0x3F700000)
eeObj.WriteMem32(0x008B07B8,0x3F400000)

eeObj.WriteMem32(0x006ED158,0x3F400000)
eeObj.WriteMem32(0x00958110,0x3F440000)
eeObj.WriteMem32(0x006ED1F4,0x3F400000)
eeObj.WriteMem32(0x006ED464,0x3F400000)
eeObj.WriteMem32(0x006ED32C,0x3F400000)
--eeObj.WriteMem32(0x006ED290,0x3F400000)
eeObj.WriteMem32(0x006ED3C8,0x3F400000)
eeObj.WriteMem32(0x01513B90,0x3F400000)
eeObj.WriteMem32(0x006ED500,0x3F400000)

eeObj.WriteMem32(0x00829948,0x3F400000)
eeObj.WriteMem32(0x00829B80,0x3F400000)
eeObj.WriteMem32(0x00829A98,0x3F400000)
--eeObj.WriteMem32(0x008204FC,0x3F400000)
eeObj.WriteMem32(0x00820050,0x3F400000)
eeObj.WriteMem32(0x008200A4,0x3F400000)
eeObj.WriteMem32(0x00820494,0x3F400000)
eeObj.WriteMem32(0x00820440,0x3F400000)
eeObj.WriteMem32(0x008200F8,0x3F400000)
eeObj.WriteMem32(0x008201F4,0x3F400000)
eeObj.WriteMem32(0x00820248,0x3F400000)
eeObj.WriteMem32(0x0082029C,0x3F400000)
eeObj.WriteMem32(0x008202F0,0x3F400000)
eeObj.WriteMem32(0x0082B470,0x3F400000)
eeObj.WriteMem32(0x0082B320,0x3F400000)

eeObj.WriteMem32(0x006ED138,0x3F400000)
--eeObj.WriteMem32(0x006ED1D4,0x3F400000)
eeObj.WriteMem32(0x00958110,0x3F400000)
eeObj.WriteMem32(0x006ED270,0x3F400000)
eeObj.WriteMem32(0x006ED30C,0x3F400000)

--eeObj.WriteMem32(0x004976E0,0x3F700000)
eeObj.WriteMem32(0x00497950,0x3F400000)
eeObj.WriteMem32(0x004978B4,0x3F400000)
eeObj.WriteMem32(0x0049A45C,0x3F400000)
eeObj.WriteMem32(0x0049A3C0,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)