apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WinBack 2 - Project Poseidon (K)(SLKA-25380)
--comment=Widescreen hack (NTSC-K by Arapapa)

eeObj.WriteMem32(0x002ee3f0,0x3c013f40)
eeObj.WriteMem32(0x002ee3f4,0x4481f000)
eeObj.WriteMem32(0x002ee3fc,0x461e0003)



--00000000 00000000 43001446 00000000
--403f013c 00f08144 43001446 03001e46
end

emuObj.AddVsyncHook(widescreen)