apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Demento (J) (SLPM_65913)
--comment=Widescreen hack by nemesis2000 (pnach NTSC-J by Arapapa)

eeObj.WriteMem32(0x0010e31c,0x3c013f40)
eeObj.WriteMem32(0x0010e320,0x44810000)
eeObj.WriteMem32(0x0010e328,0x4600c602)

--cutscenes fix
eeObj.WriteMem32(0x002ba3ec,0x34a98c00)
eeObj.WriteMem32(0x002ba3d4,0x34a67400)
end

emuObj.AddVsyncHook(widescreen)