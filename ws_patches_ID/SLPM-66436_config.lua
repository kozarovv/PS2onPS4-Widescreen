apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Atelier Iris 3: Grand Phantasm(J)  (SLPM-66436)
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

--3D scenes
eeObj.WriteMem32(0x0035d89c,0x3c013f40)
eeObj.WriteMem32(0x0035d8a0,0x44810000)
eeObj.WriteMem32(0x0035d8a8,0x4600c602)

--battle's fix
eeObj.WriteMem32(0x008f1108,0x44400000)
eeObj.WriteMem32(0x008f1110,0xc4400000)
eeObj.WriteMem32(0x008f03a8,0x3faaaaab)

--2D scenes (8a00013c f09a20c4)
eeObj.WriteMem32(0x001af9f4,0x3c014440)
eeObj.WriteMem32(0x001af9f8,0x44810000)
end

emuObj.AddVsyncHook(widescreen)