apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hudson Selection Vol 3 PC Genjin [SLPM_624.18] [CEADAD75]
--comment=Widescreen hacks by gamemasterplc

eeObj.WriteMem32(0x001602B0,0x03E00008)
eeObj.WriteMem32(0x001602B4,0x00000000)
eeObj.WriteMem32(0x00372FB0,0x00000340)
eeObj.WriteMem32(0x001617DC,0x24040340)
eeObj.WriteMem32(0x001785DC,0x080580AE)
eeObj.WriteMem32(0x001602B8,0x3C043FA6)
eeObj.WriteMem32(0x001602BC,0x4484A800)
eeObj.WriteMem32(0x001602C0,0x46156302)
eeObj.WriteMem32(0x001602C4,0x0805E179)
eeObj.WriteMem32(0x001602C8,0x46006D46)
eeObj.WriteMem32(0x00139AE4,0x3C01437C)
eeObj.WriteMem32(0x00138018,0x3C014450)
eeObj.WriteMem32(0x001396D8,0x240202C0)
eeObj.WriteMem32(0x00139CF4,0x24060340)
eeObj.WriteMem32(0x00139D94,0x24070110)
eeObj.WriteMem32(0x0013AF34,0x3C014411)
eeObj.WriteMem32(0x0013AFCC,0x3C014411)
eeObj.WriteMem32(0x0013B064,0x3C01433A)
eeObj.WriteMem32(0x0013B6D4,0x3C01438D)
eeObj.WriteMem32(0x0013CC3C,0x3C014368)
eeObj.WriteMem32(0x0013CCD0,0x3C014368)
eeObj.WriteMem32(0x0013CD14,0x3C014368)
eeObj.WriteMem32(0x0013DA5C,0x3C0143D5)
eeObj.WriteMem32(0x0013F070,0x24020188)
eeObj.WriteMem32(0x0014220C,0x3C0143D0)
eeObj.WriteMem32(0x001422C0,0x24020178)
eeObj.WriteMem32(0x0015ADBC,0x24060340)
eeObj.WriteMem32(0x0015AE54,0x24060340)
eeObj.WriteMem32(0x0015AEE8,0x24060340)
eeObj.WriteMem32(0x0015D7F0,0x3C0143D0)
eeObj.WriteMem32(0x0015D888,0x3C014398)
eeObj.WriteMem32(0x0015D9B0,0x3C014350)
eeObj.WriteMem32(0x0015DB58,0x3C0143D0)
eeObj.WriteMem32(0x002377B0,0x43680000)
eeObj.WriteMem32(0x002377B8,0x43858000)
eeObj.WriteMem32(0x002377C0,0x43970000)
eeObj.WriteMem32(0x002377C8,0x43A88000)
eeObj.WriteMem32(0x002377D8,0x43C20000)
eeObj.WriteMem32(0x002377E0,0x43DE0000)
eeObj.WriteMem32(0x002377E8,0x43970000)
eeObj.WriteMem32(0x002377F0,0x43970000)
eeObj.WriteMem32(0x002377F8,0x43858000)
eeObj.WriteMem32(0x00237800,0x43970000)
eeObj.WriteMem32(0x00237808,0x43A88000)
eeObj.WriteMem32(0x0037D9F0,0x44460000)
eeObj.WriteMem32(0x0037DA00,0x44460000)
eeObj.WriteMem32(0x0037DA20,0x43540000)
eeObj.WriteMem32(0x0037DA30,0x44120000)
eeObj.WriteMem32(0x0037DA40,0x440C0000)
eeObj.WriteMem32(0x0037DA50,0x440C0000)
eeObj.WriteMem32(0x0037DA60,0x43D00000)
eeObj.WriteMem32(0x0037DA70,0x43D00000)
eeObj.WriteMem32(0x0037DCB0,0x43680000)
eeObj.WriteMem32(0x0037DD00,0x43D00000)
eeObj.WriteMem32(0x0037DD30,0x43D00000)
eeObj.WriteMem32(0x0037DD40,0x43D00000)
eeObj.WriteMem32(0x0037DD70,0x44498000)
eeObj.WriteMem32(0x0037F720,0x43D00000)
eeObj.WriteMem32(0x0037F750,0x43D00000)
eeObj.WriteMem32(0x0037FA10,0x43D00000)
end

emuObj.AddVsyncHook(widescreen)