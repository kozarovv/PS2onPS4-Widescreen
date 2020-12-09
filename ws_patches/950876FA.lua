apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Castlevania: Curse of Darkness (K) (SLKA_25328)
--comment=Widescreen hack by nemesis2000 (pnach NTSC-K by Arapapa)

--gameplay
eeObj.WriteMem32(0x00751d7c,0x3c013f40)
eeObj.WriteMem32(0x00751d80,0x44810000)
eeObj.WriteMem32(0x00751d88,0x4600c602)

--FMV's fix
eeObj.WriteMem32(0x00443f90,0x00000000)
eeObj.WriteMem32(0x00775d98,0x24056e40)
eeObj.WriteMem32(0x00775da4,0x24072380)
end

emuObj.AddVsyncHook(widescreen)