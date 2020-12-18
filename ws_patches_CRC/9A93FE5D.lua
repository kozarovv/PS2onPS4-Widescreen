apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Castlevania: Lament of Innocence (K) (SLKA_25082)
--comment=Widescreen hack by nemesis2000 (pnach NTSC-K by Arapapa)

--gameplay
eeObj.WriteMem32(0x006e801c,0x23c013f4)
eeObj.WriteMem32(0x006e8020,0x44810000)
eeObj.WriteMem32(0x006e8028,0x4600c602)

--FMV's fix
eeObj.WriteMem32(0x004515f8,0x24057300)
eeObj.WriteMem32(0x004515fc,0x24062000)
eeObj.WriteMem32(0x00451604,0x24071b00)
end

emuObj.AddVsyncHook(widescreen)