apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MotoGP 07 (U)(SLUS-21688)
--comment=Widescreen Hack by El_Patas (NTSC-U by Arapapa)

--Gameplay 16:9 
eeObj.WriteMem32(0x0020e264,0x4483E800)
eeObj.WriteMem32(0x0020e268,0x4600EB02)
eeObj.WriteMem32(0x0020e26c,0xE7B40000)
eeObj.WriteMem32(0x0020e270,0x0C046676)
eeObj.WriteMem32(0x0020e274,0x46006D06)
eeObj.WriteMem32(0x0020e278,0x3C013F40)
eeObj.WriteMem32(0x0020e27c,0x4481F000)
eeObj.WriteMem32(0x0020e280,0x461E0003)
eeObj.WriteMem32(0x0020e298,0x4600E846)



--00088344 00000000 020b0046 0000b4e7 7666040c 066d0046 8e3c023c 35fa4334
end

emuObj.AddVsyncHook(widescreen)