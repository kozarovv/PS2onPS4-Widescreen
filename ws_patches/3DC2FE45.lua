apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Aced14 Font Fixes by gamemasterplc

--16:9 Widescreen
eeObj.WriteMem32(0x002D10A0,0x4400A000)
eeObj.WriteMem32(0x002D10C0,0x3F206D39)

eeObj.WriteMem32(0x00222CE8,0x08030000)
eeObj.WriteMem32(0x000C0000,0x00051843)
eeObj.WriteMem32(0x000C0004,0x00052883)
eeObj.WriteMem32(0x000C0008,0x00A32821)
eeObj.WriteMem32(0x000C000C,0x08088B3C)
eeObj.WriteMem32(0x000C0010,0x24030044)

eeObj.WriteMem32(0x001EF98C,0x0000008C)
eeObj.WriteMem32(0x001EF9AC,0x0000008C)
eeObj.WriteMem32(0x001EF9E4,0x0000008C)
eeObj.WriteMem32(0x001EF9FC,0x0000008C)

eeObj.WriteMem32(0x00166194,0x000043BB)
eeObj.WriteMem32(0x00166198,0x0000E000)
eeObj.WriteMem32(0x001B3F20,0x000043BB)
eeObj.WriteMem32(0x001B3F24,0x0000E000)
eeObj.WriteMem32(0x001B6164,0x000043BB)
eeObj.WriteMem32(0x001B6168,0x0000E000)
eeObj.WriteMem32(0x002D0D00,0x3F1F49E6)
eeObj.WriteMem32(0x0013B4C8,0x0000BF80)
eeObj.WriteMem32(0x0013B4CC,0x00000000)
eeObj.WriteMem32(0x0013B574,0x00003F80)
eeObj.WriteMem32(0x0013B578,0x00000000)
eeObj.WriteMem32(0x0013AC5C,0x00000230)
eeObj.WriteMem32(0x0013AD70,0x00000230)
eeObj.WriteMem32(0x0013728C,0x0000002D)
eeObj.WriteMem32(0x00139BD4,0x0000006A)

eeObj.WriteMem32(0x002D0DA0,0x439A8000)
eeObj.WriteMem32(0x002D0DC0,0x3F1F49E5)
eeObj.WriteMem32(0x002D0E60,0x439A8000)
eeObj.WriteMem32(0x002D0E80,0x3F1F49E5)
eeObj.WriteMem32(0x00137108,0x0000BFA5)
eeObj.WriteMem32(0x0013710C,0x00001EB8)
eeObj.WriteMem32(0x0013A5D8,0x00003F9E)
eeObj.WriteMem32(0x0013A5DC,0x0000B852)
eeObj.WriteMem32(0x0013ACCC,0x00000230)
eeObj.WriteMem32(0x0013AD4C,0x00000230)
eeObj.WriteMem32(0x001E6334,0x0000023D)
eeObj.WriteMem32(0x00139B94,0x00000057)
eeObj.WriteMem32(0x0013725C,0x00000021)

eeObj.WriteMem32(0x002D0F20,0x4376C000)
eeObj.WriteMem32(0x002D0F40,0x3F1F49E6)
eeObj.WriteMem32(0x002D0FE0,0x4376C000)
eeObj.WriteMem32(0x002D1000,0x3F1F49E6)
eeObj.WriteMem32(0x001370C0,0x0000BF20)
eeObj.WriteMem32(0x001370C4,0x00000000)
eeObj.WriteMem32(0x0013A590,0x00003F23)
eeObj.WriteMem32(0x0013A594,0x00000000)
end

emuObj.AddVsyncHook(widescreen)