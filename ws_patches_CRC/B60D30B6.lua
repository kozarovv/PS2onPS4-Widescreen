apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mana Khemia: Alchemists of Al-Revis (SLPM_66748)
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

--3D scenes
eeObj.WriteMem32(0x00468da4,0x3c013f40)
eeObj.WriteMem32(0x00468da8,0x44810000)
eeObj.WriteMem32(0x00468db0,0x4600c602)

--battle's fix
eeObj.WriteMem32(0x00b8c1b4,0x44400000)
eeObj.WriteMem32(0x00b8c1bc,0xc4400000)
eeObj.WriteMem32(0x00b8b4fc,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)