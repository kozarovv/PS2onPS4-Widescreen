apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=XIII - Daitouryou o Koroshita Otoko (J)(SLPS-25375)
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

-- 16:9

eeObj.WriteMem32(0x001d6ac8,0x3c013f40)
eeObj.WriteMem32(0x001d6b20,0xae4100a8)

--FMV fix
eeObj.WriteMem32(0x00356e48,0x260276b0)
eeObj.WriteMem32(0x00356f80,0x260276b0)
eeObj.WriteMem32(0x00356e98,0x24420951)
eeObj.WriteMem32(0x00356fcc,0x24420951)

end

emuObj.AddVsyncHook(widescreen)