apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Atelier Iris Eternal Mana (NTSC) (SCUS-97198)
--comment=Widescreen hack by gamemasterplc 

eeObj.WriteMem32(0x0021CFD8,0x3C0144AB)
eeObj.WriteMem32(0x0024A3C4,0x08030000)
eeObj.WriteMem32(0x000C0000,0x3C013F40)
eeObj.WriteMem32(0x000C0004,0x44811000)
eeObj.WriteMem32(0x000C0008,0x080928F3)
eeObj.WriteMem32(0x000C000C,0x46020002)
eeObj.WriteMem32(0x002797E8,0x2483FE56)
eeObj.WriteMem32(0x00279804,0x248201AA)
eeObj.WriteMem32(0x002BA3A4,0x3C013F40)
eeObj.WriteMem32(0x002BA3A8,0x44810000)
eeObj.WriteMem32(0x002BA3B0,0x4600C602)
end

emuObj.AddVsyncHook(widescreen)