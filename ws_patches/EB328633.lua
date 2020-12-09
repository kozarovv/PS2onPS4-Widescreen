apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=XIII (K) (SLKA_25105)
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

-- 16:9

--00000000 7c0040e6
eeObj.WriteMem32(0x001d68b8,0x3c013f40)

--a80043ae 180140ae
eeObj.WriteMem32(0x001d6910,0xae4100a8)

--FMV's fix
eeObj.WriteMem32(0x00356898,0x260276b0)
eeObj.WriteMem32(0x003568e8,0x24420951)

eeObj.WriteMem32(0x003569d0,0x260276b0)
eeObj.WriteMem32(0x00356a1c,0x24420951)
end

emuObj.AddVsyncHook(widescreen)