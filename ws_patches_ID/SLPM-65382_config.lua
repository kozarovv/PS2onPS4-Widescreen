apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Grand Theft Auto III (SLPM-65382)
--comment=Widescreen fix by nemesis2000 (NTSC-J by Arapapa)

--widescreen fix (00000000 0800E003 C8858CE7 00000000 00000000 D0FFBD27)
eeObj.WriteMem32(0x00184c2c,0x3C013F9D)
eeObj.WriteMem32(0x00184c30,0x44810000)
eeObj.WriteMem32(0x00184c34,0x46006302)
eeObj.WriteMem32(0x00184c38,0x03E00008)
eeObj.WriteMem32(0x00184c3c,0xE78C85C8)

--9c0860e6 0c13060c
eeObj.WriteMem32(0x002568c0,0x0c06130b)

--9001a0c7 0c13060c
eeObj.WriteMem32(0x00256a74,0x0c06130e)

--00000000 F042023C 00608244 0c13060c (search *2)
eeObj.WriteMem32(0x0027e940,0x0c06130e)
eeObj.WriteMem32(0x0027ee0c,0x0c06130e)
end

emuObj.AddVsyncHook(widescreen)