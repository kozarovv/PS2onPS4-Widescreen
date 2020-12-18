apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dragonball Z 2 (K) (SLKA-25062)
--comment=Widescreen hack (NTSC-K by Arapapa)

--Widescreen hack 16:9
--cdcc4c3f efee6e3f 
--eeObj.WriteMem32(0x003F6CF0,0x3F19999A)

--00000000 00000000 36080346 (1st)
--403f013c 00f08144 36080346
eeObj.WriteMem32(0x001303bc,0x3c013f40)
eeObj.WriteMem32(0x001303c0,0x4481f000)

--00000000 003f023c 00088244 (1st)
eeObj.WriteMem32(0x0013028c,0x461ead42)
end

emuObj.AddVsyncHook(widescreen)